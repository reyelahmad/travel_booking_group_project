class TravelData {
  String name;
  String locations;
  String img;
  double rating;
  double review;
  String description;
  int hotelid;
  String price;
  String daynight;
  List<String> imglist;

  TravelData(
      {required this.name,
      required this.daynight,
      required this.locations,
      required this.img,
      required this.rating,
      required this.review,
      required this.description,
      required this.price,
      required this.hotelid,
      required this.imglist});
}

List<TravelData> myHotelListData = [
  TravelData(
      name: "Emirates Place",
      locations: "Abu Dhabi",
      img: "assetes/images/background/01-01.png",
      rating: 4.5,
      review: 21,
      hotelid: 01,
      daynight: "1 Day 2 Night",
      description:
          "When it comes to luxurious hotels, this one is at the top. Costing approximately 3 billion to build, Emirates Palace has 394 grand rooms and suites, 40 meeting and conference rooms, a white sand beach, a myriad of pools and fountains, two sumptuous spas, marble imported from 13 different countries and over 1,000 Swarovski crystal chandeliers. It’s like a small pleasure fortress that also boasts the most prestigious marina development in the Middle East. Royalty, or those who want to feel like it, can luxuriate in one of the many palace suites, all with lavish surroundings that would befit a Sultan of old yet with enough modern amenities to please today’s top tycoons. ",
      price: "38883",
      imglist: [
        "assetes/images/background/01-01.png",
        "assetes/images/background/01-02.png",
        'assetes/images/background/01-03.png',
        'assetes/images/background/01-04.png',
        'assetes/images/background/01-05.png',
        'assetes/images/background/01-06.png',
      ]),
  TravelData(
      name: "Burj Al Arab",
      locations: "Dubai",
      img: "assetes/images/background/02-01.png",
      rating: 4.7,
      review: 23,
      hotelid: 02,
      daynight: "2 Day 2 Night",
      description:
          "Built to resemble a billowing sail, the stunning architecture of Burj Al Arab Hotel in Dubai makes it one of the most photographed in the world. All rooms are luxurious suites spanning two floors with state-of-the art everything and incredible views. And beyond the unique over-the-top amenities like the attached helipad and hovering tennis courts, there is a vast array of futuristic dining and nightlife options. Their guest care is also seriously intensive. Upscale extras include in-suite check-in, 24/7 personal on-call butlers, and a chauffeur-driven Rolls Royce fleet, all catering to an extremely well-heeled VIP clientele that often includes royalty. ",
      price: "134400",
      imglist: [
        'assetes/images/background/02-01.png',
        'assetes/images/background/02-02.png',
        "assetes/images/background/02-03.png",
        "assetes/images/background/02-04.png",
        "assetes/images/background/02-05.png",
        "assetes/images/background/02-06.png",
        "assetes/images/background/02-07.png",
      ]),
  TravelData(
      name: "The Plaza",
      locations: "New York",
      img: "assetes/images/background/03-01.png",
      rating: 4.5,
      review: 6,
      hotelid: 03,
      daynight: "3 Day 2 Night",
      description:
          "Though the Big Apple has many legendary and swanky hotels, The Plaza is often the top choice for visiting VIPs. The Royal Three Bedroom Suite is styled in the most opulent of old-world charm with a formal dining room for up to 12 guests, a library, a gymnasium, a grand piano, full kitchen (for personal chefs), and is serviced by its own private elevator. Butler service is also included. Built in 1907, the iconic structure was designated as a National Historic Landmark in 1969. ",
      price: "95119",
      imglist: [
        "assetes/images/background/03-01.png",
        "assetes/images/background/03-02.png",
        "assetes/images/background/03-03.png",
        "assetes/images/background/03-04.png",
        "assetes/images/background/03-05.png",
        "assetes/images/background/03-06.png",
      ]),
  TravelData(
      name: "The Westin Excelsior",
      locations: "Rome",
      img: "assetes/images/background/04-01.png",
      rating: 3.9,
      daynight: "3 Day 4 Night",
      review: 0.5,
      hotelid: 04,
      description:
          "The hotel is one of the city's most iconic palaces, rich in history and located on the legendary Via Veneto. The Westin Excelsior is nestled between the Spanish Steps and the Borghese Gardens & Gallery. This 5-star hotel features 281 rooms and 35 unique Signature Suites, including one of the most spectacular and opulent suites in Europe – the Villa La Cupola. The Villa offers the ultra-elite a truly ‘Roman Emperor 'experience. Set on two floors, the suite combines breathtaking views of the city with sumptuous splendors throughout. ",
      price: "26325",
      imglist: [
        "assetes/images/background/04-01.png",
        "assetes/images/background/04-02.png",
        "assetes/images/background/04-03.png",
        "assetes/images/background/04-04.png",
        "assetes/images/background/04-05.png",
        "assetes/images/background/04-06.png",
        "assetes/images/background/04-07.png",
      ]),
  TravelData(
      name: "Atlantis Paradise",
      locations: "Bahamas",
      img: "assetes/images/background/05-01.png",
      rating: 4.3,
      review: 16,
      daynight: "4 Day 4 Night",
      hotelid: 05,
      description:
          "In 1994, Sol Kerzner purchased a languishing Resorts International from entertainer/entrepreneur Merv Griffin. This once-popular jet-set playground on Paradise Island had seen better days, but from the start Kerzner saw its potential. Struck by the beauty of the location, on a lush tropical island with a pristine two-mile white sand beach, Kerzner vowed to build the most engaging and astounding resort the world had ever seen, a place where dreams would be made real and all who experienced it would fall under its mystical spell … whilst having a whole lot of fun in the process.At that time, tourism, the largest sector of The Bahamas’ economy, had been on the decline, unemployment rates were in the double-digits, and the country’s tourism infrastructure had been steadily eroding for years. But that was all to change quickly as, within eight months, Kerzner had transformed almost the entire island into a tropical paradise.rom 1994 to 1998, Sol Kerzner created the mythical city of Atlantis from the ground up -- or, more accurately, from the seabed to the skies. More than 800 million was spent to bring to life the myth and legend of the lost city of Atlantis. The original scope and scale of the project was mind-boggling: the world’s largest open-air marine environment of 11 million gallons, home to 50,000 sea creatures representing 200 species; new lagoons and countless waterfalls; a spectacular Mayan Temple Waterslide complex; 6 swimming areas and a 15 million Marina – itself an engineering marvel -- that would attract the sleek international mega-yacht set.In 1998, the 1,200-room Royal Towers opened - a major architectural achievement of arches, domes and spires, flanked by soaring towers that appear to have arisen from the sea -- based on the myth that inspired them. Millions of dollars were spent commissioning museum-quality art from renowned artists from Europe, Africa, The Bahamas and the United States. The Caribbean’s largest casino was built in the Royal Towers, and contains millions of dollars in art. The most notable of which are Temple of the Moon and Temple of the Sun by glass sculptor Dale Chihuly, insured for 1 million apiece. Upon opening, the casino also offered a gaming industry first: a wall of windows - bringing light and the outdoors in.Following a decade of success, Atlantis, Paradise Island continued its growth as Kerzner International embarked on a third phase of development with its approximately 1 billion expansion in 2007. Adding to Atlantis’ existing 2,317 rooms and the world’s largest open-air marine habitat, the Phase III expansion includes: the luxurious 600-room resort within the resort, The Cove Atlantis; a 497-key condo-hotel, The Reef Atlantis; a 14-acre dolphin habitat and education center, Dolphin Cay; a 63-acre addition to the waterscape, now called Aquaventure and a total of 140 acres; Aura, a nightclub from the operators of Hakkasan Group; approximately 100,000 additional square feet of new conference facilities and a total of over 500,000 indoor and outdoor space creating the largest conference space in the Caribbean; and the 30,000 square-foot flagship Mandara Spa.",
      price: "32754",
      imglist: [
        "assetes/images/background/05-01.png",
        "assetes/images/background/05-02.png",
        "assetes/images/background/05-03.png",
        "assetes/images/background/05-04.png",
        "assetes/images/background/05-05.png",
        "assetes/images/background/05-06.png",
      ]),
  TravelData(
      name: "Pan Pacific Sonargaon",
      locations: "Dhaka",
      img: "assetes/images/background/06-01.png",
      rating: 4.6,
      review: 13,
      hotelid: 06,
      daynight: "2 Day 2 Night",
      description:
          "This refined hotel in a lush garden setting is 2 km from the Bangladesh National Museum and 3 km from Jatiyo Sangsad Bhaban, the Bangladesh National Parliament.Warmly furnished rooms feature flat-screen TVs and free Wi-Fi. Upgraded rooms have sitting areas. Suites add separate living/dining rooms. Some upgraded quarters offer access to a lounge with complimentary breakfast and cocktails.There are 7 restaurants and bars, including formal dining, an Italian bistro and a cafe. Other amenities consist of an outdoor pool, and a fitness centre with hot tubs, as well as a beauty salon and a business centre.",
      price: "26004",
      imglist: [
        "assetes/images/background/06-01.png",
        "assetes/images/background/06-02.png",
        "assetes/images/background/06-03.png",
        "assetes/images/background/06-04.png",
        "assetes/images/background/06-05.png",
        "assetes/images/background/06-06.png",
        "assetes/images/background/06-07.png",
      ]),
  TravelData(
      name: "Marquis Los Cabos",
      locations: "Mexico",
      img: "assetes/images/background/07-01.png",
      rating: 4.6,
      review: 1.3,
      hotelid: 07,
      daynight: "1 Day 1 Night",
      description:
          "Inspired by a celestial legend of two angels seeking paradise on earth, the spectacular lobby of Marquis Los Cabos opens out onto the wildly restless sea like a temple to its creation. Gorgeous specially-commissioned sculptures, massive waterfalls, spectacular infinity pools, and a lovely serene spa set the stage for vacationing VIPs. (George Clooney’s beach villa is next door.) Luxurious rooms boast balconies where you can often spot migrating whales, and there are also private villas with personal dipping pools.",
      price: "95111",
      imglist: [
        "assetes/images/background/07-01.png",
        "assetes/images/background/07-02.png",
        "assetes/images/background/07-03.png",
        "assetes/images/background/07-04.png",
        "assetes/images/background/07-05.png",
        "assetes/images/background/07-06.png",
        "assetes/images/background/07-07.png",
      ]),
  TravelData(
      name: "The Oberoi Udaivilas",
      locations: "Udaipur, India",
      img: "assetes/images/background/08-01.png",
      rating: 4.8,
      review: 4.8,
      hotelid: 09,
      daynight: "1 Day 1 Night",
      description:
          "Set amid gardens and overlooking Lake Pichola, this luxury hotel is 2 km from both Jagdish Temple and the City Palace Museum.Bright, elegant rooms and suites feature flat-screen TVs, free Wi-Fi, DVD players and sitting areas, plus minibars and iPod docks. Suites add dining rooms, living rooms and coffeemakers, as well as private pools and furnished courtyards with lake views. A 24-hour butler service is available.Amenities include 2 upscale restaurants and a bar with lake views; private outdoor lakeside dining is available. There's also a gym, a spa and an outdoor pool, plus a business centre, meeting rooms and event space.",
      price: "96004",
      imglist: [
        "assetes/images/background/08-01.png",
        "assetes/images/background/08-02.png",
        "assetes/images/background/08-03.png",
        "assetes/images/background/08-04.png",
        "assetes/images/background/08-05.png",
        "assetes/images/background/08-06.png",
        "assetes/images/background/08-07.png",
      ]),
  // TravelData(
  //     name: "Hotel X Toronto",
  //     locations: "Toronto, Canada.",
  //     img: "This is image 2",
  //     rating: 4.5,
  //     review: 2.4,
  //     description: "Description: Next to the Exhibition Place event venue, this chic high-rise hotel overlooking Lake Ontario is 9 minutes on foot from the Fort York National Historic Site and 1 km from ferries to Billy Bishop Toronto City Airport.Casual rooms feature free Wi-Fi, flat-screen TVs, minifridges and coffee makers; some have lake views or sitting areas. Club level rooms add access to a lounge that includes food and drinks. Some suites come with separate living rooms.An airport shuttle is provided. A split-level Mediterranean restaurant/bar has a terrace. There's also a rooftop bar, a lounge and outdoor pool, plus a gym, tennis and squash courts.",
  //     price: 45054,
  //     imglist: ['img 1', 'img 2', 'img 3']),
];
