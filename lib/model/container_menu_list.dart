class MenuList {
  String name;
  String img;

  MenuList({
    required this.name,
    required this.img,
  });

  static List<MenuList> myrowMenuListData() {
    return [
      MenuList(
        name: "Mountain",
        img: "assetes/images/icons/mountain.svg",
      ),
      MenuList(name: "Beach", img: "assetes/images/icons/beach.svg"),
      MenuList(name: "Forest", img: "assetes/images/icons/forest.svg"),
      MenuList(name: "Park", img: "assetes/images/icons/park.svg"),
    ];
  }
}
