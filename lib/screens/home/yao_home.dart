import 'package:app_sample/screens/home/sukses_page.dart';
import 'package:app_sample/utility/google_sheet.dart';
import 'package:app_sample/utility/sheets_column.dart';
import 'package:flutter/material.dart';

class YaoHome extends StatefulWidget {
  const YaoHome({Key? key}) : super(key: key);

  @override
  State<YaoHome> createState() => _YaoHomeState();
}

class _YaoHomeState extends State<YaoHome> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController roleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 30.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: "Nama",
                ),
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: "Email",
                ),
              ),
              TextField(
                controller: phoneController,
                decoration: const InputDecoration(
                  hintText: "Phone Number",
                ),
              ),
              TextField(
                controller: roleController,
                decoration: const InputDecoration(
                  hintText: "Role",
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () async {
                    final data = {
                      SheetsColumn.nama: nameController.text.trim(),
                      SheetsColumn.email: emailController.text.trim(),
                      SheetsColumn.telepon: phoneController.text.trim(),
                      SheetsColumn.role: roleController.text.trim(),
                    };
                    await GoogleSheet.insert([data]).then((value) =>
                        Future.delayed(const Duration(milliseconds: 300), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SuksesPage(),
                            ),
                          );
                        }));
                  },
                  child: const Text('Submit Data'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
