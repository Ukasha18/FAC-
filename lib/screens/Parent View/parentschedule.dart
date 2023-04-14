import 'package:FAC/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class Parentschedule extends StatelessWidget {
  const Parentschedule({Key key}) : super(key: key);

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
            onTap: () {
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.arrow_back_outlined,
            ),
            title: const Text(
              'Back',
            ),
            onTap: (){Navigator.pop(context);
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
          "Schedule",
          selectionColor: Colors.red,
        ),
        actions: [
        ],
      ),
      body: SingleChildScrollView(
        child: Container(decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/ss.jpg'),
              fit: BoxFit.cover,)
        ),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [

              Padding(
                padding: EdgeInsets.all(20.0),
                child: Container(
                  height: 115,
                  width:MediaQuery.of(context).size.width,
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
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                        child: Container(
                          height: 25,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Text("FAC Academy Timing",style: GoogleFonts.poppins(fontSize: 10.5,color: Colors.grey,fontWeight: FontWeight.w500),),
                              Spacer(),
                              Container(
                                height: 17,
                                width: 17,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0),
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                      offset: const Offset(0, 2), // changes position of shadow
                                    ),
                                  ],

                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black,
                      ),

                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 78,
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text("9:00PM",style: GoogleFonts.poppins(fontSize: 12,color: Colors.red,fontWeight: FontWeight.w500),),
                                  Text("ENTRY",style: GoogleFonts.poppins(fontSize: 10.5,color: Colors.black,fontWeight: FontWeight.w500),),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Text("1 Hours",style: GoogleFonts.poppins(fontSize: 12,color: Colors.red,fontWeight: FontWeight.w500),),
                                  Text("BREAK",style: GoogleFonts.poppins(fontSize: 10.5,color: Colors.black,fontWeight: FontWeight.w500),),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Text("3:00PM",style: GoogleFonts.poppins(fontSize: 12,color: Colors.red,fontWeight: FontWeight.w500),),
                                  Text("EXIT",style: GoogleFonts.poppins(fontSize: 10.5,color: Colors.black,fontWeight: FontWeight.w500),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(20.0),
                child: Container(
                  height: 305,
                  width:MediaQuery.of(context).size.width,
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
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                        child: Container(
                          height: 25,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Text("Match Days",style: GoogleFonts.poppins(fontSize: 10.5,color: Colors.grey,fontWeight: FontWeight.w500),),
                              const Spacer(),
                              Container(
                                height: 17,
                                width: 17,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0),
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                      offset: const Offset(0, 2), // changes position of shadow
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 77,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 20),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text("FAC",style: GoogleFonts.poppins(fontSize: 12,color: Colors.red,fontWeight: FontWeight.w500),),

                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Text("VS",style: GoogleFonts.poppins(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w500),),


                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Text("RCXII",style: GoogleFonts.poppins(fontSize: 12,color: Colors.red,fontWeight: FontWeight.w500),),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 77,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 20),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text("FAC",style: GoogleFonts.poppins(fontSize: 12,color: Colors.red,fontWeight: FontWeight.w500),),

                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Text("VS",style: GoogleFonts.poppins(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w500),),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Text("SPAXI",style: GoogleFonts.poppins(fontSize: 12,color: Colors.red,fontWeight: FontWeight.w500),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 77,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 20),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text("FAC",style: GoogleFonts.poppins(fontSize: 12,color: Colors.red,fontWeight: FontWeight.w500),),

                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Text("VS",style: GoogleFonts.poppins(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w500),),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Text("RTAXI",style: GoogleFonts.poppins(fontSize: 12,color: Colors.red,fontWeight: FontWeight.w500),),
                                ],
                              ),

                            ],

                          ),
                        ),
                      ),

                    ],
                  ),

                ),
              ),

              Padding(
                padding: EdgeInsets.all(20.0),
                child: Container(
                  height: 115,
                  width:MediaQuery.of(context).size.width,
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
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                        child: Container(
                          height: 25,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Text("Tournaments",style: GoogleFonts.poppins(fontSize: 10.5,color: Colors.grey,fontWeight: FontWeight.w500),),
                              Spacer(),
                              Container(
                                height: 17,
                                width: 17,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0),
                                      spreadRadius: 0,
                                      blurRadius: 1,
                                      offset: const Offset(0, 2), // changes position of shadow
                                    ),
                                  ],

                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black,
                      ),

                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 78,
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
                          child: Row(
                            children: [
                              Column(
                                children: [


                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Text("Starting from 29 May",style: GoogleFonts.poppins(fontSize: 12,color: Colors.red,fontWeight: FontWeight.w500),),

                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [


                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
