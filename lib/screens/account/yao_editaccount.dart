import 'package:flutter/material.dart';

class YaoEditaccount extends StatelessWidget {
  const YaoEditaccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Details'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100.0,
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.edit),
                    ),
                    Text('Change profile pic')
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 36.0,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Name",
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Phone Number",
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Email",
            ),
          )
        ],
      ),
    );
  }
}
