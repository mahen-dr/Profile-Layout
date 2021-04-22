import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black45,
          ),
          backgroundColor: Colors.white,
          title: Text(
            "Profile",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin:
                    EdgeInsets.only(left: 50, right: 50, top: 30, bottom: 20),
                child: ClipOval(
                  child: Image.network(
                    'https://picsum.photos/250?image=9',
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              Container(
                child: RichText(
                  text: TextSpan(
                      text: 'Mahendra\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                            text: 'Former Child\nJoined 21.04.21',
                            style: TextStyle(fontWeight: FontWeight.normal))
                      ]),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 0,
                            blurRadius: 0,
                            offset: Offset(0, 10),
                          )
                        ]),
                    padding: EdgeInsets.all(5),
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text: "128\n",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                            ),
                            children: [
                              TextSpan(
                                  text: "Followers",
                                  style: TextStyle(fontSize: 12))
                            ])),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(width: 1, color: Colors.black12),
                          right: BorderSide(width: 1, color: Colors.black12),
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 0,
                            blurRadius: 0,
                            offset: Offset(0, 10),
                          )
                        ]),
                    width: 90,
                    padding: EdgeInsets.all(5),
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text: "30\n",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                            ),
                            children: [
                              TextSpan(
                                  text: "Following",
                                  style: TextStyle(fontSize: 12))
                            ])),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 0,
                            blurRadius: 0,
                            offset: Offset(0, 10),
                          )
                        ]),
                    width: 90,
                    padding: EdgeInsets.all(5),
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text: "0\n",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                            ),
                            children: [
                              TextSpan(
                                  text: "Post", style: TextStyle(fontSize: 12))
                            ])),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.shade600,
                            spreadRadius: 0,
                            blurRadius: 0,
                            offset: Offset(0, 7),
                          )
                        ]),
                    margin: EdgeInsets.only(
                        top: 30, bottom: 30, left: 10, right: 5),
                    child: MaterialButton(
                        color: Colors.blue,
                        height: 50,
                        minWidth: 120,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10)),
                        child: Text(
                          "Follow",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {}),
                  ),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.shade600,
                              spreadRadius: 0,
                              blurRadius: 0,
                              offset: Offset(0, 7),
                            )
                          ]),
                      margin: EdgeInsets.only(
                          top: 30, bottom: 30, left: 5, right: 10),
                      child: MaterialButton(
                          color: Colors.blue,
                          height: 50,
                          minWidth: 120,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10)),
                          child: Text(
                            "Contact",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {})),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
