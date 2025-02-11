import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:new_ishank/models/mars.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List data = [];
  String url =
      "https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&page=2&api_key=xMZrxsMhjwJ0zufDcQq6KpfuDBunWJ3DaChvyiGi";

  getData() async {
    var response = await http.get(Uri.parse(url));
    var responseData = json.decode(response.body);
    var myArr = responseData["photos"];
    print(myArr.length.toString());
    int i;
    for (i = 0; i < myArr.length; i++) {
      data.add(myArr[i]["img_src"]);
    }
    print(data);
    // for (element in responseData["photos"]) {
    //   MarsKePhotos ekPhoto =
    //       MarsKePhotos(id: element['id'], url: element["img_src"]);
    //   data.add(ekPhoto);
    // }
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(1),
            width: 20,
            color: Colors.green,
            child: Image.network(data[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {});
      }), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
