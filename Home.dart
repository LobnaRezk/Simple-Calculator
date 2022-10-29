import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:untitled2/Shered/constans.dart';
import 'package:math_expressions/math_expressions.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.entered_number}) : super(key: key);

  final String entered_number;

  @override
  State<MyHomePage> createState() => _MyHomePageState(entered_number);
}

class _MyHomePageState extends State<MyHomePage> {
   String   entered_number;


  String operator = '';
  double result = 0;

 static const  Color numberdigit=Colors.black;
  static const Color symboldigit=Colors.grey;

  _MyHomePageState(this.entered_number,   );
  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar(

   title: const Text("Calculator"),
          actions:  [
            IconButton(icon: const Icon(Icons.calculate),
                onPressed: (){

                }
            ),

          ],

//لما يكون الوجت بيقطع الصفحة بالعرض بيكون Column ولو بيطول بيكون Row

        ),
        //bottom: TextButton.icon(onPressed: null, icon: Icon(Icons.abc), label: Text("Lobna")),

        body:SafeArea(
            child:
            Column(children: [
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: Text(
                        entered_number,
                        style: const TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                  flex: 2,

                  child: Card(
                    margin: EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    color:Colors.black,
                    elevation: 0,

                    child:Column(children:[
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,

                          children:[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  alignment:Alignment.center,
                                  margin: margin(),
                                  decoration:  boxdecoration(),
                                  child:button("1"),

                                ),

                                Container(
                                    alignment:Alignment.center,
                                    margin: margin(),
                                    decoration:  boxdecoration(),
                                    child: button("4")),

                                Container(
                                  alignment:Alignment.center,
                                  margin: margin(),
                                  decoration: boxdecoration(),
                                  child:button("7"),),
                                Container(
                                    alignment:Alignment.center,
                                    margin:margin() ,
                                    decoration: boxdecoration(),
                                    child:button("PI")
                                    )



                                    //button("F(x)")),

                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    alignment:Alignment.center,
                                    margin:  margin(),
                                    decoration:boxdecoration(),
                                    child:button("2")),

                                Container(
                                    alignment:Alignment.center,
                                    margin: margin(),
                                    decoration:boxdecoration(),
                                    child: button("5")),

                                Container(
                                    alignment:Alignment.center,
                                    margin:  margin(),
                                    decoration: boxdecoration(),
                                    child:button("8")),
                                Container(
                                  alignment:Alignment.center,
                                  margin:  margin(),
                                  decoration:boxdecoration(),
                                  child:button("0"),

                                ),
                              ],
                            ),
                            Column(

                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  alignment:Alignment.center,
                                  margin: margin(),
                                  decoration:boxdecoration(),
                                  child: button("3"),),

                                Container(
                                  alignment:Alignment.center,
                                  margin:  margin(),
                                  decoration:boxdecoration(),
                                  child: button("6"),),

                                Container(
                                  alignment:Alignment.center,
                                  margin:  margin(),
                                  decoration: boxdecoration(),
                                  child:button("9"),),
                                Container(
                                  alignment:Alignment.center,
                                  margin:  margin(),
                                  decoration: boxdecoration(),
                                  child:button("."),

                                ),
                              ],
                            ),
                            Column(

                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    alignment:Alignment.center,
                                    margin: margin(),
                                    decoration: boxdecoration(),
                                    child: button("+",back: symboldigit)),

                                Container(
                                    alignment:Alignment.center,
                                    margin: margin(),
                                    decoration: boxdecoration(),
                                    child:button("-",back: symboldigit)),

                                Container(
                                  alignment:Alignment.center,
                                  margin:  margin(),
                                  decoration: boxdecoration(),
                                  child:button("*",back: symboldigit) ,),
                                Container(
                                  alignment:Alignment.center,
                                  margin: margin(),
                                  decoration: boxdecoration(),

                                  child:  ElevatedButton(
                                    onPressed: () {
                                      double number1=0;
                                      double number2=0;
                                      if (operator=="!") {
                                        number2=number1;

                                      } else {
                                        List myList =  entered_number.split(operator);
                                        number1 = double.parse(myList[0]);
                                        number2 = double.parse(myList[1]);
                                      }

                                      //print(number1);
                                      //print(number2);
                                      //print(operator);
                                      switch (operator) {
                                        case '+':
                                          {
                                            result = number1 + number2;
                                            break;
                                          }
                                        case '-':
                                          {
                                            result = number1 - number2;
                                            break;
                                          }
                                        case '*':
                                          {
                                            result = number1 * number2;
                                            break;
                                          }
                                        case '÷':
                                          {
                                            result = number1 / number2;
                                            break;
                                          }
                                        case '%':
                                          {
                                            result = number1 % number2;
                                            break;
                                          }
                                        case '^':
                                          {
                                            result = Power(number1, number2) as double;

                                            break;
                                          }

                                      }
                                      setState(() {
                                        entered_number = result.toString();
                                      });
                                    },
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent),

                                    ),
                                    child: const Text(
                                      '=',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),)





                              ],
                            ),
                            Column(children: [
                              Container(
                                  alignment:Alignment.center,
                                  margin:  margin(),
                                  decoration: boxdecoration(),
                                  child: button("%",back: symboldigit)),

                              Container(
                                  alignment:Alignment.center,
                                  margin: margin(),
                                  decoration: boxdecoration(),
                                  child: button("÷",back: symboldigit)),
                              Container(
                                alignment:Alignment.center,
                                margin: margin(),
                                decoration: boxdecoration(),
                                child: ElevatedButton(  onPressed: () {
                                  setState(() {
                                    entered_number ="" ;
                                  });


                                },
                                  style:ButtonStyle (
                                      backgroundColor:  MaterialStateProperty.all(Colors.grey)), child: const Text("C"),),


                              ) ,
                              Container(
                                alignment:Alignment.center,
                                margin:  margin(),

                                decoration:boxdecoration(),
                                child:ElevatedButton(  onPressed: () {
                                  setState(() {
                                    entered_number =  entered_number.substring(
                                        0,  entered_number.length - 1);
                                  });


                                },


                                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey),
                                      padding: MaterialStateProperty.all(const EdgeInsets.all(2))
                                  ),child: const Text("Del"),
                                ),

                              ),],),
                            ],),
                         /*   Column(children: [



                            ],),*/

                           /* Column(children: [


                          ]),*/
                      Row(

                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(children: [



                          ],),

                        ],)
                    ]), // This trailing comma makes auto-formatting nicer for build methods.
                  ))])) );
  }


  Widget button(String number, {Color back=numberdigit})=>  ElevatedButton(
    onPressed: () {

      setState(() {
        if (number == "-") {
          operator = '-';

          setState(() {
            entered_number += '-';
          });
        }
        else if (number == "+") {
          operator = '+';

          setState(() {
            entered_number += '+';
          });

        }
        else if (number == "/") {
          operator = '/';

          setState(() {
         entered_number += '/';
          });

        }
        else if (number == "*") {
          operator = '*';

          setState(() {
           entered_number += '*';
          });

        }
        else if (number == "%") {
          operator = '%';

          setState(() {
           entered_number += '%';
          });

        }



        else if (number == "PI") {
          //operator = '^';

          setState(() {
            entered_number += "2.71828182845904";
          });

        }
        else{
          entered_number += number;
        }

      }

      );
    },
    style:ButtonStyle (
        backgroundColor:  MaterialStateProperty.all(back)),
    child:  Text(
      number,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    ),);




}
