class ContactModel {
  final String name;
  final int number;
  final String myChar;
  const ContactModel(this.name, this.number, this.myChar);
}

class Contacts {
  final myContacts = const <ContactModel>[
    const ContactModel("Hiren Vyas1", 8347603130, "H"),
    const ContactModel("Hiren Vyas2", 8347603130, "H"),
    const ContactModel("Hiren Vyas3", 8347603130, "H"),
    const ContactModel("Hiren Vyas4", 8347603130, "H"),
    const ContactModel("Hiren Vyas5", 8347603130, "H"),
    const ContactModel("Hiren Vyas6", 8347603130, "H"),
  ];
}
