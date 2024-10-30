import"package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aspect Ratio Demo",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text("Aspect Ratio",
          style: TextStyle(
            fontSize: 40,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w900,
          ),
          ),
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.blue,
            child: Image.network("https://cdn.pixabay.com/photo/2017/06/23/18/25/hat-2435486_640.png",
           // fit: BoxFit.cover,
             fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}