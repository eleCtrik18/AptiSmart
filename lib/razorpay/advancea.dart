import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:flutter/material.dart';

class Advancea extends StatefulWidget {
  @override
  _AdvanceaState createState() => _AdvanceaState();
}

class _AdvanceaState extends State<Advancea> {
  Razorpay razorpay;
  TextEditingController textEditingController = new TextEditingController();
  @override
  void initState() {
    super.initState();

    razorpay = new Razorpay();

    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlerErrorFailure);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    razorpay.clear();
  }

  void openAdvanceaCheckout() {
    var options = {
      "key": "rzp_live_vmUPL771EAVqld",
      "order_id": "",
      "amount": (5099) * 100,
      "name": "Apti Smart",
      "description": "Payment for the Advance Course",
      "prefill": {"contact": "", "email": ""},
      "external": {
        "wallets": ["paytm"]
      }
    };

    try {
      razorpay.open(options);
    } catch (e) {
      print(e.toString());
    }
  }

  void handlerPaymentSuccess(PaymentSuccessResponse response) {
    print(response.paymentId.toString());

    Fluttertoast.showToast(
        msg: "Payment Successful for Advance Course",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.green[300],
        textColor: Colors.black,
        fontSize: 16.0);
  }

  void handlerErrorFailure(PaymentFailureResponse response) {
    print(response.message + response.code.toString());
    Fluttertoast.showToast(
        msg: "Payment Failed for Advance Course",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.red[300],
        textColor: Colors.black,
        fontSize: 16.0);
  }

  void handlerExternalWallet(ExternalWalletResponse response) {
    print(response.walletName);
    Fluttertoast.showToast(
        msg: "External Wallet",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.orange[300],
        textColor: Colors.black,
        fontSize: 16.0);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.0, vertical: 6.0),
                  child: Text(
                    "Checkout",
                    style: TextStyle(color: Colors.blue[900], fontSize: 26),
                  ),
                ),
              ),
            )
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          Opacity(
            opacity: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.ac_unit),
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Image.asset("assets/images/advancea.jpg"),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.symmetric(vertical: 25.0),
            width: 130.0,
            child: RaisedButton(
              onPressed: () {
                openAdvanceaCheckout();
              },
              padding: EdgeInsets.all(15.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              color: Color(0xFF37B5CD),
              child: Text(
                'Pay Now',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1.5,
                  fontSize: 18.0,
                  fontFamily: 'OpenSans',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
