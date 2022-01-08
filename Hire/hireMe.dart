import 'package:auto_size_text/auto_size_text.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Hire/email.dart';
import 'package:portfolio/NavBar/appBarActions.dart';
import 'package:portfolio/NavBar/navBar.dart';
import 'package:portfolio/colors%20&%20theme/themeProvider.dart';
import 'package:provider/provider.dart';

class HireMe extends StatefulWidget {
  @override
  _HireMeState createState() => _HireMeState();
}

class _HireMeState extends State<HireMe> {
  @override
  Widget build(BuildContext context) {
    TextEditingController fullName = TextEditingController();
    TextEditingController Email = TextEditingController();
    TextEditingController Message = TextEditingController();
    final _formKey = GlobalKey<FormState>();

    bool smallScreen = MediaQuery.of(context).size.width < 850;
    var theme = Provider.of<ThemeChanger>(context, listen: true).getTheme;
    bool isScreenWide = MediaQuery.of(context).size.width >= 850;
    double contextHeight = MediaQuery.of(context).size.height;
    double contextWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: theme.backgroungTheme,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: theme.bordertheme,
        ),
        automaticallyImplyLeading: isScreenWide ? false : true,
        backgroundColor: theme.backgroungTheme,
        elevation: 0,
        title: isScreenWide
            ? Align(
                alignment: Alignment.bottomLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/');
                  },
                  style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent)),
                  child: AutoSizeText(
                    "Ktbatou",
                    maxLines: 1,
                    style: GoogleFonts.courgette(
                      fontSize: isScreenWide ? 32 : 24,
                      color: theme.headerTheme,
                      //  fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              )
            : Container(),
        toolbarHeight: contextHeight * 0.06,
        actions: <Widget>[ActionBar(rout: 'Hire')],
      ),
      drawer: Drawer(child: NavBar()),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(top: contextHeight * 0.04),
                  child: Text('Contact Me',
                      style: GoogleFonts.poppins(
                          fontSize: isScreenWide ? 36 : 24,
                          color: theme.headerTheme))),
              Container(
                padding: EdgeInsets.only(top: contextHeight * 0.04),
                width: isScreenWide ? contextWidth * 0.6 : contextWidth * 0.42,
                child: TextFormField(
                  controller: fullName,
                  style: TextStyle(color: theme.textTheme),
                  maxLength: 100,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: theme.bordertheme),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide:
                          BorderSide(width: 1, color: theme.bordertheme),
                    ),
                    labelText: 'Full Name',
                    labelStyle: TextStyle(color: theme.textTheme),
                    counterStyle: TextStyle(color: Colors.grey),
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: contextHeight * 0.04),
                width: isScreenWide ? contextWidth * 0.6 : contextWidth * 0.42,
                child: TextFormField(
                  controller: Email,
                  style: TextStyle(color: theme.textTheme),

                  /*   maxLength: 100,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,*/
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: theme.bordertheme),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide:
                          BorderSide(width: 1, color: theme.bordertheme),
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: theme.textTheme),
                    counterStyle: TextStyle(color: Colors.grey),
                  ),
                  validator: (String? value) {
                    final bool isValid = EmailValidator.validate(value!);
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    } else if (isValid == false) return 'Invalid Email';
                    return null;
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: contextHeight * 0.04),
                width: isScreenWide ? contextWidth * 0.6 : contextWidth * 0.42,
                child: TextFormField(
                  controller: Message,
                  style: TextStyle(color: theme.textTheme),
                  maxLength: 500,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  maxLines: contextHeight < 850 ? 6 : 10,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: theme.bordertheme),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide:
                          BorderSide(width: 1, color: theme.bordertheme),
                    ),
                    labelText: 'Message',
                    labelStyle: TextStyle(color: theme.textTheme),
                    counterStyle: TextStyle(color: Colors.grey),
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                  width: isScreenWide ? 180 : 150,
                  // height: isScreenWide ? 30 : 25,
                  padding: EdgeInsets.only(top: isScreenWide ? 50 : 30),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shadowColor:
                            MaterialStateProperty.all<Color>(theme.shadow),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            theme.backgroungTheme),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(
                                      color: theme.bordertheme,
                                    )))),
                    child: Text('Send Message',
                        style:
                            TextStyle(color: theme.headerTheme, fontSize: 16)),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        senEmail(
                            email: Email.text,
                            name: fullName.text,
                            msg: Message.text);
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              backgroundColor: Colors.lightGreen,
                              content:
                                  Text('The message was sent successfully')),
                        );
                        Navigator.of(context).pushNamed('/');
                      }
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
