import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network("https://th.bing.com/th/id/OIP.jM3YlGewWXN2HUkDKecr3QHaFj?rs=1&pid=ImgDetMain"), 
          SizedBox(height: 25,),

          Container(
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:25.0),
                      child: Text("Shimla Background View", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                    ), 
                    Padding(
                      padding: const EdgeInsets.only(left:25.0),
                      child: Text("HP, India", style: TextStyle(color: Colors.grey.shade600),),
                    )
                  ],
                ), 

              SizedBox(width: 130.0,),

                Row(
                  //mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.star, color: Colors.red,), 
                    Text("41")
                  ],
                ), 
              ],
            ),
          ), 

          SizedBox(height: 40.0,),

          Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.call, color: Colors.teal,),
                          Icon(
                            Icons.navigation,
                            color: Colors.teal,
                          ),
                          Icon(
                            Icons.share,
                            color: Colors.teal,
                          ),
                        ],
                      ),

                        Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                          child: Text(
                        " Call",
                        style: TextStyle(color: Colors.red),
                      )),
                     // SizedBox(width: 2.0,),
                      Text(
                        " Route",
                        style: TextStyle(color: Colors.red),
                      ),
                      Text(
                        " Share",
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
              )

        ],
      ),
    );
  }
}