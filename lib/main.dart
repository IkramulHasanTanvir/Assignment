import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        textTheme: TextTheme(
            bodyMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            bodySmall: TextStyle(
              fontSize: 16,
            ),
            titleMedium: TextStyle(
              fontSize: 16,
            )),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Greeting App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello, World!',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.red,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Welcome to Flutter!',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 200,
                width: 200,
                child: Image(
                  image: NetworkImage(
                      'https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png'),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.white.withOpacity(0.5),
                      context: context,
                      builder: (ctx) {
                        return SizedBox(
                          height: 600,
                          width: double.infinity,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  'Title',
                                  style:
                                  Theme.of(context).textTheme.titleMedium,
                                ),
                              ),
                              Divider(),

                            ],
                          ),
                        );
                      });
                },
                child: Text('Press Me'),
              ),
            ],
          ),
        ));
  }
}
