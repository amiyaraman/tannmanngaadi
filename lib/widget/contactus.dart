import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:contactus/contactus.dart';
import 'package:hobbmovieapi/screens/loginscreen.dart';

class ContactUsWidget extends StatefulWidget {
  const ContactUsWidget({Key? key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUsWidget> {
  var Msg = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ContactUs(
              companyName: 'Tann Mann Gaddi',
              textColor: Colors.black,
              cardColor: Colors.white,
              companyColor: Colors.orange,
              taglineColor: Colors.orange,
              email: 'wecare@thetannmanngaadi.org',
              instagram: 'thetannmaangaadi',
              twitterHandle: 'TtMGaadi',
              facebookHandle: 'The-Tann-Mann-Gaadi-101514085248498',
              linkedinURL: 'the-tann-mann-gaadi',
              phoneNumber: '+91- 934 192 1581',
            ),
            Container(
              child: Text(
                "Send Message to us directly ",
                style: TextStyle(
                    fontSize: 30, color: Colors.orange, fontFamily: 'Nunito'),
              ),
            ),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      controller: Msg,
                      maxLines: 8,
                      decoration: InputDecoration.collapsed(
                          hintText: "Enter your text here"),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                          onPressed: () {
                            if (Msg.text.isEmpty) {
                              Fluttertoast.showToast(
                                  msg: "Plese Fill the field");
                            } else {
                              CollectionReference userCollection =
                                  FirebaseFirestore.instance
                                      .collection(DateTime.now().toString());
                              userCollection
                                  .doc(FirebaseAuth.instance.currentUser!.uid)
                                  .set({'Message': 'Something Something'});
                            }
                          },
                          child: Text("Send")))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: 0,
                  top: MediaQuery.of(context).size.height / 7,
                  right: 0,
                  bottom: 0),
              child: ElevatedButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text("Log Out")),
            ),
          ],
        ),
      ),
    );
  }
}
