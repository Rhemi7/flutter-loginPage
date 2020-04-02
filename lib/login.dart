import 'package:flutter/material.dart';
import 'signup.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Image.asset('images/icon.png'),
        title: Text('Start.ng Login Page'),
        backgroundColor: Color(0xFF009588),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'WELCOME!',
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username or Email Address',
                ),
              ),
            ),
//            SizedBox(
//              height: 20,
//            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: FlatButton(
                      color: Colors.green,
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15.0),
                      ),
                      onPressed: () {
                        print('User is logged in');
                      },
                    ),
                  ),
                  Text(
                    'Or, Don\'t Have An Account?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: FlatButton(
                      color: Colors.blueGrey,
                      child: Text(
                        'CREATE AN ACCOUNT',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpPage(),
                          ),
                        );
                      },
                    ),
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
