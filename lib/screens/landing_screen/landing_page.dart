
import 'package:certicode_app/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // navigator
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  const LoginPage()),
          );
        },
        label: Text(
          'Register now !',
          style: GoogleFonts.inter(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 122, 165, 210),
      ),
      backgroundColor: const Color.fromARGB(255, 48, 56, 65),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(0,
                      2), // Adjust the offset to control the shadow's direction
                  blurRadius:
                      6, // Adjust the blur radius to control the spread of the shadow
                ),
              ],
              image: DecorationImage(
                image: NetworkImage(
                 "https://st.depositphotos.com/1056393/4711/i/600/depositphotos_47113571-stock-photo-speaker-at-business-conference-and.jpg",
                ),
                fit: BoxFit.cover, // Adjust the fit as needed
              ),
              borderRadius: BorderRadius.only(
                bottomLeft:
                    Radius.circular(80.0), // Adjust the radius as needed
              ),
            ),

            height: 770, // Adjust the height as needed
          ),
          Container(
            color:
                Colors.grey.withOpacity(0.4), // Background color with opacity
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10), // Add space between image and text
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment:
                      MainAxisAlignment.start, // Align text to the left
                  children: <Widget>[
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'Certi',
                          style: GoogleFonts.inter(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              'Code',
                              textStyle: GoogleFonts.inter(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(
                                    255, 94, 121, 155), // Change the color here
                              ),
                              speed: const Duration(
                                  milliseconds:
                                      100), // Adjust the typing speed if needed
                            ),
                          ],
                          isRepeatingAnimation: true,
                          repeatForever: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 200, // Adjust the width as needed
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Empower Your Achievements with CertiCode. Redefining recognition in a click',
                            style: GoogleFonts.karla(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
