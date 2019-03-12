import 'package:flutter/material.dart';
import 'dart:async';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';

class QRScanner extends StatefulWidget {
  _ScanState createState() => new _ScanState();
}

class _ScanState extends State<QRScanner> {
  String barcode = "";

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Qr Code Scanner'),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: RaisedButton(
                  onPressed: scan,
                  color: Colors.blue,
                  textColor: Colors.white,
                  splashColor: Colors.blueGrey,
                  child: const Text("Start Camera Scan")),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                barcode,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }

  Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      setState(() => this.barcode = barcode);
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.barcode = 'The user did not grant the camera permission';
        });
      } else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException {
      setState(() => this.barcode =
          'null (User returbed using back button before scanning)');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }
}
