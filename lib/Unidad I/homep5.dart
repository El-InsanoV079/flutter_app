import 'package:flutter/material.dart';

class Homep5 extends StatelessWidget {
  const Homep5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adal Eliel Bautista Sanjuan',),
      ),
      body: Row(
        children: [

          Container(
            width: 80,
            color: Colors.grey[200],
            child: Column(
            //  mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.person, size: 35,color: Color.fromARGB(255, 231, 164, 30),),
                SizedBox(height: 20),
                Icon(Icons.person, size: 35, color: Color.fromARGB(255, 243, 33, 33),),
                SizedBox(height: 20),
                Icon(Icons.person, size: 35, color: Colors.blue,),
                SizedBox(height: 20),
                Icon(Icons.person, size: 35,color: Color.fromARGB(255, 145, 11, 113),),
                SizedBox(height: 20),
                Icon(Icons.person, size: 35),
              ],
            ),
          ),


          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [

                  Row(
                    children: [

                      Expanded(
                        child: Column(
                          children: [
                            Card(
                              child: SizedBox(
                                height: 100,
                                child: Center(
                                  child: Text(
                                    'Nelson',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 50),
                            const Text('Nelson es el mejor elemento'),
                          ],
                        ),
                      ),

                      const SizedBox(width: 20),

                      Expanded(
                        child: Column(
                          children: [
                            Card(
                              child: SizedBox(
                                height: 150,
                                child: Center(
                                  child: Text(
                                    'Yisus',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text('Yisus es el segundo mejor elemento'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
