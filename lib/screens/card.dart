import 'package:flutter/material.dart';
class card extends StatefulWidget {
  const card({super.key});

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  @override
  Widget build(BuildContext context) {
    return Container(
   
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
    );
  }
}