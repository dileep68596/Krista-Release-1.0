@RestResource(urlMapping='/CaseApi/*')
//https://cohortsept2021com-dev-ed.my.salesforce.com/services/apexrest/CaseApi
global class RestWebServiceExample {
    @HttpGet
    global static Case getCaseById() {
        RestRequest request = RestContext.request;
        // grab the caseId from the end of the URL
        String caseId = request.requestURI.substring(
          request.requestURI.lastIndexOf('/')+1);
        Case result =  [SELECT CaseNumber,Subject,Status,Origin,Priority
                        FROM Case
                        WHERE Id = :caseId];
        return result;
    }
	@HttpPost
    global static ID createCase(String subject, String status, String origin, String priority){
        Case thisCase = new Case(
            subject=subject,
            status=status,
            origin=origin,
            priority=priority);
        insert thisCase;
        return thisCase.Id;
    }
}