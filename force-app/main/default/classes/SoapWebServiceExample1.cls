global with sharing class SoapWebServiceExample1 {
    webservice static Account getRecord(String accId) {
       	return [Select Id, Name, Phone From Account Where Id = :accId];
    }
}