import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Hero_Animation(),
    );
  }
}

class Hero_Animation extends StatefulWidget {
  @override
  _Hero_AnimationState createState() => _Hero_AnimationState();
}

class _Hero_AnimationState extends State<Hero_Animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 20
        ),
        child: ListView(
//            mainAxisAlignment: MainAxisAlignment.center,

          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    transitionDuration: Duration(milliseconds: 1000),
                    pageBuilder: (BuildContext context,
                        Animation<double> animation,
                        Animation<double> secondaryAnimation) {
                      return Book_Details();
                    },
                    transitionsBuilder: (BuildContext context,
                        Animation<double> animation,
                        Animation<double> secondaryAnimation,
                        Widget child) {
                      return Align(
                        child: FadeTransition(
                          opacity: animation,
                          child: child,
                        ),
                      );
                    },
                  ),
                );
              },
              child: Container(
                height: 150,
                width: 150,
                child: Hero(
                  tag: 'Book',
                  transitionOnUserGestures: true,
                  child: Image.asset(
                    'assets/book.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(height:20),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    transitionDuration: Duration(milliseconds: 1000),
                    pageBuilder: (BuildContext context,
                        Animation<double> animation,
                        Animation<double> secondaryAnimation) {
                      return Laptop_Details();
                    },
                    transitionsBuilder: (BuildContext context,
                        Animation<double> animation,
                        Animation<double> secondaryAnimation,
                        Widget child) {
                      return Align(
                        child: FadeTransition(
                          opacity: animation,
                          child: child,
                        ),
                      );
                    },
                  ),
                );
              },
              child: Container(
                height: 150,
                width: 150,
                child: Hero(
                  tag: 'Laptop',
                  transitionOnUserGestures: true,
                  child: Image.asset(
                    'assets/laptop.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(height:20),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    transitionDuration: Duration(milliseconds: 1000),
                    pageBuilder: (BuildContext context,
                        Animation<double> animation,
                        Animation<double> secondaryAnimation) {
                      return Mobile_Details();
                    },
                    transitionsBuilder: (BuildContext context,
                        Animation<double> animation,
                        Animation<double> secondaryAnimation,
                        Widget child) {
                      return Align(
                        child: FadeTransition(
                          opacity: animation,
                          child: child,
                        ),
                      );
                    },
                  ),
                );
              },
              child: Container(
                height: 150,
                width: 150,
                child: Hero(
                  tag: 'Mobile',
                  transitionOnUserGestures: true,
                  child: Image.asset(
                    'assets/phone.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Book_Details extends StatefulWidget {
  @override
  _Book_DetailsState createState() => _Book_DetailsState();
}

class _Book_DetailsState extends State<Book_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.maxFinite,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 25),
              child: Hero(
                tag: 'Book',
                transitionOnUserGestures: true,
                child: Image.asset(
                  'assets/book.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'A book is a medium for recording information in the form of'
                  ' writing or images, typically composed of many pages'
                  ' (made of papyrus, parchment, vellum, or paper) bound together'
                  ' and protected by a cover.[1] The technical term for this '
                  'physical arrangement is codex (plural, codices). In the history'
                  ' of hand-held physical supports for extended written compositions '
                  'or records, the codex replaces its predecessor, the scroll. A single'
                  ' sheet in a codex is a leaf and each side of a leaf is a page.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.withOpacity(0.7)
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Mobile_Details extends StatefulWidget {
  @override
  _Mobile_DetailsState createState() => _Mobile_DetailsState();
}

class _Mobile_DetailsState extends State<Mobile_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.maxFinite,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 25),
              child: Hero(
                tag: 'Mobile',
                transitionOnUserGestures: true,
                child: Image.asset(
                  'assets/phone.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'A mobile phone, cellular phone, cell phone, cellphone, handphone, '
                  'or hand phone, sometimes shortened to simply mobile,'
                  ' cell or just phone, is a portable telephone that can make'
                  ' and receive calls over a radio frequency link while the user '
                  'is moving within a telephone service area. The radio frequency '
                  'link establishes a connection to the switching systems of a mobile'
                  ' phone operator, which provides access to the public switched '
                  'telephone network (PSTN). Modern mobile telephone services use a '
                  'cellular network architecture and, therefore, mobile telephones are '
                  'called cellular telephones or cell phones in North America.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.withOpacity(0.7)
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Laptop_Details extends StatefulWidget {
  @override
  _Laptop_DetailsState createState() => _Laptop_DetailsState();
}

class _Laptop_DetailsState extends State<Laptop_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.maxFinite,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 25),
              child: Hero(
                tag: 'Laptop',
                transitionOnUserGestures: true,
                child: Image.asset(
                  'assets/laptop.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'A laptop, is a small, portable personal computer with a '
                  '"clamshell" form factor, typically having a thin LCD or LED '
                  'computer screen mounted on the inside of the upper lid of the'
                  ' clamshell and an alphanumeric keyboard on the inside of the '
                  'lower lid. The clamshell is opened up to use the computer.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.withOpacity(0.7)
              ),
            ),
          )
        ],
      ),
    );
  }
}


