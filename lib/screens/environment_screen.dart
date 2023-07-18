import 'package:flutter/material.dart';

class Environment extends StatelessWidget {
  const Environment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 161, 192),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 236, 161, 192),
        title: const Text(
                  "   البيئة المحيطة بالأم ",
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontSize: 23,
              fontFamily: 'cairo'),
        ),
      ),

      body: Column(
        children: [
        Card(
                  elevation: 20,
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
                  
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  
                    child:const Padding(
                      padding: EdgeInsets.all(30),
                      child: Text(
                        'يجب توفير بيئة هادئة جيدة التهوية لا تحتوى على أضائة عالية فيجب ان تحاولى بقدر الامكان أن تجعلى البيئة المحيطة بكى هادئة ومريحة والاضائة به خافته. ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Color.fromARGB(255, 236, 161, 192),
                            fontFamily: 'cairo', ),
                          textDirection: TextDirection.rtl, ),
                    ),
                    
                  
                ),
        ],
      ),
    );
  }
}