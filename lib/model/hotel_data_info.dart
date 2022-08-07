class TravelData {
  String name;
  String locations;
  String img;
  double rating;
  double review;
  String description;
  int price;
  List<String> imglist;

  TravelData(
      {required this.name,
      required this.locations,
      required this.img,
      required this.rating,
      required this.review,
      required this.description,
      required this.price,
      required this.imglist});

  static List<TravelData> myHotelListData() {
    return [
      TravelData(
          name: "Name",
          locations: "This Is Locations",
          img: "This is image",
          rating: 5.3,
          review: 51,
          description: "This Is Description",
          price: 154,
          imglist: ['img 1', 'img 2', 'img 3']),
      TravelData(
          name: "Name 2",
          locations: "This Is Locations 2",
          img: "This is image 2",
          rating: 5.3,
          review: 51,
          description: "This Is Description 2",
          price: 154,
          imglist: ['img 1', 'img 2', 'img 3']),
    ];
  }
}
