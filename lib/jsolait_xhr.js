/**
  * This is a part of jsolait, modified by XML11.
  * Due to limitations introduced by Qooxdoo, no change may be made to Object.prototype
  * Other parts of jsolait do exactly that but urllib doesn't. So the urllib was extracted
  * and modified so it can be used without the rest of jsolait's urllib.
  * Functions itself are almost left unchanged. They are attached to XHRFunc and calls to
  * mod.xy have been changed to XHRFunc.xy. Also some Exception functions have been left out
  * and the according throws changed.
  *
*/

function XHRFunc() {
  //Will be augemnted later
};

    /**
        Creates an HTTP request object for retreiving files.
        @return  HTTP request object.
    */
    // Comment by XML11: Changed the order for the Microsoft objects 1 <-> 3 so Microsoft.XMLHTTP is up front
    XHRFunc.getHTTP=function() {
        var obj;
        try{ //to get the mozilla httprequest object
            obj = new XMLHttpRequest();
        }catch(e){
            try{ //to get MS HTTP request object
                obj=new ActiveXObject("Microsoft.XMLHTTP");
            }catch(e){
                try{ //to get MS HTTP request object
                    obj=new ActiveXObject("Msxml2.XMLHTTP")
                }catch(e){
                    try{// to get the old MS HTTP request object
                        obj = new ActiveXObject("Msxml2.XMLHTTP.4.0"); 
                    }catch(e){
                        try{//to create the ASV request object.
                            obj = new ASVRequest();
                        }catch(e){
                            throw "Neither Mozilla, IE nor ASV found. Can't do HTTP request without them.";
                        }
                    }
                }    
            }
        }
        return obj;
    }
    /**
        Sends a request to a server.
        To explain the way the optional arguments work I will give examples:
        simple:
            sendRequest("get", "url")
            sendRequest("post", "url", "data")
        
        with headers:
            sendRequest("get", "url", [["headername","value"]])
            sendRequest("post", "url", "data", [["headername","value"]])
        
        with user information:
            sendRequest("get", "url", "user", "pass")
            sendRequest("post", "url", "user", "pass", "data")
        
        with headers and user information:
            sendRequest("get", "url", "user", "pass", [["headername","value"]])
            sendRequest("post", "url", "user", "pass", "data", [["headername","value"]])
        
        To make the request asynchronous just add a callback function as the last argument to the calls above.
 
        @param type              Type of connection (GET, POST, ...).
        @param url                 The URL to retrieve.
        @param user=null        The username for auth.
        @param pass=null        The password. (must be set if user is set!)
        @param data=""          The data to send with the request.
        @param headers=[]      Array of headers. Each element in the array should be another array containing [headername,value].
        @param callback=null   Callback for asynchronous connections. The callback is called after completion and is passed the request object as 1st Parameter.
        @return                     HTTP request object.
    */
    XHRFunc.sendRequest=function(type, url, user, pass, data, headers, callback){
        var async=false;
        //check if the last argument is a function and treat it as callback;
        if(arguments[arguments.length-1]  instanceof Function){
            var async=true;
            callback = arguments[arguments.length-1];
        }
        //treat sencond last(if callback)/last(if no callback) argument as headers
        var headindex=arguments.length-((async || arguments[arguments.length-1] == null) ?2:1);
        //is it an array then it's headers
        if(arguments[headindex] instanceof Array){
            headers=arguments[headindex];
        }else{
            headers=[];
        }
        //are user AND password not specified then assume data as 3rd argument.
        if(typeof user == "string" && typeof pass == "string"){
            if(typeof data != "string"){
                data="";
            }
        }else if (typeof user == "string"){
            data = user;
            user=null;
            pass=null;
        }else{
            user=null;
            pass=null;
        }
        var xmlhttp= XHRFunc.getHTTP();
        try{
            if(user!=null){
                xmlhttp.open(type, url, async, user, pass);
            }else{
                xmlhttp.open(type, url, async);
            }
        }catch(e){
            throw "Request Open Failed: " + e;
        }
        //set headers
        for(var i=0;i< headers.length;i++){
            xmlhttp.setRequestHeader(headers[i][0], headers[i][1]);    
        }
        
        if(async){//set up a callback
            xmlhttp.onreadystatechange=function(){
                if (xmlhttp.readyState==4) {
                    callback(xmlhttp);
                    xmlhttp = null; //help IE with arbage collection
                }else if (xmlhttp.readyState==2){
                    //status property should be available (MS IXMLHTTPRequest documentation) 
                    //in Mozilla it is not if the request failed(server not reachable)
                    //in IE it is not available at all ?!
                    try{//see if it is mozilla otherwise don't care.
                        var isNetscape = netscape;
                        try{//if status is not available the request failed.
                            var s=xmlhttp.status;
                        }catch(e){//call the callback because Mozilla will not get to readystate 4
                            callback(xmlhttp);
                            xmlhttp = null;
                        }
                    }catch(e){
                    }
                }
            }
        }
        
        try{
            xmlhttp.send(data);
        }catch(e){
        	// Added by XML11:
        	// IE is going crazy and throwing an exception. You can recognize IE on the weird status code
            if(!xmlhttp.status == 1223)
            	throw e;
        }
        return xmlhttp;
    }
    /**
        Shorthand for a GET request.
        It calls sendRequest with "GET" as first argument.
        See the sendRequest method for more information.
        @param url                 The URL to retrieve.
        @param user=null        The username for auth.
        @param pass=null        The password. (must be set if user is set!)
        @param headers=[]      Array of headers. Each element in the array should be another array containing [headername,value].
        @param callback=null   Callback for asynchronous connections. The callback is called after completion and is passed the request object as 1st Parameter.
        @return                     HTTP request object.
    */
    XHRFunc.getURL=function(url, user, pass, headers, callback) { 
        var a=  new Array("GET");
        for(var i=0;i<arguments.length;i++){
            a.push(arguments[i]);
        }
        return XHRFunc.sendRequest.apply(this,a)
    }
    /**
        Shorthand for a POST request.
        It calls sendRequest with "POST" as first argument.
        See the sendRequest method for more information.
        @param url                 The URL to retrieve.
        @param user=null        The username for auth.
        @param pass=null        The password. (must be set if user is set!)
        @param data=""          The data to send with the request.
        @param headers=[]      Array of headers. Each element in the array should be another array containing [headername,value].
        @param callback=null   Callback for asynchronous connections. The callback is called after completion and is passed the request object as 1st Parameter.
        @return                     HTTP request object.
    */
    XHRFunc.postURL=function(url, user, pass, data, headers, callback) { 
        var a=  new Array("POST");
        for(var i=0;i<arguments.length;i++){
            a.push(arguments[i]);
        }
        return XHRFunc.sendRequest.apply(this,a)
    }
    
    XHRFunc.putURL=function(url, user, pass, data, headers, callback) { 
        var a=  new Array("PUT");
        for(var i=0;i<arguments.length;i++){
            a.push(arguments[i]);
        }
        return XHRFunc.sendRequest.apply(this,a)
    }