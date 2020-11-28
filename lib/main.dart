//Using dart and flutter create a flutter application with image on left and product description on the right which is more likely to look like a product selection page
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductSelectionPage(),
    );
  }
}

class ProductSelectionPage extends StatefulWidget {
  @override
  _ProductSelectionPageState createState() => _ProductSelectionPageState();
}

class _ProductSelectionPageState extends State<ProductSelectionPage> {
  var titleList = ["Flutter","Python","Dart","Java"];
  var descList = [
    "Flutter is an open-source UI software development kit created by Google and is used to develop applications for Android, iOS, Linux, Mac, Windows, Google Fuchsia, and the web from a single codebase.",
    "Python is a general-purpose coding language used for software development which includes back end development, software development and data science",
    "Dart is a client-optimized programming language for apps on multiple platforms and is developed by Google and is used to build mobile, desktop, server, and web applications.",
    "Java is one of the most popular programming languages used to create Web applications and platforms and was designed for flexibility, allowing developers to write code that would run on any machine."
  ];
  var imgList = [
    "assets/flutter_img.png",
    "assets/python_img.png",
    "assets/dart_img.png",
    "assets/java_img.png"
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        title: Text('Languages Market',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
          itemCount: imgList.length,
          itemBuilder: (context,index){
            return Card(
              child: Row(
                children: [
                  Container(
                    width: 100.0,
                    height: 100.0,
                    child: Image.asset(imgList[index]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(titleList[index],style: TextStyle(fontSize: 25.0,color: Colors.grey,fontWeight: FontWeight.bold),),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: width,
                          child: Text(descList[index],style: TextStyle(color: Colors.grey,fontSize: 15.0),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
      ),
    );
  }
}



