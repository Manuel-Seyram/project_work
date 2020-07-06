import 'package:flutter/material.dart';
import 'LogIn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'models.dart';

// had to switch the login part for sign up. So this page is Sign up.
class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => new _LogInState();
}

class _LogInState extends State<LogIn> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _user = User();

  TextStyle style =
      TextStyle(fontFamily: '', fontSize: 20.0, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Stack(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 130.0),
              child: Text("Register",
                  style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Pacifico',
                      fontSize: 50.0),
                  textAlign: TextAlign.center),
            )
          ],
        ),
        Center(
            child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Artboardd.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                    vertical: 17.0, horizontal: 16.0),
                child: Builder(
                    builder: (context) => Form(
                        key: _formKey,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              TextFormField(
                                obscureText: false,
                                style: style,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    labelText: 'Email',
                                    contentPadding: EdgeInsets.fromLTRB(
                                        20.0, 15.0, 20.0, 15.0),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(32.0)),
                                    icon: Icon(Icons.mail)),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter your Email';
                                  }
                                  return null;
                                },
                                onSaved: (val) =>
                                    setState(() => _user.email = val),
                              ),
                              TextFormField(
                                  obscureText: true,
                                  style: style,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      labelText: 'Password',
                                      contentPadding: EdgeInsets.fromLTRB(
                                          20.0, 15.0, 20.0, 15.0),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(32.0)),
                                      icon: Icon(Icons.vpn_key)),
                                  validator: (value) {
                                    if (value.isEmpty || value.length < 6) {
                                      return 'Password must be at least 6 characters';
                                    }
                                    return null;
                                  },
                                  onSaved: (val) =>
                                      setState(() => _user.password = val)),
                              Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0, horizontal: 16.0),
                                  child: RaisedButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.blue),
                                      ),
                                      color: Colors.blue,
                                      onPressed: signin,
                                      child: Text('Register'))),
                            ])))))
      ],
    ));
  }

  _showDialog(BuildContext context) {
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text('Registered Succesfully')));
  }

  void signin() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      try {
        FirebaseUser user = (await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: _user.email, password: _user.password)) as FirebaseUser;
        user.sendEmailVerification();
        _showDialog(context);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SignUp()));
      } catch (e) {
        print(e.messgae);
      }
    }
  }
}
