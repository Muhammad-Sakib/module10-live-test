import 'package:flutter/material.dart';

class TextStylingScreen extends StatelessWidget {
  String title = "Flutter Text Styling";
  String subtitle = "Experiment with text styles";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Styling App"),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "$title",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "$subtitle",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 32,
                child: TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("You clicked the button!"),
                        backgroundColor: Colors.blue[300],
                      ));
                    },
                    child: Text(
                      "Click Me",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 92, 119, 130)),
                    ))),
            SizedBox(
              height: 20,
            ),
            Text.rich(TextSpan(
                text: 'Welcome to ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                children: <InlineSpan>[
                  TextSpan(
                    text: 'Flutter!',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  )
                ])),
          ],
        ),
      ),
    );
  }
}
