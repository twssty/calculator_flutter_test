import 'package:flutter/material.dart';
import 'package:calculator/Components/Button/NewButton.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  String value = "";

  btnFunc(String val) {
    setState(() {
      value += val; // Concatenate val to the existing value string
    });
  }
  void clear(){
    setState(() {
      value = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    double containerHeightPercentage = 0.3;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              width: screenWidth,
              height: screenHeight * containerHeightPercentage,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: screenWidth * 1, // Adjust the width as needed
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          reverse: true, // Start scrolling from the end
                          child: Text(
                            value,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 80, // Adjust the font size as needed
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),


            Expanded(
              child: Container(
                color: Colors.grey,
                child: GridView.count(
                  crossAxisCount: 4,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  children: [
                    NewButton(onPressed: clear, buttonText: "C", color: Colors.grey[800]!), // Call clear function directly

                    NewButton(onPressed: () => btnFunc("+/-"), buttonText: "+/-", color: Colors.grey[800]!),
                    NewButton(onPressed: () => btnFunc("%"), buttonText: "%", color: Colors.grey[800]!),
                    NewButton(onPressed: () => btnFunc("/"), buttonText: "/", color: Colors.orange),
                    NewButton(onPressed: () => btnFunc("7"), buttonText: "7", color: Colors.grey[400]!),
                    NewButton(onPressed: () => btnFunc("8"), buttonText: "8", color: Colors.grey[400]!),
                    NewButton(onPressed: () => btnFunc("9"), buttonText: "9", color: Colors.grey[400]!),
                    NewButton(onPressed: () => btnFunc("X"), buttonText: "X", color: Colors.orange),
                    NewButton(onPressed: () => btnFunc("4"), buttonText: "4", color: Colors.grey[400]!),
                    NewButton(onPressed: () => btnFunc("5"), buttonText: "5", color: Colors.grey[400]!),
                    NewButton(onPressed: () => btnFunc("6"), buttonText: "6", color: Colors.grey[400]!),
                    NewButton(onPressed: () => btnFunc("-"), buttonText: "-", color: Colors.orange),
                    NewButton(onPressed: () => btnFunc("1"), buttonText: "1", color: Colors.grey[400]!),
                    NewButton(onPressed: () => btnFunc("2"), buttonText: "2", color: Colors.grey[400]!),
                    NewButton(onPressed: () => btnFunc("3"), buttonText: "3", color: Colors.grey[400]!),
                    NewButton(onPressed: () => btnFunc("+"), buttonText: "+", color: Colors.orange),
                    NewButton(onPressed: () => btnFunc("0"), buttonText: "0", color: Colors.grey[400]!),
                    NewButton(onPressed: () => btnFunc("."), buttonText: ".", color: Colors.grey[400]!),
                    NewButton(onPressed: () => btnFunc("="), buttonText: "=", color: Colors.grey[400]!),

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