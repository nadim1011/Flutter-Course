class ContactModels {
  int id;
  String name;
  String phoneNo;
  String mail;
  String address;
  String image;
  bool favorite;


  ContactModels({
    this.id=-1,
    required this.name,
    required this.phoneNo,
    this.mail='',
    this.address='',
    this.image='Images/person.jpg',
    this.favorite=false,
  });

}


