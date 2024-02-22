import 'package:flutter/material.dart';
import 'package:flutter_dom2/features/scanner/TQrScanner.dart';

class TQrScannerButton extends StatelessWidget {
  const TQrScannerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TQRScanner(),
                ),
              );
            },
            child: Text('Scan Qr Code'),
          ),
        ],
      ),
    );
  }
}
