public class RandomContactFactory {
    Public static List<Contact> generateRandomContacts(Integer numberofContact, String LName) {
        List<Contact> contactList = new List<Contact>();
        for (integer i = 0; i < numberofContact; i++) {
            Contact a = new Contact(FirstName='Test ' + i + ' ' + LName);
            contactList.add(a);
        }
        return contactList;
    }
}
