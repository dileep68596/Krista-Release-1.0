@RestResource(urlMapping='/OpportunityApi/*')
global class integration_UseCase_01 {
//https://cohortsept2021com-dev-ed.my.salesforce.com/services/apexrest/OpportunityApi

    @HttpGet
    global static Opportunity getOpportunityById() {
        RestRequest request = RestContext.request;
        // grab the caseId from the end of the URL
        String OpportunityId = request.requestURI.substring(
          request.requestURI.lastIndexOf('/')+1);
        Opportunity result =  [SELECT Name,StageName,Amount,CloseDate
                        FROM Opportunity
                        WHERE Id = :OpportunityId];
        return result;
    }
	@HttpPost
    global static ID createOpportunity(String Name, String StageName, Decimal Amount, Date CloseDate){
        Opportunity thisOpportunity = new Opportunity(
            Name=Name,
            StageName=StageName,
            Amount=Amount,
            CloseDate=CloseDate);
        insert thisOpportunity;
        return thisOpportunity.Id;
    }
    @HttpDelete
    global static void deleteOpportunity() {
        RestRequest request = RestContext.request;
        String OpportunityId = request.requestURI.substring(
            request.requestURI.lastIndexOf('/')+1);
        Opportunity thisOpportunity = [SELECT Id FROM Opportunity WHERE StageName = 'Closed Lost'];
        delete thisOpportunity;
        /*String OpportunityStage = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        Opportunity thisOpportunity = [SELECT StageName FROM Opportunity WHERE StageName = :Closed Lost];
        delete thisOpportunity;*/
    }   
}