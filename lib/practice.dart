import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
             height: 100,
             width: double.infinity,
             color: Colors.amber,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Seacrh',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,width: 6,
                      )
                    )
                  ),
                ),
              ),
            ),
          Flexible(
            child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) =>  Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,width: 80,
                              // children: [
                          decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.amber),
                              // ],
                        
                            ),
                          ),

                          const Positioned(
                            top: 1,
                            right: 10,
                            child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 7,
                                  backgroundColor:
                                      Color.fromARGB(255, 59, 207, 64),
                                )),
                          )
                        ],
                      ),
                  ),
          ),
              Expanded(
                child: ListView.builder(
                    itemCount:6,
                    itemBuilder: (context, index) => const ListTile(
                        
                          leading: CircleAvatar(
                        
                            radius: 30,
                          ),
                          title: Text('Hello'),
                          subtitle:
                              Text('Hello'),
                        )),
              )
          ],
        ),
      ),
    );
  }
}