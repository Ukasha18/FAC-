import 'package:FAC/screens/Parent%20View/parentschedule.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../login.dart';
import 'childreg.dart';
class Parenthomepage extends StatefulWidget {
  const Parenthomepage({Key key}) : super(key: key);
  @override
  State<Parenthomepage> createState() => _ParenthomepageState();
}

class _ParenthomepageState extends State<Parenthomepage> {
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
              Icons.arrow_back_outlined,
            ),
            title: const Text(
              'Logout',
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
    ),

      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: true,
        title:
        Text(
          "Parent Home",
          selectionColor: Colors.red,
        ),
        actions: [
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChildReg()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(17.0),
                    child: Container(
                      height: 115,
                      width:139,
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
                            Icon(FontAwesomeIcons.addressBook,size: 68,color: Colors.red,),
                            SizedBox(height: 10,),
                            Text("Register Your Child", style: GoogleFonts.poppins(fontSize: 10,color: Colors.grey,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Parentschedule()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(17.0),
                    child: Container(
                      height: 115,
                      width:139,
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
                            SizedBox(height: 15),
                            Icon(FontAwesomeIcons.businessTime,size: 68,color: Colors.red,),
                            SizedBox(height: 10,),
                            Text("Shifts", style: GoogleFonts.poppins(fontSize: 10,color: Colors.grey,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: 5,
                ),


              ],
            ),
          ],
        ),
      ),
    );
  }
}
