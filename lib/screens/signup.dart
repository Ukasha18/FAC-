import 'dart:ui';

import 'package:FAC/screens/schedule.dart';
import 'package:flutter/material.dart';
import 'package:FAC/animation/FadeAnimation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'Signup_glassBox.dart';
import 'homepage.dart';
final _borderRadius = BorderRadius.circular(20);


class SignupPage extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  String _name;
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: GNav(rippleColor: Colors.red,
        color: Colors.black,
        tabBackgroundColor: Colors.red.withOpacity(0.1),
        tabs: [
          GButton(icon: Icons.home,text: 'Home',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dashboard()),
              );
            },
          ),
          GButton(icon: Icons.schedule,text: 'Schedule',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => schedule()),
              );
            },),
          GButton(icon: Icons.person,text: 'Register',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignupPage()),
              );
            },),
        ],
      ),

      body:
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/7070726.jpg'),
              fit: BoxFit.cover,)
      ),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Image(image: AssetImage('assets/1112.png'),width: 200,color: Colors.red,
              height: 200,),

            FadeAnimation(1.2,
                Container(
                  height: 500,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(''),

                      )
                  ),

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
                                                            validator: (String value) {
                                                              if (value.isEmpty) {
                                                                return "Please Enter name";
                                                              }
                                                              return null;
                                                            },
                                                            onSaved: (String name) {
                                                              _name = name;
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),

                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: TextFormField(
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
                                                        validator: (value) {
                                                          if (value == null || value.isEmpty) {
                                                            return "Please enter your email address";}
                                                          else if(!value.contains("@")||!value.contains(".")){
                                                            return "Email format is invalid";
                                                          }
                                                          return null;
                                                        },
                                                        onSaved: (email){
                                                          _email = email;
                                                        },
                                                      ),
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
                                                        labelText: 'Country',
                                                        labelStyle: GoogleFonts.poppins(color: Colors.white),
                                                      ),
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
                                                      validator: (value) {
                                                        if (value.isEmpty) {
                                                          return 'Please enter your password';
                                                        } else if (value.length < 6) {
                                                          return 'Password should be at least 6 characters long';
                                                        }
                                                        return null;
                                                      },
                                                      onSaved: (value) {
                                                        _password = value;
                                                      },
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
                if (_formKey.currentState.validate()) {_formKey.currentState.save();
                  if (_name == null || _name.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please enter your name'),
                      ),
                    );
                  } else if (_email == null || _email.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please enter your email address'),
                      ),
                    );
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
                  } else {
                    // Registration logic
                    _formKey.currentState.save();
                    print('Registration successful for $_name ($_email)');
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Registration successful for $_name ($_email)'),
                      ),
                    );
                  }
                }


            )),
          ],

        ),

      ),

    );
  }
}



