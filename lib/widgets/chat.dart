import 'package:facebppk2/messagepage.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  String profile;
  String name;
  Chat({super.key, required this.name, required this.profile});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MessagePage(),
            ));
      },
      leading: CircleAvatar(backgroundImage: AssetImage(profile)),
      title: Text(name),
      subtitle: const Text('online'),
      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.chat)),
    );
  }
}
// TODO Implement this library.