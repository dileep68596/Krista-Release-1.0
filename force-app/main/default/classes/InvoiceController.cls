public class InvoiceController {
    public List<InvoiceWrapper> InvWrapList {get; set;}
    
    public InvoiceController(){
        InvoiceWrapper Iw1 = new InvoiceWrapper();
        Iw1.prodName = 'DELL';
        Iw1.quantity = 12;
        Iw1.price = 120000;
        Iw1.date_purchased =System.today();
        
        InvoiceWrapper Iw2 = new InvoiceWrapper();
        Iw2.prodName = 'HP';
        Iw2.quantity = 10;
        Iw2.price = 130000;
        Iw2.date_purchased =System.today();
        
        InvoiceWrapper Iw3 = new InvoiceWrapper();
        Iw3.prodName = 'ACER';
        Iw3.quantity = 32;
        Iw3.price = 110000;
        Iw3.date_purchased =System.today();
        
        List<InvoiceWrapper> InvWrapList = new List<InvoiceWrapper>();
        InvWrapList.add(Iw1);
        InvWrapList.add(Iw2);
        InvWrapList.add(Iw3);
    }
}