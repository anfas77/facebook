import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            CircleAvatar(),
            SizedBox(
              width: 10,
            ),
            Text('name'),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.call,
                color: Colors.blue,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.videocam,
                color: Colors.blue,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          alignment: Alignment.bottomCenter,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'message',
              prefixIcon: const Icon(
                Icons.send,
                color: Colors.blue,
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(60)),
              icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.photo,
                    color: Colors.blue,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}

//