class Travel {
  String name;
  String location;
  String img;

  Travel(this.name, this.location, this.img);
  static List<Travel> TravelInfo() {
    return [
      Travel("Nusa Panida", "Bali, Indonasia", "images/raja.jpg"),
      Travel("Raja Ampat", "Lombok, Indonasia", "images/ambat.jpg"),
      Travel("Lake Toba", "Bali, Indonasia", "images/raja.jpg"),
      Travel("Waterbomb", "Bali, Indonasia", "images/ambat.jpg"),
    ];
  }
}
