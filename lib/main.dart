import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  // run app
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.teal, fontFamily: 'Poppins'),
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _height = 100.0;
  double _weight = 70.0;
  int _bmi = 0;
  String _condition = "Give Inforamtion";
  String _tag = "";
  Color c = Color(0xFF00FF00);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.normal,
              fontFamily: 'Poppins'),
        ),
        backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 10),
                  child: Text(
                    'What is BMI?',
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 20,
                        fontFamily: 'Poppins'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 15, 0),
                  child: Text(
                    "Body Mass Index (BMI) is a measurement that helps determine if a person has a healthy body weight for their height. It's a useful indicator of potential health risks associated with being underweight, overweight, or obese.",
                    style: TextStyle(),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 10, 15, 10),
                  child: Text(
                    "How BMI is Calculated?",
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 15, 0),
                  child: Text(
                    "Body Mass Index is a simple calculation using a person's height and weight. The formula is BMI = kg/m2 where kg is a person's weight in kilograms and m2 is their height in metres squared.",
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 10, 15, 10),
                  child: Text(
                    "BMI Categories:",
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 20,
                        fontFamily: 'Poppins'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 15, 0),
                  child: Text(
                    "  - Underweight: BMI < 18.5 ",
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 15, 0),
                  child: Text(
                    "  - Normal Weight: BMI 18.5 - 24.9",
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 15, 0),
                  child: Text(
                    "  - Overweight: BMI 25 - 29.9 ",
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 15, 0),
                  child: Text(
                    "  - Obese: BMI 30 and above ",
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                    child: Text(
                      "______________________________________",
                      style: TextStyle(fontFamily: "San Fransisco"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                    child: Text(
                      "For Heathcare assistence",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("902567550"),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email),
                    Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("health.india@gmail.com"),
                        J),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                    child: Text(
                      "© 2023 All Copyrigts Recived",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                    child: Text(
                      "Developed By Aswin G,MCA",
                      style: TextStyle(fontSize: 8, color: Colors.teal),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                height: size.height * 0.30,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFF66b2b2),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Your Health",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                    Text(
                      "$_bmi",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 70,
                          shadows: [
                            Shadow(
                                color: Colors.black,
                                blurRadius: 0,
                                offset: Offset(2, 2))
                          ]),
                    ),
                    RichText(
                      text: TextSpan(
                          text: "Condition : ",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Poppins"),
                          children: [
                            TextSpan(
                              text: "$_condition ",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.normal),
                            )
                          ]),
                    ),
                    Text(
                      "$_tag",
                      style: TextStyle(
                        color: c,
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      "Choose Your Information",
                      style: TextStyle(
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    RichText(
                      text: TextSpan(
                          text: "Height : ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black45,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Poppins"),
                          children: [
                            TextSpan(
                              text: "$_height Cm",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Slider(
                        value: _height,
                        min: 0,
                        max: 250,
                        onChanged: (height) {
                          setState(() {
                            _height = height;
                          });
                        },
                        divisions: 250,
                        label: "$_height",
                        activeColor: Colors.teal,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    RichText(
                      text: TextSpan(
                          text: "Weight : ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black45,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Poppins"),
                          children: [
                            TextSpan(
                              text: "$_weight Kg",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Slider(
                        value: _weight,
                        min: 0,
                        max: 300,
                        onChanged: (weight) {
                          setState(() {
                            _weight = weight;
                          });
                        },
                        divisions: 300,
                        label: "$_weight",
                        activeColor: Colors.teal,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Container(
                      width: size.width * 0.6,
                      height: size.height * 0.06,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _bmi =
                                (_weight / ((_height / 100) * (_height / 100)))
                                    .round()
                                    .toInt();
                            if (_bmi < 18.5) {
                              _condition = "UnderWeight";
                              _tag = "Fuel up for strength 💪.";
                              c = Colors.yellowAccent;
                            }
                            if (_bmi >= 18.5 && _bmi <= 24.9) {
                              _condition = "NormalWeight";
                              _tag = "Healthy balance maintained ☻.";
                              c = Colors.indigo.shade900;
                            }
                            if (_bmi >= 25 && _bmi <= 29.9) {
                              _condition = "OverWeight";
                              _tag = "Time for mindful choices ✔️.";
                              c = Colors.deepOrange;
                            }
                            if (_bmi >= 30) {
                              _condition = "Obese";
                              _tag = "Prioritize wellness today ➕.";
                              c = Colors.red.shade900;
                            }
                          });
                        },
                        child: Text(
                          'Calculate',
                          style: TextStyle(fontSize: 25),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF66b2b2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
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
