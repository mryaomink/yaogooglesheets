import 'package:flutter/material.dart';

class SuksesPage extends StatelessWidget {
  const SuksesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Data Berhasil Di Input',
              style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.red,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              height: 50.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back To Home'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
