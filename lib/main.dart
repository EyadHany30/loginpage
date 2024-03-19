import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Welcome to the login page'),
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title,
            style: TextStyle(color: Theme.of(context).colorScheme.onPrimary)),
            centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Join us',
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Please enter your email",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Please enter your Password",
                    border: OutlineInputBorder(),
                  )),
              SizedBox(height: 20),
              TextButton(onPressed: () {}, child: Text("forget password")),
              ElevatedButton(onPressed: () {}, child: Text("Login")),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Don't have an account?"),
              SizedBox(width: 5),
              TextButton(onPressed: () {}, child: Text("Sign in")),
              ],
              )
          ],
          ),
        ),
      ),
    );
  }
}
