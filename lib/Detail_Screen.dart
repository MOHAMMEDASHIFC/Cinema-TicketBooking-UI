// ignore_for_file: must_be_immutable

import 'package:cinemabooking/Model/poster_Model.dart';
import 'package:cinemabooking/Seat..dart';
import 'package:cinemabooking/widgets/reviewsWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  final PosterModel itme;
  final List<String> actorslist;

  List<String> reviewslist = [
    'A solid 5/5 , The amount of hard work the team of LEO has put into the film is just fantabulous and the performance is also just amazing.',
    '"Leo" undeniably lives up to the status of being the most eagerly awaited movie of the year. The movie offers a fresh take on storytelling, with a clean and well-crafted screenplay',
    'Well if we dont give review to a movie like this which movie we will ? KANNUR SQUAD is an amazing craft made by the director 100% all the technical team did amazing but i have to say THE movie is 100% Director brilliance and attention to details,   ',
    '"Oppenheimer" is a breathtaking masterpiece that skillfully combines the elements of action, audio, acting, direction, and scene design into an unforgettable cinematic experience. Directed by the visionary filmmaker, Christopher Nolan, the movie takes audiences on an electrifying journey that weaves together heart-pounding action sequences, immersive audio design, exceptional performances.',
    'The "Barbie Movie" brings to life the beloved doll in a delightful and empowering animated adventure that will enchant audiences of all ages. Directed by a talented team, the film embraces the essence of Barbie.',
    'I cannot speak enough about How amazingly they expanded the Conjuring universe with this Installment! The Nun 2 explores more deeply into the characters ; Irene, Maurice and Nun itself and their stories.',
  ];

  List<String> recomededMovieslist = [
    'assets/img/kotha.jpeg',
    'assets/img/rdx.jpeg',
    "assets/img/jawan1.jpg",
    'assets/img/pachu.jpeg',
    'assets/img/roman.jpeg',
    'assets/img/john.jpeg',
    'assets/img/miss.jpeg',
    'assets/img/evil.jpeg',
  ];

  DetailScreen({Key? key, required this.itme, required this.actorslist})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 38, 42, 42),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              Colors.grey.shade800,
              Colors.grey.shade900,
              const Color.fromARGB(225, 0, 0, 0),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Hero(
                tag: itme.img,
                child: Container(
                  height: h * 0.45,
                  width: w,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(70),
                      bottomRight: Radius.circular(70),
                    ),
                    image: DecorationImage(
                      image: AssetImage(itme.img),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: h * 0.05, left: w * 0.03),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: h * 0.02),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(left: w * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: h * 0.01),
                        child: Text(
                          itme.title,
                          style: GoogleFonts.poppins(
                            letterSpacing: 1.5,
                            fontSize: 35,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: h * 0.02),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 35,
                          ),
                          SizedBox(width: w * 0.03),
                          Text(
                            '8.7/10',
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: w * 0.01),
                          Text(
                            '193k votes',
                            style: GoogleFonts.ubuntu(
                              fontWeight: FontWeight.w300,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 2,
                        endIndent: w * 0.45,
                      ),
                      SizedBox(height: h * 0.03),
                      Text(
                        'About this Movie',
                        style: GoogleFonts.poppins(
                          letterSpacing: 1,
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: h * 0.01, right: w * 0.05),
                        child: Text(
                          itme.discription,
                          //'It is a joker movie in which he wanted to be a joker but he cant because he die at the center point of the movie',
                          style: GoogleFonts.poppins(
                            color: Color.fromARGB(255, 169, 169, 169),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: h * 0.03),
                        child: Text(
                          'Cast',
                          style: GoogleFonts.poppins(
                            letterSpacing: 1,
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(height: h * 0.03),
                      SizedBox(
                        height: h * 0.1,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: itme.actorList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  left: index == 0 ? w * 0 : w * 0.05),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    AssetImage(itme.actorList[index]),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: h * 0.03,
                      ),
                      Divider(
                        color: Color.fromARGB(255, 127, 127, 127),
                        thickness: 2,
                        endIndent: w * 0.05,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: h * 0.03),
                        child: Text(
                          'Reviews',
                          style: GoogleFonts.poppins(
                            letterSpacing: 1,
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(height: h * 0.03),

                      // Reviews ListviewBuilder
                      SizedBox(
                        height: h * 0.15,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: reviewslist.length,
                          itemBuilder: (context, index) {
                            final reviews = reviewslist[index];
                            return Padding(
                              padding: EdgeInsets.only(
                                  left: index == 0 ? w * 0 : w * 0.05),
                              child: ReviewWidget(reviews: reviews),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: h * 0.05,
                      ),
                      Divider(
                        color: const Color.fromARGB(255, 127, 127, 127),
                        thickness: 2,
                        endIndent: w * 0.05,
                      ),
                      SizedBox(
                        height: h * 0.03,
                      ),
                      Text(
                        'Recomanded Movies',
                        style: GoogleFonts.poppins(
                          letterSpacing: 1,
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: h * 0.05,
                      ),
                      SizedBox(
                        height: h * 0.3,
                        width: w,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: recomededMovieslist.length,
                          itemBuilder: (context, index) {
                            return Padding(
                                padding: EdgeInsets.only(
                                    left: index == 0 ? w * 0 : w * 0.05),
                                child: Container(
                                  width: w * 0.4,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            recomededMovieslist[index]),
                                        fit: BoxFit.cover),
                                  ),
                                ));
                          },
                        ),
                      ),
                      SizedBox(height: h * 0.12),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SelectSeat(
                  item: itme,
                ),
              ));
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: w * 0.28, vertical: h * 0.012),
            child: Text(
              'Select Seats',
              style: GoogleFonts.carterOne(
                letterSpacing: 1,
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
