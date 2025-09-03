public class OutbondEmailExample {
    public void email1(){
        Messaging.SingleEmailMessage email1 = new Messaging.SingleEmailMessage();
        String[] add = new String[]{'dileepkumar.dk6859@gmail.com'};
        email1.setToAddresses(add);
        email1.setSubject('Message From Dileep Kumar');
        email1.setPlainTextBody('Its a test mail!');
        email1.setSenderDisplayName('Dileep Kumar');
        Messaging.SingleEmailMessage[] emails = new Messaging.SingleEmailMessage[]{email1};
        PageReference ref = Page.Dev_Usecase_12;
        Blob body = ref.getContentAsPDF();
        
        Messaging.EmailFileAttachment file1 = new Messaging.EmailFileAttachment();
        file1.setBody(body);
        file1.setFileName('test.pdf');
        Messaging.EmailFileAttachment[] files = new Messaging.EmailFileAttachment[]{file1};
        email1.setFileAttachments(files);
        Messaging.sendEmail(emails);
        
    }
}