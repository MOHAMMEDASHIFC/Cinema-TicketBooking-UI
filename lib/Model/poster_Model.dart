class PosterModel {
  final String img;
  final String title;
  final String eunra;
  final String discription;
  final int price;

  final List<String> actorList;
  PosterModel({
    required this.discription,
    required this.eunra,
    required this.img,
    required this.title,
    required this.price,
    required this.actorList,
  });

  static List<PosterModel> posterList = [
    PosterModel(
        price: 140,
        discription:
            'Leo is a 2023 Indian Tamil-language action thriller film directed by Lokesh Kanagaraj and produced by Seven Screen Studio. The film stars Vijay in the titular role, alongside Sanjay Dutt, Arjun, Trisha, Gautham Vasudev Menon, Mysskin, Madonna Sebastian, George Maryan, Mansoor Ali Khan, Priya Anand and Mathew Thomas.',
        eunra: 'Action/Drama',
        img: "assets/img/leo.jpeg",
        title: 'Leo',
        actorList: [
          "assets/img/L1.jpeg",
          "assets/img/L2.jpeg",
          "assets/img/L3.jpeg",
          "assets/img/L4.jpeg",
          "assets/img/L5.jpeg",
        ]),
    PosterModel(
        price: 140,
        discription:
            'A police officer and his team face a challenging journey across the country to catch a criminal gang. He leads them toward triumph amid professional uncertainties.',
        eunra: 'Thriller/Drama',
        img: 'assets/img/kannur.jpg',
        title: 'Kannur Squad',
        actorList: [
          "assets/img/K1.jpeg",
          "assets/img/K2.jpeg",
          "assets/img/K3.jpeg",
          "assets/img/K4.jpeg",
          "assets/img/K5.jpeg",
          "assets/img/K6.jpeg",
        ]),
    PosterModel(
        price: 140,
        discription:
            'During World War II, Lt. Gen. Leslie Groves Jr. appoints physicist J. Robert Oppenheimer to work on the top-secret Manhattan Project. Oppenheimer and a team of scientists spend years developing and designing the atomic bomb. Their work comes to fruition on July 16, 1945.',
        eunra: ' Drama/Thriller ',
        img: "assets/img/oppen.jpeg",
        title: 'Oppenheimer',
        actorList: [
          "assets/img/o1.jpeg",
          "assets/img/o2.jpeg",
          "assets/img/o3.jpeg",
          "assets/img/o4.jpeg",
          "assets/img/o5.jpeg",
        ]),
    PosterModel(
        price: 140,
        discription:
            'Barbie and Ken are having the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans ',
        eunra: 'Comedy/Fantasy',
        img: "assets/img/Barbie.jpeg",
        title: 'Barbie',
        actorList: [
          "assets/img/B1.jpeg",
          "assets/img/B2.jpeg",
          "assets/img/B3.jpeg",
          "assets/img/B4.jpeg",
          "assets/img/B5.jpeg",
        ]),
    PosterModel(
        price: 140,
        discription:
            'In 1956 France, a priest is violently murdered, and Sister Irene begins to investigate. She once again comes face-to-face with a powerful evil.',
        eunra: 'Horror/Mystery',
        img: 'assets/img/nun.jpg',
        title: 'The Nun II',
        actorList: [
          "assets/img/N1.jpeg",
          "assets/img/N2.jpeg",
          "assets/img/N3.jpeg",
          "assets/img/N4.jpeg",
          "assets/img/N5.jpeg",
          "assets/img/N6.jpeg",
        ]),
  ];
}
