import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:hallo_helper/screens/card.dart';


class OnboardingScreen extends StatefulWidget{
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  final List<String> num=["1","2"];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Color.fromARGB(255, 240, 237, 237)),
          child: Column(
            children: [
              Container(child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 200, 10),
                       child: Column(children: [
                        Text("good morning"),
                        Text("Mahesh"),
                       ],),
                      ),
                      Container(
                        
                        //  child: ListTile(leading: Icon(Icons.star,color: Colors.amber,
                         
                        //  ),
                        // //  title: Text("4.8"),
                        //  ),
                        child: Icon(Icons.star,color: Colors.amber,),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(1),color: Colors.white),
                      ),
                      Container(child: Icon(Icons.notifications_none_outlined),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                        )
                    ],
                  ),
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.all(10),
      child: DropdownButtonHideUnderline(
        
        child: DropdownButton2<String>(
          
          isExpanded: true,
          hint: Text(
            'chose job category',
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).hintColor,
            ),
          ),
          items: items
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (String? value) {
            setState(() {
              selectedValue = value;
            });
          },
          buttonStyleData: const ButtonStyleData(
            
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(color: Colors.white),
            height: 40,
            width:500,
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
          ),
          
        ),
      ),
    ),
    Container(
      margin: EdgeInsets.all(10),
      width: 500,
      height: 40,
      color: Colors.white,
    ),
    ElevatedButton(
      
    style: ElevatedButton.styleFrom(
      backgroundColor:Color.fromARGB(255, 64, 184, 68),
      padding: EdgeInsets.fromLTRB(150, 10, 150, 10),
      
     
    ),
    onPressed: () { },
    child: Text('search job'),
    )

                ],
              ),

              ),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,border: Border.all(color:Color.fromARGB(255, 182, 180, 180) )),
                child: Column(
                  children: [
                    Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("search result",style: TextStyle(fontSize: 20,color: Colors.grey)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text("see all",style: TextStyle(fontSize: 20,color: Colors.green)),
                      )
                    ],),
                    Container(
                     
                     margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(border: Border.all(color: Color.fromARGB(255, 182, 180, 180)),color: Colors.white,borderRadius: BorderRadius.circular(10)),
                        
                        child: Column(
                          children: [Row(
                            children: [
                              Container(
                    margin: EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,border: Border.all(color: Color.fromARGB(255, 182, 180, 180))),
                              ),
                              Expanded(child: Container(
                    height: 100,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    child: Text("Repainting the whole house",style: TextStyle(fontSize: 20,color: Colors.black),),
                               
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              ),)
                            ],
                          ),
                            const Divider(
                              height: 20,
                              thickness: 1,
                              indent: 20,
                              endIndent: 0,
                              color: Color.fromARGB(255, 190, 186, 186),
                            ),
                          Row(
                            children: [
                              Column(
                    children: [
                      Container(child: Text("catogery",style: TextStyle(fontSize: 15,color: Colors.black))),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 100,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(color:  Color.fromARGB(255, 190, 186, 186),),color: Color.fromARGB(255, 206, 147, 143)),
                        child: Row(children: [
                          Icon(Icons.format_paint,color: Colors.redAccent,),
                          Padding(
                            padding: const EdgeInsets.all(1),
                            child: Text("painter",style: TextStyle(fontSize: 15,color: Colors.redAccent)),
                          )
                        ],),
                      ),
                    ],
                              ), Column(
                    children: [
                      Container(child: Text("catogery",style: TextStyle(fontSize: 15,color: Colors.black))),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 100,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(color:  Color.fromARGB(255, 190, 186, 186),),color: Color.fromARGB(255, 142, 192, 143)),
                        child: Row(children: [
                          Icon(Icons.format_paint,color:  Color.fromARGB(255, 64, 145, 67),),
                          Padding(
                            padding: const EdgeInsets.all(1),
                            child: Text("42",style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 64, 145, 67))),
                          )
                        ],),
                      ),
                    ],
                              ),
                               Container(
                    padding: EdgeInsets.fromLTRB(30, 20, 10, 10),
                     child: ElevatedButton(
                         
                       style: ElevatedButton.styleFrom(
                         
                         backgroundColor:Color.fromARGB(255, 64, 184, 68),
                         
                         
                        
                       ),
                       onPressed: () { },
                       child: Text('apply'),
                       ),
                               )
              
                            ],
                          )
                          
                          ],
                        ),
                      ),
                      Container(
                     
                     margin: EdgeInsets.all(10),
                        decoration:
                         BoxDecoration(border: Border.all(color: Color.fromARGB(255, 182, 180, 180)),color: Colors.white,borderRadius: BorderRadius.circular(10),image: DecorationImage(image:AssetImage("images\houseimage.jpg") ,fit: BoxFit.cover.),),
                        
                        
                        child: Column(
                          children: [Row(
                            children: [
                              Container(
                    margin: EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,border: Border.all(color: Color.fromARGB(255, 182, 180, 180),)),
                              ),
                              Expanded(child: Container(
                    height: 100,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    child: Text("Repainting the whole house",style: TextStyle(fontSize: 20,color: Colors.black),),
                               
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                              ),)
                            ],
                          ),
                            const Divider(
                              height: 20,
                              thickness: 1,
                              indent: 20,
                              endIndent: 0,
                              color: Color.fromARGB(255, 190, 186, 186),
                            ),
                          Row(
                            children: [
                              Column(
                    children: [
                      Container(child: Text("catogery",style: TextStyle(fontSize: 15,color: Colors.black))),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 100,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(color:  Color.fromARGB(255, 190, 186, 186),),color: Color.fromARGB(255, 206, 147, 143)),
                        child: Row(children: [
                          Icon(Icons.format_paint,color: Colors.redAccent,),
                          Padding(
                            padding: const EdgeInsets.all(1),
                            child: Text("painter",style: TextStyle(fontSize: 15,color: Colors.redAccent)),
                          )
                        ],),
                      ),
                    ],
                              ), Column(
                    children: [
                      Container(child: Text("catogery",style: TextStyle(fontSize: 15,color: Colors.black))),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 100,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(color:  Color.fromARGB(255, 190, 186, 186),),color: Color.fromARGB(255, 142, 192, 143)),
                        child: Row(children: [
                          Icon(Icons.format_paint,color:  Color.fromARGB(255, 64, 145, 67),),
                          Padding(
                            padding: const EdgeInsets.all(1),
                            child: Text("42",style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 64, 145, 67))),
                          )
                        ],),
                      ),
                    ],
                              ),
                               Container(
                    padding: EdgeInsets.fromLTRB(30, 20, 10, 10),
                     child: ElevatedButton(
                         
                       style: ElevatedButton.styleFrom(
                         
                         backgroundColor:Color.fromARGB(255, 64, 184, 68),
                         
                         
                        
                       ),
                       onPressed: () { },
                       child: Text('apply'),
                       ),
                               )
              
                            ],
                          )
                          
                          ],
                        ),
                      ),
                  ],
                ),
              ),


            ],
          ),
          
          
        ),
        
      
      ),
    );
  }
}