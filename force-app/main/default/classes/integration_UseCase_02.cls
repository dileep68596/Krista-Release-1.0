global with sharing class integration_UseCase_02 {
    webservice static Account getRecord(String accId) {
        return [Select Id, Name, Phone From Account Where Id = :accId];
    }
}