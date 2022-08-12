class CircleMenuDataDetailsScreen{
  String img;
  String name;
  
  CircleMenuDataDetailsScreen({required this.name,required this.img});
  
 static List<CircleMenuDataDetailsScreen> getCircleMenuData(){
    return [
      
      CircleMenuDataDetailsScreen(name: "Flights", img: "assetes/images/icons/flight.png"),
      CircleMenuDataDetailsScreen(name: "Hotels", img: "assetes/images/icons/hotel.png"),
      CircleMenuDataDetailsScreen(name: "Transport", img: "assetes/images/icons/bus2.png"),
      CircleMenuDataDetailsScreen(name: "Events", img: "assetes/images/icons/evn.png"),
      CircleMenuDataDetailsScreen(name: "Show", img: "assetes/images/icons/show.png"),
    ];
  }
  
  
}