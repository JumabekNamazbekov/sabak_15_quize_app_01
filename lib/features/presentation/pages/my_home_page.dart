import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key
    });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get itemBuilder => null;

  @override
  Widget build(BuildContext context) {
  
    return  Scaffold(
      backgroundColor: const Color(0xff343434),
      appBar: myAppBar(),
      body:   const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Text("Кыргызстанда 7 область барбы?",
         style: TextStyle(
          color: Colors.white,
          fontSize: 32,
           fontWeight: FontWeight.w500
           ),
           textAlign: TextAlign.center,
           ),
        SizedBox(height: 95),

CustomBatton(backgroundColor:
         Color(0xff4CB050), 
         text: 'Туура',
         ),
       CustomBatton(backgroundColor:
         Colors.red, 
         text: 'Туура эмес'),
         SizedBox(height: 80),
    Row(children: [
          Icon(Icons.done,color: Colors.green,size: 40,),
     Icon(Icons.close,color: Colors.red,size:40),
    ],),
       
          ],
        
        ),
      ),
    );
  }








  AppBar myAppBar() {
    return AppBar(centerTitle: true,
    backgroundColor: Colors.white,
      title: const Text(" 7 Тапшырма"),
    );
  }
}

class CustomBatton extends StatelessWidget {
  const CustomBatton({
    Key? key,
    required this.backgroundColor, 
     required this.text, 
  }): super(key : key);

final Color? backgroundColor;
final String text;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          minimumSize: const Size(335, 70),
          shape: RoundedRectangleBorder
          (borderRadius: BorderRadius.circular(10
          ),
          ),
        ),
        onPressed: (){}, 
        child:  Text(

          text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.w500
        ),
        ),
        ),
    );
  }
}