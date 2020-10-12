import 'package:aptismart/screens/home_screen.dart';
import 'package:aptismart/services/phone_auth.dart';
import 'package:aptismart/utilities/numeric_pad.dart';
import 'package:aptismart/utilities/verify_phone.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Phone extends StatefulWidget {
  @override
  _PhoneState createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  Future<void> verifyPhone(phoneNo) async {
    final PhoneVerificationCompleted verified = (AuthCredential authResult) {
      AuthService().signIn(authResult);
    };

    final PhoneVerificationFailed verificationfailed =
        (FirebaseAuthException authException) {
      print('${authException.message}');
    };

    final PhoneCodeSent smsSent = (String verId, [int forceResend]) {
      this.verificationId = verId;
      setState(() {
        this.codeSent = true;
      });
    };

    final PhoneCodeAutoRetrievalTimeout autoTimeout = (String verId) {
      this.verificationId = verId;
    };

    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phoneNo,
        timeout: const Duration(seconds: 5),
        verificationCompleted: verified,
        verificationFailed: verificationfailed,
        codeSent: smsSent,
        codeAutoRetrievalTimeout: autoTimeout);
  }

  String phoneNumber = "";
  bool codeSent = false;
  String verificationId, smsCode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.close,
            size: 30,
            color: Colors.white,
          ),
          title: Text(
            "Continue with phone",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          textTheme: Theme.of(context).textTheme,
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.7, 0.9],
                    colors: [
                      Color(0xFFFFFFFF),
                      Color(0xFFF7F7F7),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                      child: Image.asset('assets/images/holding-phone.png'),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 14, horizontal: 64),
                      child: Text(
                        "You'll receive a 4 digit code to verify next.",
                        style: TextStyle(
                          fontSize: 22,
                          color: Color(0xFF818181),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Row(children: [
                        Center(
                          child: Container(
                            width: 230,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Enter your phone",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    hintText: ' Enter your phone number',
                                    prefixText: '+91',
                                    prefixIcon: Icon(Icons.phone),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                    border: OutlineInputBorder(),
                                  ),
                                  onChanged: (val) {
                                    setState(() {
                                      phoneNumber = val;
                                    });
                                  },
                                ),
                                codeSent
                                    ? Center(
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 25.0, right: 25.0),
                                            child: TextFormField(
                                              keyboardType: TextInputType.phone,
                                              decoration: InputDecoration(
                                                hintText: 'Enter OTP',
                                                prefixIcon: Icon(Icons.vpn_key),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.grey)),
                                                border: OutlineInputBorder(),
                                              ),
                                              onChanged: (val) {
                                                setState(() {
                                                  this.smsCode = val;
                                                });
                                              },
                                            )),
                                      )
                                    : Container(),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 25.0, right: 12.0, top: 10),
                            child: RaisedButton(
                                child: Center(
                                    child: codeSent
                                        ? Text(
                                            'Continue',
                                            style: TextStyle(fontSize: 20),
                                          )
                                        : Text(
                                            'Verify',
                                            style: TextStyle(fontSize: 20),
                                          )),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                onPressed: () {
                                  setState(() {
                                    this.phoneNumber = '+91' + phoneNumber;
                                  });

                                  AuthService()
                                      .savePhoneNumber(this.phoneNumber);
                                  codeSent
                                      ? AuthService()
                                          .signInWithOTP(
                                              smsCode, verificationId)
                                          .then((value) => Navigator.of(context)
                                              .push(MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomeScreen())))
                                      : verifyPhone(phoneNumber);
                                })),
                      ])))
            ],
          ),
        ));
  }
}
