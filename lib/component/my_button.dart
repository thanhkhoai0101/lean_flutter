import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.text, this.onTap});

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient:const  LinearGradient(colors: [
            Color.fromRGBO(156, 63, 228, 1),
            Color.fromRGBO(198, 86, 71, 1),
          ])
        ),
        child: Text(text,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
      ),
    );
  }
}

