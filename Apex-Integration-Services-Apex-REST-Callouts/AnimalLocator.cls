public class AnimalLocator {
    
    public static String getAnimalNameById (Integer id) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setHeader('id', String.valueof(id));
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        system.debug('response: ' + response.getBody());
        Map<String,Object> map_results = (Map<String,Object>) JSON.deserializeUntyped(response.getBody());
        String results = (String) map_results.get('animals');
		return(results);
    }

}
