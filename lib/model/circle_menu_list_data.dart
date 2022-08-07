class CircleMenuData{
  String img;
  String name;
  
  CircleMenuData({required this.name,required this.img});
  
 static List<CircleMenuData> getCircleMenuData(){
    return [
      
      CircleMenuData(name: "Flight", img: "assetes/images/background/bg.png"),
      CircleMenuData(name: "Flight 2", img: "assetes/images/background/bg.png"),
      CircleMenuData(name: "Flight 2", img: "assetes/images/background/bg.png"),
      CircleMenuData(name: "Flight 2", img: "assetes/images/background/bg.png"),
      CircleMenuData(name: "Flight 2", img: "assetes/images/background/bg.png"),
    ];
  }
  
  
}