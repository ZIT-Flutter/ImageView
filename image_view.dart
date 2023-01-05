import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image View'),
      ),
      body: Center(
        child: Container(
            width: 300,
            height: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),

            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2017/02/07/16/47/kingfisher-2046453__340.jpg',
                    height: 100,
                    width: 150,
                  ),
                ),

                SizedBox(height: 50,),
                
                ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset('assets/birds/small_bird.jpg', width: 200,))
              ],
            ),

        ),
      ),
    );
  }
}
