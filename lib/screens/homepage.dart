import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:FAC/screens/schedule.dart';
import 'package:FAC/screens/signup.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../animation/FadeAnimation.dart';

class Dashboard extends StatelessWidget {
  final List<String> imagesList = [
    'assets/az.png',
    'assets/salah.jpg',
    'assets/Magista.jpg'
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/111.png',
                  height: 80,
                ),
                const Text(
                  'FAC',
                  style: TextStyle(fontSize: 20),
                ),

              ],
            ),
          ),

          ListTile(
            leading: const Icon(
              Icons.settings,
            ),
            title: const Text(
              'Settings',
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.arrow_back_outlined,
            ),
            title: const Text(
              'Back',
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: true,
        title:
        Text(
          "About Us",
          selectionColor: Colors.red,
        ),
        actions: [
        ],
      ),
      bottomNavigationBar: GNav(rippleColor: Colors.red,
        color: Colors.black,
        tabBackgroundColor: Colors.red.withOpacity(0.1),
        tabs: [
          GButton(icon: Icons.home, text: 'Home',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dashboard()),
              );
            },
          ),
          GButton(icon: Icons.schedule, text: 'Schedule',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => schedule()),
              );
            },
          ),
          GButton(icon: Icons.person, text: 'Register',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignupPage()),
              );
            },),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: CarouselSlider(
                options:  CarouselOptions(height: MediaQuery.of(context).size.height,
                viewportFraction: 1.0,
                  enlargeCenterPage: false,
                ),
                items: imagesList
                    .map((item) =>
                    Container(
                  child: Center(
                      child: Image.network(
                        item,
                        fit: BoxFit.cover,
                        height: MediaQuery.of(context).size.height,
                      )),
                ))
                    .toList(),

              ),
              ),
            Column(
              children: [
                Content(heading: 'About Us',headcolor: Colors.white,
                  img: 'assets/1.jpg',
                  clr:Colors.red,content: " We believe that becoming bi-lingual while pursuing your football dreams is fantastic use of a young person's time. The good news is that at EIFA we have over 10 years experience in assisting our participants.. We believe that becoming bi-lingual while pursuing your football dreams is fantastic use of a young person's time. The good news is that at EIFA we have over 10 years experience in assisting our participants.",),

              ],
            ),
            Text('We are Best In',style: GoogleFonts.poppins(fontSize: 30,color: Colors.grey,fontWeight: FontWeight.w500),),
            Padding(
              padding: EdgeInsets.all(17.0),
              child: Container(
                height: 150,
                width:150,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 2,
                      blurRadius: 1,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 15,),
                      Icon(FontAwesomeIcons.futbol,size: 50,color: Colors.black,),
                      SizedBox(height: 10,),
                      Text("Defence Line", style: GoogleFonts.poppins(fontSize: 10,color: Colors.black,fontWeight: FontWeight.bold ),),
                      SizedBox(height: 5,),
                      Text("football is a group of players that line up opposite from the offensive line", textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 8,color: Colors.grey,fontWeight: FontWeight.bold ),),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(17.0),
              child: Container(
                height: 150,
                width:150,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 2,
                      blurRadius: 1,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 15,),
                      Icon(FontAwesomeIcons.gauge,size: 50,color: Colors.black,),
                      SizedBox(height: 10,),
                      Text("Assciations", style: GoogleFonts.poppins(fontSize: 10,color: Colors.black,fontWeight: FontWeight.bold ),),
                      SizedBox(height: 5,),
                      Text("Governing body for association football many sport's regional bodies such as UEFA", textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 8,color: Colors.grey,fontWeight: FontWeight.bold ),),

                    ],

                  ),
                ),
              ),
            ),
            Container(
              height: 150,
              width: 500,
              color: Colors.black,
              child:
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Text("Contact Us: FAC Academy", textAlign: TextAlign.left,style: GoogleFonts.poppins(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold ),),
                     SizedBox(height: 20,),
                    Text("Copyrights © 2023 FAC Academy.", textAlign: TextAlign.left,style: GoogleFonts.poppins(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold ),),
                    SizedBox(height: 20,),
                    Text("Designed by Srp.ai.", textAlign: TextAlign.right,style: GoogleFonts.poppins(fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold ),),

                  ],

                ),
              ),


            ),
           ],


        ),

      ),
    );
  }
}


class Content extends StatelessWidget {
Content({this.clr,this.content,this.img,this.headcolor,this.heading,Key key}) : super(key: key);
String  content;
String heading;
String img;
Color headcolor;
Color clr;
@override
Widget build(BuildContext context) {
return Container(
//color: clr,
height: MediaQuery.of(context).size.height*1,

child: Stack(
children: [
BackdropFilter(filter: ImageFilter.blur(sigmaX:0, sigmaY: 0),
child: Center(child: Image.asset(
img,
fit: BoxFit.cover, // Make sure the image covers the whole screen
width: double.infinity,
height: double.infinity,
),),),

SingleChildScrollView(

child: Column(
children: [
const SizedBox(height: 10),
Padding(
padding: const EdgeInsets.only(
left: 12,
right: 12,
),
child:FadeAnimation(1.5, Text(
heading,
style: GoogleFonts.poppins(
fontWeight: FontWeight.bold,
color: headcolor,
fontSize: 24.0),
// style: TextStyle(
//     fontWeight: FontWeight.bold,
//     color: Color.fromARGB(255, 124, 20, 20)),
), )

),
SizedBox(height: 20,),
Container(
color: Color(0x86000000),
child: Padding(
padding: const EdgeInsets.only(
top: 20,
left: 20,
right: 20,
bottom: 20,
),
child:FadeAnimation(1.5, Text( content,
style: GoogleFonts.poppins(
fontSize: 16,
height: 2,
color: Colors.white,

),
),)

),
),
],
),
),
],
),
);
}
}

