import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  var text = new RichText(
    text: new TextSpan(
      style: new TextStyle(
        fontSize: 24.0,
        color: Colors.black,
      ),
      children: <TextSpan>[
        new TextSpan(text: "We are a "),
        new TextSpan(
            text: '"Not for Profit" ',
            style: new TextStyle(fontWeight: FontWeight.bold)),
        new TextSpan(text: 'trust venture building Wellness on wheels '),
        new TextSpan(
            text: '(The Tann Mann Gaadi) ',
            style: new TextStyle(fontWeight: FontWeight.bold)),
        new TextSpan(
            text:
                'to address the serious problem of open defecation which is a major health risk for all in developing countries.\nWe are in the mission of integrating technology with our social cause.\nWe are in the process of providing a holistic approach to social responsibility keeping health, sensitization, safety and Eco-friendly solutions')
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text(
                "About The Tann Mann Gaadi",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(width: 2.0, color: Colors.orange)),
              child: text,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                "Why Tann Mann Gaadi",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(width: 2.0, color: Colors.orange)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "• Open defecation which is a major health risk globally",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "• Inaccessibility of Hygienic & Safe public conveniences",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "• Un-safe environment for women, children, differently abled & the elderly",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "• Lack of potable and  clean wate",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "• Open defecation which is a major health risk globally",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
