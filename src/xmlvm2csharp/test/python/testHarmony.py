#! /usr/bin/python -tt

# Copyright (c) 2002-2011 by XMLVM.org
#
# Project Info:  http://www.xmlvm.org
#
# This program is free software; you can redistribute it and/or modify it
# under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation; either version 2.1 of the License, or
# (at your option) any later version.
#
# This library is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
# License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
# USA.

import shutil
import os.path
import os
import sys
from subprocess import Popen,PIPE
from zipfile import ZipFile
import argparse

def runCommand(cmdStr):
    errs = []
    proc = Popen(cmdStr,shell=True,stdin=PIPE,stdout=PIPE,stderr=PIPE)
    procout,procerr = proc.communicate()
    errlines = procerr.split("\n")
    for errline in errlines:
      if "error" in errline:
          errs.append(errline)
    return errs

def recursiveCopy(srcPath, destPath):
    if not os.path.exists(srcPath):
        print "source path does not exist"
        return
    currFiles = os.listdir(srcPath)
    os.makedirs(destPath)
    for file in currFiles:
        srcFile = os.path.join(srcPath, file)
        destFile = os.path.join(destPath, file)
        if os.path.isfile(srcFile):
            shutil.copy2(srcFile, destFile)
        else:
            # naively assuming it is a dir
            recursiveCopy(srcFile, destFile)

def recursiveListFiles(path):
    fileList = []
    if not os.path.exists(path):
        print "source path does not exist"
        return []
    localList = os.listdir(path)
    for fileName in localList:
        fullName = os.path.join(path, fileName)
        if (os.path.isdir(fullName)):
            fileList.extend(recursiveListFiles(fullName))
        else:
            fileList.append(fullName)
    return fileList

def recursiveRemove(path):
    if not os.path.exists(path):
        print "source path does not exist: "+path
        return
    localList = os.listdir(path)
    for fileName in localList:
        fullName = os.path.join(path, fileName)
        if (os.path.isdir(fullName)):
            recursiveRemove(fullName)
        else:
            os.remove(fullName)
    os.rmdir(path)

def main():
    parser = argparse.ArgumentParser(
        description="A test suit for harmony's cross compilation")
    parser.add_argument("--csc", default="gmcs",
                       help="c# compiler (default: %(default)s)")
    parser.add_argument("--clr", default="mono",
                       help="c# runtime (default: %(default)s)")
    parser.add_argument("--javac", default="javac",
                       help="java compiler (default: %(default)s)")
    parser.add_argument("--jvm", default="java",
                       help="java runtime (default: %(default)s)")
    parser.add_argument("--ant", default="ant",
                       help="ant (default: %(default)s)")
    parser.add_argument("--win", const=True, default=False,
                       action="store_const",
                       help="use Windows defaults (default:%(default)s)")
    parser.add_argument("--testdir", default="harmony",
                        help="specify test directory (default: %(default)s)")
    args = parser.parse_args()
    csharpCompiler = args.csc
    csharpRuntime = args.clr
    javaCompiler = args.javac
    javaRuntime = args.jvm
    outPath = args.testdir
    ant = args.ant
    if (args.win):
        csharpCompiler = "C:\\Windows\\Microsoft.NET\\Framework\\v3.5\\csc.exe"
        csharpRuntime = ""

    testResults = {}
    javaBinPath = os.path.join(outPath, "javaBin")
    genCsharpPath = os.path.join(outPath, "genCsharp")
    csharpBinPath = os.path.join(outPath, "csharpBin")
    testSourcePath=os.path.join("src", "xmlvm2csharp", "test")
    testPath=os.path.join(testSourcePath, "org", "xmlvm", "test")
    nativePath = os.path.join("src", "xmlvm2csharp", "lib", "native")
    xmlvmUtilityPath = os.path.join(
        "src", "xmlvm2csharp", "lib", "util", "org", "xmlvm"
    )
    genTestPath = os.path.join(genCsharpPath, "org", "xmlvm", "test")
    genXmlvmPath = os.path.join(genCsharpPath, "org", "xmlvm")
    genJavaLangPath = os.path.join(genCsharpPath, "java", "lang")
    harmonyJarPath = os.path.join("lib", "harmony6-build.jar")
    missingBinPath = os.path.join(javaBinPath, "missing")
    xmlvmDll = os.path.join(csharpBinPath, "xmlvm.dll")
    xmlvmBuild = ant + " clean && " + ant
    xmlvm2csharp = javaRuntime + " -Xmx512M -jar dist/xmlvm.jar --target=csharp --no-cache"

    if (os.path.exists(outPath)):
        recursiveRemove(outPath)
    # step 1: clean and build xmlvm
    print xmlvmBuild
    xmlvmBuildErrs = runCommand(xmlvmBuild)
    if (xmlvmBuildErrs):
        print "\n".join(xmlvmBuildErrs)
        sys.exit(-1)
    # step 2: create a list of tests
    testSources = [
        fileName
        for fileName in recursiveListFiles(testPath)
        if os.path.splitext(fileName)[1] == ".java"
    ]
    testSources.sort()
    # step 3: java-compile tests
    for fileName in testSources:
        testBaseName = os.path.splitext(os.path.basename(fileName))[0]
        testResults[testBaseName] = {}
        testJavaBinPath = os.path.join(javaBinPath, testBaseName)
        testResults[testBaseName]["javaBinPath"] = testJavaBinPath
        testResults[testBaseName]["javaMainClass"] = os.path.splitext(
            os.path.relpath(fileName,testSourcePath)
        )[0].replace(os.sep, ".")
        os.makedirs(testJavaBinPath)
        javaCompileTest = "{javac} {sp} {cp} {dst} {src}".format(
                              javac = javaCompiler,
                              sp = "-sourcepath " + testSourcePath,
                              cp = "-classpath " + testJavaBinPath,
                              dst = "-d " + testJavaBinPath,
                              src = fileName)
        print "java compile: " + testBaseName
        print javaCompileTest
        javaCompileTestErrs = runCommand(javaCompileTest)
        if (javaCompileTestErrs):
            testResults[testBaseName]["javaCompilationError"] = "\n".join(javaCompileTestErrs)
    # step 4: copy missing classes
    missing = [
        "java/lang/Process.class",
        "java/lang/Thread$State.class",
        "java/lang/Package.class"
    ]
    harmonyJar = ZipFile(harmonyJarPath, 'r')
    for fileName in missing:
        harmonyJar.extract(fileName, missingBinPath)
    # step 5: copy native implementation
    print "copy native implementation from: "+nativePath+" to: "+genCsharpPath
    recursiveCopy(nativePath, genCsharpPath)
    # step 6: cross compile library
    crossCompileLibrary = "{xmlvm} --load-dependencies {dst} {src}".format(
                              xmlvm = xmlvm2csharp,
                              dst = "--out=" + genCsharpPath,
                              src = "--in=" + javaBinPath)
    print "cross compile library"
    print crossCompileLibrary
    crossCompileLibraryErrs = runCommand(crossCompileLibrary)
    if (crossCompileLibraryErrs):
        print "\n".join(crossCompileLibraryErrs)
        sys.exit(-1)
    # step 7: copy all utilities
    utilityList = [
        os.path.join(xmlvmUtilityPath, fileName)
        for fileName in os.listdir(xmlvmUtilityPath)
        if os.path.splitext(fileName)[1]==".cs"
    ]
    print "copy xmlvm utilities: %s" % " ".join([os.path.basename(utility)
                                                 for utility in utilityList])
    for fullFileName in utilityList:
        shutil.copy2(fullFileName, genXmlvmPath)
    # step 8: csharp-compile library
    os.makedirs(csharpBinPath)
    recursiveRemove(genTestPath)
    libraryCsharpCompile = "{csc} {options} {dst} {src}".format(
                               csc = csharpCompiler,
                               options = "/target:library /define:CONSOLE",
                               src = "/recurse:" + os.path.join(genCsharpPath, "*.cs"),
                               dst = "/out:" + xmlvmDll)
    print "csharp-compile library"
    print libraryCsharpCompile
    libraryCsharpCompileErrs = runCommand(libraryCsharpCompile)
    if (libraryCsharpCompileErrs):
        print "\n".join(libraryCsharpCompileErrs)
        sys.exit(-1)
    # step 9: cross-compile tests
    testBaseNames = testResults.keys()[:];
    testBaseNames.sort();
    for testBaseName in testBaseNames:
        if "javaCompilationError" in testResults[testBaseName]:
            continue
        testGenCsharpPath=os.path.join(genTestPath, testBaseName)
        os.makedirs(testGenCsharpPath)
        crossCompileTest = "{xmlvm} {dst} {src}".format(
                               xmlvm=xmlvm2csharp,
                               dst="--out="+testGenCsharpPath,
                               src="--in="+testResults[testBaseName]["javaBinPath"])
        print "cross compile: "+ testBaseName
        print crossCompileTest
        crossCompileTestErrs = runCommand(crossCompileTest)
        if (crossCompileTestErrs):
            testResults[testBaseName]["crossCompilationError"] = "\n".join(crossCompileTestErrs)
        else:
            # step 10: csharp compile tests
            # testCsharpBinPath = os.path.join(csharpBinPath, testBaseName)
            # os.makedirs(testCsharpBinPath)
            csharpCompileTest = "{csc} {opt} {link} {dst} {src}".format(
                                    csc = csharpCompiler,
                                    opt = "/target:exe /define:CONSOLE",
                                    link = "/reference:" + xmlvmDll,
                                    src = ("/recurse:"
                                           + os.path.join(testGenCsharpPath, "*.cs")),
                                    dst = ("/out:"
                                           + os.path.join(csharpBinPath,
                                                          testBaseName + ".exe")))
            print "csharp compile: " + testBaseName
            print csharpCompileTest
            csharpCompileTestErrs = runCommand(csharpCompileTest)
            if (csharpCompileTestErrs):
                testResults[testBaseName]["csharpCompilationError"] = "\n".join(csharpCompileTestErrs)
            else:
                # step 11: java run
                javaRunTest = "{jvm} {cp} {bin}".format(
                                  jvm = javaRuntime,
                                  cp = ("-classpath "
                                        + testResults[testBaseName]["javaBinPath"]),
                                  bin = testResults[testBaseName]["javaMainClass"])
                print javaRunTest
                proc = Popen(javaRunTest,shell=True,stdin=PIPE,stdout=PIPE,stderr=PIPE)
                procout,procerr = proc.communicate()
                testResults[testBaseName]["javaRunOut"] = procout
                testResults[testBaseName]["javaRunErr"] = procerr
                # step 12: csharp run
                csharpRunTest = "{clr} {bin}".format(
                                    clr=csharpRuntime,
                                    bin=os.path.join(csharpBinPath,
                                                     testBaseName + ".exe"))
                print csharpRunTest
                proc = Popen(csharpRunTest,shell=True,stdin=PIPE,stdout=PIPE,stderr=PIPE)
                procout,procerr = proc.communicate()
                testResults[testBaseName]["csharpRunOut"] = procout
                testResults[testBaseName]["csharpRunErr"] = procerr

    # step 13: results
    for testBaseName in testBaseNames:
        result = testResults[testBaseName]
        print "="*30
        print testBaseName+": ",
        if "javaCompilationError" in result:
            print "failed: java compilation errors"
            print "-"*30
            print result["javaCompilationError"]
        elif "crossCompilationError" in result:
            print "failed: cross compilation errors"
            print "-"*30
            print result["crossCompilationError"]
        elif "csharpCompilationError" in result:
            print "failed: csharp compilation errors"
            print "-"*30
            print result["csharpCompilationError"]
        elif result["csharpRunOut"]==result["javaRunOut"]:
        # and result["csharpRunErr"]==result["javaRunErr"]:
            print "passed"
            result["passed"] = "true"
        else:
            result["differ"] = "true"
            print "failed: java and csharp output differ"
            print "-"*30
            print "java output:"
            print "-"*30
            print result["javaRunOut"]
            print "-"*30
            print "csharp output:"
            print "-"*30
            print result["csharpRunOut"]
            print "-"*30
            print "java error:"
            print "-"*30
            print result["javaRunErr"]
            print "-"*30
            print "csharp error:"
            print "-"*30
            print result["csharpRunErr"]
    # step 14: summary
    passedTests = [testBaseName
             for testBaseName in testBaseNames
             if "passed" in testResults[testBaseName]
    ]
    differTests = [testBaseName
             for testBaseName in testBaseNames
             if "differ" in testResults[testBaseName]
    ]
    javaCompilationErrorTests = [testBaseName
             for testBaseName in testBaseNames
             if "javaCompilationError" in testResults[testBaseName]
    ]
    crossCompilationErrorTests = [testBaseName
             for testBaseName in testBaseNames
             if "crossCompilationError" in testResults[testBaseName]
    ]
    csharpCompilationErrorTests = [testBaseName
             for testBaseName in testBaseNames
             if "csharpCompilationError" in testResults[testBaseName]
    ]
    print "="*30

    print (
        "%s\nSUMMARY:\n%s\n"
        +"total: %d\n"
        +"passed: %d\n"
        +"output differs: %d\n"
        +"java compilation errors: %d\n"
        +"cross compilation errors: %d\n"
        +"csharp compilation errors: %d\n"
        +"\npassed:\n%s\n"
        +"\noutput differs:\n%s\n"
        +"\njava compilation errors:\n%s\n"
        +"\ncross compilation errors:\n%s\n"
        +"\ncsharp compilation errors:\n%s\n"
    ) % (
        "="*30, "="*30,
        len(testBaseNames),
        len(passedTests),
        len(differTests),
        len(javaCompilationErrorTests),
        len(crossCompilationErrorTests),
        len(csharpCompilationErrorTests),
        " ".join(passedTests),
        " ".join(differTests),
        " ".join(javaCompilationErrorTests),
        " ".join(crossCompilationErrorTests),
        " ".join(csharpCompilationErrorTests)
    )

if __name__ == "__main__":
    main()

