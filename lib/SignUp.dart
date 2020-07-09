import 'package:flutter/material.dart';
import 'package:project_work/extra%20pages/screen/welcome.dart';
import 'LogIn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'models.dart';
import 'Dialogbox.dart';

// had to switch the login part for sign up. So this page is Sign up.
class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => new _LogInState();
}

class _LogInState extends State<LogIn> {
  DialogBox dialogBox = new DialogBox();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _user = User();

  TextStyle style =
      TextStyle(fontFamily: '', fontSize: 20.0, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10.0),
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
                alignment: Alignment.center,
                padding: const EdgeInsets.all(36.0),
                child: Builder(
                    builder: (context) => Form(
                        key: _formKey,
                        child: SingleChildScrollView(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              SizedBox(height: 15.0),
                              Text(
                                "Register",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic,
                                    fontFamily: 'Pacifico',
                                    fontSize: 50.0),
                                textAlign: TextAlign.center,
                              ),
                              TextFormField(
                                obscureText: false,
                                style: style,
                                keyboardType: TextInputType.emailAddress,
                                autofocus: false,
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
                              SizedBox(height: 15.0),
                              TextFormField(
                                  obscureText: true,
                                  style: style,
                                  keyboardType: TextInputType.text,
                                  autofocus: false,
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
                                      padding: EdgeInsets.fromLTRB(
                                          20.0, 15.0, 20.0, 15.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.blue),
                                      ),
                                      color: Colors.blue,
                                      onPressed: signup,
                                      child: Text('Register'))),
                            ]))))))
      ],
    ));
  }

  _showDialog(BuildContext context) {
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text('Registered Succesfully')));
  }

  void signup() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      try {
        AuthResult user = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: _user.email, password: _user.password);
        //user.sendEmailVerification();
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SignUp()));
        dialogBox.information(context, "Congratulations",
            "Your account has been created successfully.");
      } catch (e) {
        dialogBox.information(context, "Error = ", e.toString());
        print(e.messgae);
      }
    }
  }
}
