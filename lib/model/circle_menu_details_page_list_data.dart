
class CircleMenuDataDetailsScreen{

  String img;
  String name;
  
  CircleMenuDataDetailsScreen({required this.name,required this.img});
  
 static List<CircleMenuDataDetailsScreen> getCircleMenuData(){
    return [
      
      CircleMenuDataDetailsScreen(name: "Maps", img: "assetes/images/icons/mapD.png"),
      CircleMenuDataDetailsScreen(name: "Guide", img: "assetes/images/icons/guideD.png"),
      CircleMenuDataDetailsScreen(name: "4day 3 Night", img: "assetes/images/icons/day.png"),
      CircleMenuDataDetailsScreen(name: "Dinner", img: "assetes/images/icons/dinner.png"),
   ];
  }
  
  
}