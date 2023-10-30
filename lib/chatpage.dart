import 'package:facebppk2/menu.dart';
import 'package:facebppk2/messagepage.dart';
import 'package:facebppk2/search.dart';
import 'package:facebppk2/widgets/chat.dart';
import 'package:facebppk2/widgets/online.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          // automaticallyImplyLeading: false,

          title: const Text('Chat'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(100)),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Menu(),
                          ));
                    },
                    icon: const Icon(Icons.settings)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(100)),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.bookmark_add_rounded))),
            ),
          ],
        ),
        body: ListView(
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 40,
                  child: TextFormField(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Search(),
                          ));
                    },
                    decoration: InputDecoration(
                        hintText: 'search',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                )),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Online(profile: 'image/img33.jpg'),
                  Online(profile: 'image/img22.jpg'),
                  Online(profile: 'image/img11.jpg'),
                  Online(profile: 'image/img8.jpg'),
                  Online(profile: 'image/img9.jpg'),
                  Online(profile: 'image/img7.jpg')
                ],
              ),
            ),
            Chat(name: 'Munshir', profile: 'image/img0.jpg'),
            Chat(name: 'Shahanas', profile: 'image/img2.jpg'),
            Chat(name: 'Famshid', profile: 'image/img3.jpg'),
            Chat(name: 'fahad', profile: 'image/img4.jpg'),
            Chat(name: 'Nasif ', profile: 'image/img5.jpg'),
            Chat(name: 'rufaid', profile: 'image/img6.jpg'),
            Chat(name: 'Rabin', profile: 'image/img01.jpg'),
          ],
        ));
  }
}
