@IsTest
global class AnimalLocatorMock implements HttpCalloutMock {
    
    global HTTPresponse respond(HTTPrequest request) {
        Httpresponse response = new Httpresponse();
        response.setStatusCode(200);
        
        Integer id = Integer.valueof(request.getHeader('id'));
        List<String> lst_body = new List<String> {'majestic badger', 'fluffy bunny'};
        system.debug('animal return value: ' + lst_body[id]);
        response.setBody('{"animals": "'+ lst_body[id] + '"}');
        return response;
    }

}
