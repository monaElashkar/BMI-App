// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'resalte.dart';

class BMIHomePage extends StatefulWidget {
  const BMIHomePage({Key? key}) : super(key: key);

  @override
  State<BMIHomePage> createState() => _BMIHomePageState();
}

class _BMIHomePageState extends State<BMIHomePage> {
double sliservalue=100;
double weight=30;
int age=19;
bool? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.blueGrey,
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: const Text("BMI Calculator",style: TextStyle(fontSize: 20,color: Colors.white),),
            ),
        body:Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
             Expanded(
               child: Row(
                 mainAxisAlignment : MainAxisAlignment.center,
                 children: [
                   Expanded(child:Container(
                     alignment: Alignment.center,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: Colors.white,
                         border: Border.all(color:gender==true?Colors.deepOrangeAccent: Colors.black,width: 10),
                        ),
                     child:  GestureDetector(
                       child: const Icon(Icons.woman,size: 80,),onTap: (){gender=true;
                         setState(() {});},
                       ),
                     )),
                   const SizedBox(
                     width: 13,
                   ),
                   Expanded(child:Container(
                     alignment: Alignment.center,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(20),
                       border: Border.all(color:gender==false?Colors.deepOrangeAccent: Colors.black,width: 10),
                     ),  child:  GestureDetector(
                       child: const Icon(Icons.man_rounded,size: 80,),onTap: (){gender=false;
                   setState(() {});},
                   ),
                   )),
                 ],
               ),
             ),
              const SizedBox(height: 10,),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                  ),
                  child: Column(
                    mainAxisAlignment : MainAxisAlignment.center,
                    children: [
                      const Text("HEIGHT",style: TextStyle(fontSize:20,color: Colors.white ),),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.center ,
                        children: [
                          Text(sliservalue.toStringAsFixed(2),style: const TextStyle(fontSize:35,color: Colors.white,fontWeight:FontWeight.bold ),),
                          const Text("cm",style: TextStyle(fontSize:20,color: Colors.white),),
                        ],),
                      Slider(value: sliservalue, onChanged: (sliservalue){this.sliservalue=sliservalue;
                      setState(() {

                      });
                      },
                        min: 30,
                        max: 250,
                        divisions: 120,
                        activeColor: Colors.deepOrangeAccent,label: '${sliservalue.round()}',
                      )

                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Expanded(child: Row(
                children: [
                  Expanded(child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                    ),
                    alignment: Alignment.center,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("wEIGHT",style: TextStyle(fontSize: 20,color: Colors.white)),
                        Text("$weight",style: const TextStyle(fontSize: 35,color: Colors.white)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(icon: const Icon(Icons.arrow_back_ios,color: Colors.white,),onPressed: (){weight--;
                              setState(() {});
                            },),
                            IconButton(icon: const Icon(Icons.arrow_forward_ios,color: Colors.white,),onPressed: (){weight++;
                              setState(() {});
                            },),
                          ],
                        ),
                      ],
                    ),
                  )),
                  const SizedBox(width: 10,),
                  Expanded(child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                    ),
                    alignment: Alignment.center,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("AGE",style: TextStyle(fontSize: 20,color: Colors.white)),
                        Text("$age",style: const TextStyle(fontSize: 35,color: Colors.white)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(icon: const Icon(Icons.arrow_back_ios,color: Colors.white,),onPressed: (){age--;
                            setState(() {});
                            },),
                            IconButton(icon: const Icon(Icons.arrow_forward_ios,color: Colors.white,),onPressed: (){age++;
                            setState(() {});
                            },),
                          ],
                        ),
                      ],
                    ),
                  )),
                ],
              )),
              const SizedBox(height: 10,),
              GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.deepOrangeAccent),
                  child: const Text("CALCULATE",style: TextStyle(fontSize: 20,color: Colors.white,letterSpacing: 1.8,fontWeight: FontWeight.bold),)),
                  onTap: (){
                  if(gender!=null){
                    Navigator.defaultRouteName;
                    Navigator.push(context,MaterialPageRoute(builder:(context){
                      return Resalte(age: age, weight: weight, sliservalue: sliservalue, gender: gender == false ? 'Male' : 'Female',);
                    }));
                  }
                  },
              )
            ],
          ),
        ));
  }
}
