import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.deepPurple),
      title: 'Custom Fonts',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Font'), backgroundColor: Colors.deepPurple,),
      body: Center(child: InkWell(
        onTap: (){
          Text('Clicked');
        },
        child: Container(
          height: 150,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(5)
          ),
          child: const Center(
            child: Text('Hello World', style:
                TextStyle(fontSize: 45, fontWeight: FontWeight.w600,fontFamily: 'customFontsPrimary', color: Colors.white),),
            ),
          ),
      )
      ),
    );
  }
}