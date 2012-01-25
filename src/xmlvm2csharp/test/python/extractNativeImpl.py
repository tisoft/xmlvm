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

import sys
import shutil
import os
import os.path
from testHarmony import recursiveListFiles, runCommand

def main():
    nativePath = os.path.join("src", "xmlvm2csharp", "compat-lib", "native")
    if len(sys.argv)<2:
        print "Usage: {0} srcPath".format(sys.argv[0])
        sys.exit(-1)
    srcPath = sys.argv[1]
    fileNames = recursiveListFiles(nativePath)
    for dstName in fileNames:
        if not os.path.isfile(dstName):
            continue
        srcName = os.path.join(srcPath, os.path.relpath(dstName, nativePath))
        print "{0}-->{1}".format(srcName,dstName)
        shutil.copy2(srcName,dstName)
    dummyBase = os.path.join("org", "xmlvm", "test", "HelloWorld")
    testPath = os.path.join("src", "xmlvm2csharp", "test")
    dummyTest = os.path.join(testPath, dummyBase) + ".java"
    dummyClass = os.path.join(nativePath, dummyBase) + ".class"
    genNativeCmd = ("javac -classpath {nativePath}"
                    + " -d {nativePath} {dummyTest}"
                    + " && {xmlvm2csharp} --gen-native-skeletons"
                    + " --in={dummyClass} --out={nativePath}"
                   ).format(nativePath=nativePath,
                            dummyTest=dummyTest,
                            xmlvm2csharp=("java -Xmx512M -jar dist/xmlvm.jar"
                                          +" --target=csharp --load-dependencies"
                                          +" --no-cache --no-using"
                                         ),
                            dummyClass=dummyClass
                           )
    print genNativeCmd
    print "\n".join(runCommand(genNativeCmd))
    os.remove(dummyClass)
    os.removedirs(os.path.dirname(dummyClass))


if __name__ == "__main__":
    main()
