import 'package:flutter/material.dart';


import 'constans.dart';
  class Reused{
     String number="";
  Widget column(String button1 ,String button2,String button3 ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        container(button1),
        container(button2),
        container(button3),
        //  container("")
      ],

    );
  }
  Widget container(String chlidofcontaner){
    return Container(
      alignment: Alignment.center,
      margin: margin(),
      decoration:  boxdecoration(),
      child: button(chlidofcontaner,""),

    );
  }
  Widget button(
      String data,
      String enteredText1,

      ){return ElevatedButton(onPressed: (){

    setState(){
    number+=data;

  }
  },
    style:ButtonStyle (
        backgroundColor:  MaterialStateProperty.all(Colors.black)), child:  Text(data),
  )

  ;}

}
