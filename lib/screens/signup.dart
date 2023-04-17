import 'dart:ui';

import 'package:FAC/screens/schedule.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:FAC/animation/FadeAnimation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'Signup_glassBox.dart';
import 'alpha.dart';
import 'homepage.dart';
final _borderRadius = BorderRadius.circular(20);


class SignupPage extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  // String _name='';
  // String _email='';
  // String _password='';
  // String _address='';
  // String _confrom_password='';

  TextEditingController _name= TextEditingController();
  TextEditingController _email= TextEditingController();
  TextEditingController _password= TextEditingController();
  TextEditingController _address= TextEditingController();
  TextEditingController _confrom_password= TextEditingController();


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // bottomNavigationBar: GNav(rippleColor: Colors.red,
      //   color: Colors.black,
      //   tabBackgroundColor: Colors.red.withOpacity(0.1),
      //   tabs: [
      //     GButton(icon: Icons.home,text: 'Home',
      //       onPressed: () {
      //         // Navigator.push(
      //         //   context,
      //         //   MaterialPageRoute(builder: (context) => Dashboard()),
      //         // );
      //       },
      //     ),
      //     GButton(icon: Icons.schedule,text: 'Schedule',
      //       onPressed: () {
      //         // Navigator.push(
      //         //   context,
      //         //   MaterialPageRoute(builder: (context) => schedule()),
      //         // );
      //       },),
      //     GButton(icon: Icons.person,text: 'Register',
      //       onPressed: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(builder: (context) => SignupPage()),
      //         );
      //       },),
      //   ],
      // ),

      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/7070726.jpg'),
                fit: BoxFit.cover,)
          ),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Image(image: AssetImage('assets/1112.png'),width: 200,color: Colors.red,
                height: size.height*0.1,),

              FadeAnimation(1.2,
                  Container(
                    height: 500,
                    // decoration: BoxDecoration(
                    //     image: DecorationImage(
                    //       image: AssetImage(''),
                    //
                    //     )
                    // ),

                    child:
                    ClipRRect(
                        borderRadius: _borderRadius,
                        child: Container(
                            width: 350,
                            height: 520,
                            child: Stack(
                                children: [
                                  //blur effect
                                  BackdropFilter(filter: ImageFilter.blur(
                                    sigmaX: 15,
                                    sigmaY: 15,
                                  ),
                                    child: Container(),
                                  ),SingleChildScrollView(
                                    child:
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey.withOpacity(0.2)),
                                        borderRadius: _borderRadius,
                                        gradient: LinearGradient(begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Colors.grey.withOpacity(0.4),
                                            Colors.grey.withOpacity(0.1),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                  Center(
                                    child: Form(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Column(
                                            children: <Widget>[
                                              SizedBox(height: size.height*0.035,),
                                              FadeAnimation(1, Text("Sign Up", style: GoogleFonts.poppins(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white
                                              ),)),
                                              SizedBox(height: 5,),
                                              FadeAnimation(1.2,
                                                  Text("Create Your Account, Its Free", style: GoogleFonts.poppins(
                                                      fontSize: 15,
                                                      color: Colors.white
                                                  ),)),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 10),
                                            child: SingleChildScrollView(child:
                                            Column(
                                              children: <Widget>[

                                                Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                                  child: SingleChildScrollView(child:
                                                  Column(
                                                    children: <Widget>[
                                                      Form(
                                                        key: _formKey,
                                                        child: Column(
                                                          children: <Widget>[
                                                            TextFormField(
                                                              style: TextStyle(color: Colors.white),
                                                              decoration: InputDecoration(
                                                                enabledBorder: UnderlineInputBorder(
                                                                  borderSide: BorderSide(color: Colors.white),
                                                                ),
                                                                focusedBorder: UnderlineInputBorder(
                                                                  borderSide: BorderSide(color: Colors.white),
                                                                ),
                                                                labelText: 'First name',
                                                                labelStyle: GoogleFonts.poppins(color: Colors.white),
                                                              ),
                                                              controller: _name,
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      TextFormField(
                                                        style: TextStyle(color: Colors.white),
                                                        decoration: InputDecoration(
                                                          enabledBorder: UnderlineInputBorder(
                                                            borderSide: BorderSide(color: Colors.white),
                                                          ),
                                                          focusedBorder: UnderlineInputBorder(
                                                            borderSide: BorderSide(color: Colors.white),
                                                          ),
                                                          labelText: 'Email',
                                                          labelStyle: GoogleFonts.poppins(color: Colors.white),
                                                        ),
                                                        controller: _email,
                                                      ),
                                                      SizedBox(height: 20,),
                                                      TextFormField(
                                                        style: TextStyle(color: Colors.white),
                                                        decoration: InputDecoration(
                                                          enabledBorder: UnderlineInputBorder(
                                                            borderSide: BorderSide(color: Colors.white),
                                                          ),
                                                          focusedBorder: UnderlineInputBorder(
                                                            borderSide: BorderSide(color: Colors.white),
                                                          ),
                                                          labelText: 'Address',
                                                          labelStyle: GoogleFonts.poppins(color: Colors.white),
                                                        ),
                                                        controller: _address,
                                                      ),
                                                      SizedBox(height: 20,),
                                                      TextFormField(
                                                        style: TextStyle(color: Colors.white),
                                                        decoration: InputDecoration(
                                                          enabledBorder: UnderlineInputBorder(
                                                            borderSide: BorderSide(color: Colors.white),
                                                          ),
                                                          focusedBorder: UnderlineInputBorder(
                                                            borderSide: BorderSide(color: Colors.white),
                                                          ),
                                                          labelText: 'Password',
                                                          labelStyle: GoogleFonts.poppins(color: Colors.white),
                                                        ),
                                                        obscureText: true,
                                                        controller: _password,
                                                      ),
                                                      SizedBox(height: 20,),
                                                      TextFormField(
                                                        style: TextStyle(color: Colors.white),
                                                        decoration: InputDecoration(
                                                          enabledBorder: UnderlineInputBorder(
                                                            borderSide: BorderSide(color: Colors.white),
                                                          ),
                                                          focusedBorder: UnderlineInputBorder(
                                                            borderSide: BorderSide(color: Colors.white),
                                                          ),
                                                          labelText: 'Confirm Password',
                                                          labelStyle: GoogleFonts.poppins(color: Colors.white),
                                                        ),
                                                        obscureText: true,
                                                        controller: _confrom_password,
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
                                ]
                            )
                        )
                    ),
                  )),
              SizedBox(height: 10 ,),
              Container(child: MaterialButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  elevation: 5.0,
                  minWidth: 200.0,
                  height: 55,
                  color: Colors.red,
                  child: Text('Register',
                    style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16.0, color: Colors.white)),),
                  onPressed: () {
                    // FirebaseFirestore.instance.collection('Academy').doc('FmiTdDWjBOWPm3VufvsR').get().then((value) {
                    //  String a;
                    //  a =value.get('email');
                    //  print(":::::::::::::::::::; $a $_email $_password");
                    // });

                    // else{
                    //  if (_formKey.currentState.validate()) {
                    //    _formKey.currentState.save();
                    if (_name == null || _name.text.trim().toString().isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Please enter your name'),
                        ),
                      );
                    } else if (_email == null || _email.text.trim().toString().isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Please enter your email address'),
                        ),
                      );
                    }
                    else if (_address == null || _address.text.trim().toString().isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Please enter your address'),
                        ),
                      );
                    } else if (_confrom_password == null ||  _confrom_password.text.trim().toString().isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Please enter password'),
                        ),
                      );
                    } else if (_password == null || _password.text.trim().toString().isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Please enter confirm password'),
                        ),
                      );
                    }else if (!_email.text.trim().toString().contains('@') || !_email.text.trim().toString().contains('.')) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Email format is invalid'),
                        ),
                      );
                    }
                    else{
                      FirebaseFirestore.instance.collection('Academy').doc('FmiTdDWjBOWPm3VufvsR').get().then((value) {
                        String a;
                        a =value.get('email');
                        print(":::::::::::::::::::; $a ");
                      });
                    }
                    // else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(_email)) {
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     SnackBar(
                    //       content: Text('Please enter a valid email address'),
                    //     ),
                    //   );
                    // }
                    // else if (_name == '') {
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     // SnackBar(
                    //     //   content: Text('Name already taken'),
                    //     // ),
                    //   );
                    // } else {
                    //   // Registration logic
                    //   _formKey.currentState.save();
                    //   print('Registration successful for $_name ($_email)');
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     SnackBar(
                    //       content: Text('Registration successful for $_name ($_email)'),
                    //     ),
                    //     );
                    //  }
                    //}
                  }
              )
              ),
            ],

          ),

        ),
      ),

    );
  }
}











class ScreenMain extends StatefulWidget {
  ScreenMain({Key key, }) : super(key: key);

  @override
  State<ScreenMain> createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {

  TextEditingController searchController=TextEditingController();
  int curentindex = 0;

  List<Widget> screens;

  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {});
    screens = <Widget>[
      Dashboard(),
      schedule(),
      SignupPage()
    ];

  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    // final storageFutureProvider = Provider.of<StorageFutureProvider>(context);
    // final providerQrCode = Provider.of<ProviderQrCode>(context);

    return Scaffold(
      body: IndexedStack(
        index: curentindex,
        children: screens,
      ),

      // Positioned(
      //   child: Padding(
      //     padding: EdgeInsets.symmetric(horizontal: 20.w),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //
      //         SizedBox(
      //           height: 20.h,
      //         ),
      //
      //         SizedBox(
      //           height: 45.h,
      //           child: CsMainInfoTexttField(
      //             hint: "Search",
      //             controller: searchController,
      //             backClr: inputBackColor(context),
      //             fontClr: inputFontColor(context),
      //             suffix: Icon(
      //               Icons.search,
      //               color: inputFontColor(context),
      //             ),
      //           ),
      //         ),
      //
      //
      //       ],
      //     ),
      //   ),
      // ),


      //   ],
      // ),

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: curentindex,
          onTap: (index) {
            setState(() {
              curentindex = index;
              print("use less $curentindex");
            });
            // if (index != 4) {
            //   //if (providerQrCode.getActiveValue) {
            //   if (a==1) {
            //     setState(() {
            //       curentindex = index;
            //     });
            //   } else {
            //     if (index != 3) {
            //       setState(() {
            //         curentindex = index;
            //       });
            //     }else {
            //       setState(() {
            //         curentindex = index;
            //       });
            //     }
            //   }
            // }
            // else {
            //   moreBottomSheet(context, storageFutureProvider);
            // }
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                label: 'Home',
                icon: Column(
                  children: [
                    Icon(Icons.home,color: curentindex==0? Colors.red : Colors.grey, ),
                    Text("Home",style: GoogleFonts.poppins(fontSize: 10,color: curentindex==0? Colors.red : Colors.grey,),),
                  ],
                )),

            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                label: 'Schedule',
                icon: Column(
                  children: [
                    Icon(Icons.schedule,color: curentindex==1? Colors.red : Colors.grey, ),
                    Text("Schedule",style: GoogleFonts.poppins(fontSize: 10,color: curentindex==1? Colors.red : Colors.grey,),),
                  ],
                )),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                label: 'Register',
                icon: Column(
                  children: [
                    Icon(Icons.person,color: curentindex==2? Colors.red : Colors.grey, ),
                    Text("Register",style: GoogleFonts.poppins(fontSize: 10,color: curentindex==2? Colors.red : Colors.grey,),),
                  ],
                )),

          ]),
    );
  }

}