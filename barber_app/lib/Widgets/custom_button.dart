import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final  title;
  
  final onPressed;
  final color;
  final Style;

  const CustomButton({
     this.title,
   
    required this.onPressed,
    this.color,
    this.Style,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: RaisedButton(
          color: color,
          onPressed: onPressed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
         
             child: Container(
                    
               child: Padding(
                 padding: const EdgeInsets.only(left: 80,right:80,top: 15,bottom: 15),
                 child: Text(
                    title,
                    style: Style,
                    
                  ),
               ),
             ),
        
        
        ),
      ),
    );
  }
}
