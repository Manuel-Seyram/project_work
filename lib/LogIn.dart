import 'package:flutter/material.dart';
import 'models.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_work/extra pages/screen/welcome.dart';
import 'Dialogbox.dart';

// And this page is rather the log in

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => new _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 130.0),
            )
          ],
        ),
        Center(
            child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Artboard.png"),
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
                                "Login",
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
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.blue),
                                      ),
                                      color: Colors.blue,
                                      onPressed: signin,
                                      child: Text('LogIn'))),
                            ]))))))
      ],
    ));
  }

  _showDialog(BuildContext context) {
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text('Logging you in')));
  }

  Future<void> signin() async {
    final formState = _formKey.currentState;
    if (formState.validate()) {
      formState.save();

      try {
        AuthResult user = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: _user.email, password: _user.password);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Welcome()));

        dialogBox.information(context, "", "You are logged in successfully.");
      } catch (e) {
        dialogBox.information(context, "Error = ", e.toString());
        print(e.messgae);
      }
    }
  }
}
