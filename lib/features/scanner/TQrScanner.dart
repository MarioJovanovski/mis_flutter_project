import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_dom2/app.dart';
import 'package:flutter_dom2/utils/constants/colors.dart';
import 'package:flutter_dom2/utils/constants/sizes.dart';


class TQRScanner extends StatefulWidget {
  const TQRScanner({super.key});

  @override
  State<TQRScanner> createState() => _TQRScannerState();
}

class _TQRScannerState extends State<TQRScanner> {
  String qrResult = "Scanned data will apear here";

  Future<void> scanQr() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      if (!mounted) {
        return;
      }
      setState(() {
        this.qrResult = qrCode.toString();
      });
    } on PlatformException {
      qrResult = 'Fail to read QR Code';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Qr Scanner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              '$qrResult',
              style: TextStyle(color: TColors.black),
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            ElevatedButton(onPressed: scanQr, child: Text('Scan Code'))
          ],
        ),
      ),
    );
  }
}
