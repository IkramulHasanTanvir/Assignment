import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Text Styling App'),
    ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Flutter Text Styling',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500
              )),

            SizedBox(height: 10),

            Text(
              'Experiment with text styles',
              style: TextStyle(
                fontSize: 18,
                  fontStyle: FontStyle.italic
              ),
              ),

            SizedBox(height: 24),

            TextButton(
              onPressed: (){
                final snackBar =  SnackBar(
                    content: Text('Clicked the button'),);

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
              child: Text('Click Me'),),

            SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome to',style: TextStyle(
                  fontSize: 16,),),

                SizedBox(width: 4),

                Text('Flutter!',style: TextStyle(
                  fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue,),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
