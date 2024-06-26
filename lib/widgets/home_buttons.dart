
import 'package:application/helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class button extends StatelessWidget {
  button({this.class_name, this.label, this.icon});

  Widget? class_name;
  String? label;
  Icon? icon;

  @override
  Widget build(BuildContext context) {
       final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * 0.1,
      width: screenWidth * 0.42,
      child: Directionality(
               textDirection: TextDirection.ltr,
        child: ElevatedButton.icon(
          
          style: ButtonStyle(
            elevation:const MaterialStatePropertyAll(5),
            backgroundColor: const MaterialStatePropertyAll(
                Color.fromARGB(255, 236, 161, 192)),
            iconColor: const MaterialStatePropertyAll(Colors.white),
            iconSize:  MaterialStatePropertyAll(
              screenWidth * 0.10,
            ),
            
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
          onPressed: () {
            Get.to(()=>class_name!, transition: Transition.rightToLeftWithFade , duration : Duration(milliseconds: 300));
          },
          icon: icon!,
          label: Text(
            label!,
            style:  TextStyle(
                color: Colors.white,
                fontFamily: 'cairo',
                fontSize: screenWidth * 0.03,
                fontWeight: FontWeight.bold),
            textDirection: Helper().isArabic() ? TextDirection.rtl : TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}
