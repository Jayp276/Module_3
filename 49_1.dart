import "package:flutter/material.dart";

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 50),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 175,
                  color: Colors.red,
                ),
              ),
            ),
            Container(
            
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                
                
                    Container(
                  width: 190,
                  height: 175,
                  color: Colors.blue,
                    ),
                
                
                    Container(
                       width: 190,
                  height: 175,
                  color: Colors.blue,
                    ),
                
                
                
                  ],
                ),
              ),
            ),

            Container(
             
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  
                  
                      Container(
                    width: 190,
                    height: 175,
                    color: Colors.blue,
                      ),
                  
                  
                      Container(
                         width: 190,
                    height: 175,
                    color: Colors.blue,
                      ),
                  
                  
                  
                    ],
                  ),
              ),
            ),





            Container(
              child: Padding(
               padding: const EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                
                    Container(
                      height: 138,width: 122,color: Colors.yellow,
                    ), 
                
                
                    Container(
                      height: 138,width: 122,color: Colors.yellow,
                    ),
                
                
                    Container(
                      height: 138,width: 122,color: Colors.yellow,
                    ),
                    
                    
                    
                    
                    ],
                ),
              ),
            ),





          ],
        ),
      ),
    );
  }
}
