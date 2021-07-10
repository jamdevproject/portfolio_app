import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget iconButton(icon){
    return IconButton(
      icon: FaIcon(
        icon,
        color: Colors.grey,
        size: 20,
      ),
      onPressed: (){},
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Image.network(
                  'https://i.pinimg.com/originals/b3/e8/71/b3e871dca11a1afadfab669387b690ee.jpg'),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [.5, .7],
                      colors: [Colors.transparent, Colors.black])),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 300,
                child: Column(
                  children: [
                    Text(
                      'Hello I am',
                      style:
                          GoogleFonts.acme(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Jam Dev',
                      style: GoogleFonts.almendra(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'UX Designer, Android & IOS Developer',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orangeAccent)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: Text(
                          'Hire Me',
                          style: GoogleFonts.cutiveMono(
                              textStyle: TextStyle(letterSpacing: 2),
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 20,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Expanded(child: Divider(color: Colors.grey,),),
                      iconButton(FontAwesomeIcons.facebook,),
                      SizedBox(width: 10,),
                      iconButton(FontAwesomeIcons.twitter),
                      SizedBox(width: 10,),
                      iconButton(FontAwesomeIcons.instagram),
                      SizedBox(width: 10,),
                      iconButton(FontAwesomeIcons.linkedin),
                      Expanded(child: Divider(color: Colors.grey,),),

                    ],
                  ),
                ),)
          ],
        ),
      ),
    );
  }
}
