class TravelData{

String name;
String locations;
String img;
double rating;
double review;
String description;
int price;
List<String> imglist;

TravelData({required this.name,required this.locations,required this.img,required this.rating,required this.review,required this.description,required this.price,required this.imglist});

List<TravelData> myListData=[
  TravelData(name: "DHAKA", locations: "Locations", img: "", rating: 4.5, review: 9, description: "This Is Description", price: 651, imglist: ["","",])
];

}