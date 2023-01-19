import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images = [
    'assets/1.jpeg',
    'assets/2.jpeg',
    'assets/3.jpeg',
    'assets/4.jpeg',
    'assets/5.jpeg',
    'assets/6.jpeg',
    'assets/7.jpeg',
  ];
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Image Slider app'),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width / 4,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent, width: 3),
                  borderRadius: BorderRadius.circular(12)),
              height: MediaQuery.of(context).size.width / 1.2,
              width: MediaQuery.of(context).size.width / 1.2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(9),
                child: Image.asset(
                  images[i],
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width / 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      i--;
                      if (i < 0) {
                        i = images.length - 1;
                      }
                    });
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.blueAccent,
                  )),

              SizedBox(
                width: MediaQuery.of(context).size.width / 8,
              ),
              //left button

              //right button
              IconButton(
                  onPressed: () {
                    setState(() {
                      i++;
                      if (i == images.length) {
                        i = 0;
                      }
                    });
                  },
                  icon:
                      Icon(Icons.arrow_forward_ios, color: Colors.blueAccent)),
            ],
          ),
        ],
      ),
    );
  }
}
