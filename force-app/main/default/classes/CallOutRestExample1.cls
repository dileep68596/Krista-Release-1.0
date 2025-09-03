public class CallOutRestExample1 {
    public void callPostalApi(){
        //1. Get Post Office(s) details search by Postal PIN Code
        // eg., GET https://api.postalpincode.in/pincode/{PINCODE}
        /*Http Class. Use this class to initiate an HTTP request and response.
        HttpRequest Class: Use this class to programmatically create HTTP requests like GET, POST, PATCH, PUT, and DELETE.
        HttpResponse Class: Use this class to handle the HTTP response returned by HTTP.
        */
        Http hp = new Http();
        
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.postalpincode.in/pincode/'+'600023');
        request.setMethod('GET');
        
        HttpResponse response = hp.send(request);
        System.debug(response.getBody());
    }
}