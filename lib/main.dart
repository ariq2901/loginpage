import 'package:flutter/material.dart';
void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF73AEF5),
                  Color(0xFF61A4F1),
                  Color(0xFF478DE0),
                  Color(0xFF398AE5),
                ],
                stops: [0.1, 0.4, 0.7, 0.9],
              )),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30.0),
                    alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network('https://cdn.business2community.com/wp-content/uploads/2014/04/microsoft-onedrive-logo11.png', width: 120.0,),
                        SizedBox(height: 10.0,),
                        Text('Cloudy Cold', style: TextStyle(color: Colors.white60,),)
                      ],
                    )
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Username',
                            prefixIcon: Icon(Icons.email, color:Colors.white38 ,),
                            hintStyle: TextStyle(color: Colors.white38),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white38),
                            ),
                          ),
                          cursorColor: Colors.white54,
                          cursorWidth: 0.8,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.lock, color:Colors.white38 ,),
                            hintStyle: TextStyle(color: Colors.white38),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white38),
                            ),
                          ),
                          cursorColor: Colors.white54,
                          cursorWidth: 0.8,
                        ),
                        SizedBox(height: 20.0,),
                        RaisedButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Colors.lightBlueAccent, Colors.blue]
                              ),
                            ),
                          child: Container(
                            constraints: BoxConstraints(minWidth: 88.0, minHeight: 36.0),
                            alignment: Alignment.center,
                            child: Text(
                              'Continue',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Doesn\'t have any account?'),
                      Text(' Signup!', style: TextStyle(color: Colors.white60),),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
