import 'package:community_hub/constants/colors.dart';
import 'package:community_hub/widgets/custom_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'working'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 60,
              ),
              const Text(
                'Welcome to ',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Community Hub',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(child: Container()),
                  const Icon(
                    Icons.house,
                    size: 180,
                    color: greenColor,
                  ),
                  Expanded(child: Container()),
                ],
              ),
              const Text(
                'Discover local events',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Community hub is a user-friendly ,Mobile application that serves as a neighborhood hub, facilitating deeper connections between  neighborhoods and local businesses.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 70,
                
              ),
              CustomButtom(
                action: 'Continue',
                nav: () {
                  print('nav to....');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
