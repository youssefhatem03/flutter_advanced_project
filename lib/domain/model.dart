
class SliderObject {
  String title;
  String subtitle;
  String image;

  SliderObject(this.title, this.subtitle, this.image);
}


class Customer{
  String id;
  String name;
  int numOfNotifications;

  Customer(this.id, this.name, this.numOfNotifications);
}

class Contacts{
  String phone;
  String link;
  int email;

  Contacts(this.phone, this.link, this.email);
}


class Authentication{
  String customer;
  String contacts;

  Authentication(this.customer, this.contacts);
}