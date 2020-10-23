import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool viewPass;
  bool inputChange;
  @override
  void initState() {
    super.initState();
    viewPass = true;
    inputChange = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF18172B),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(top: 80, left: 24, right: 24),
        child: ListView(
          children: [
            Container(
              child: Text(
                "Login",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 24),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: Text(
                "Access account",
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.poppins(color: Color(0xFF9b97b6), fontSize: 14),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 148,
                    height: 56,
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF6D61F2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: FaIcon(FontAwesomeIcons.google),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 148,
                    height: 56,
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF6D61F2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: FaIcon(FontAwesomeIcons.facebookF),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              child: Text(
                "or Login with Email",
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.poppins(color: Color(0xFF9b97b6), fontSize: 14),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                fillColor: Color(0xFF1F1F30),
                filled: true,
                border: InputBorder.none,
                labelText: 'Email',
                labelStyle: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(
                      color: Color(0xFF1F1F30),
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(
                      color: Color(0xFF1F1F30),
                    )),
              ),
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 50,
            ),
            Stack(
              children: [
                TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    obscureText: viewPass,
                    decoration: InputDecoration(
                      fillColor: Color(0xFF1F1F30),
                      filled: true,
                      border: InputBorder.none,
                      labelText: 'Password',
                      labelStyle: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide(
                            color: Color(0xFF1F1F30),
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: BorderSide(
                            color: Color(0xFF1F1F30),
                          )),
                    ),
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    onChanged: (input) {
                      setState(() {
                        input.isEmpty
                            ? inputChange = true
                            : inputChange = false;
                      });
                    }),
                inputChange
                    ? Container()
                    : Positioned(
                        top: 8,
                        right: 20,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              this.viewPass = !viewPass;
                            });
                          },
                          icon: viewPass
                              ? FaIcon(
                                  FontAwesomeIcons.solidEyeSlash,
                                  size: 16,
                                )
                              : FaIcon(
                                  FontAwesomeIcons.solidEye,
                                  size: 16,
                                ),
                          color: Colors.grey,
                        ),
                      ),
              ],
            ),
            SizedBox(
              height: 64,
            ),
            Container(
              height: 64,
              child: Material(
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF6D61F2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "Sign In",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'Don’t have an account?',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF9B97B6),
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "  Register",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF6E80B0),
                        ),
                      )
                    ])),
          ],
        ),
      ),
    );
  }
}
