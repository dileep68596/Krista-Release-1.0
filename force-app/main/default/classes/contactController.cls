public class contactController {
	@AuraEnabled
    public static List<Contact> getContacts(){
        return [Select Name,Email,Phone,Title From Contact];
    }
}