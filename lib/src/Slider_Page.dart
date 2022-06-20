import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  String _image = "one";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[50],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Slider",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                )),
            const SizedBox(
              height: 20,
            ),
            Image.asset("images/$_image.png"),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _image = "one";
                        });
                      },
                      child: Image.asset("images/one.png")),
                ),
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _image = "two";
                        });
                      },
                      child: Image.asset(
                        "images/two.png",
                      )),
                ),
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _image = "three";
                        });
                      },
                      child: Image.asset("images/three.png")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
