import 'package:facebppk2/search.dart';
import 'package:facebppk2/widgets/request.dart';

import 'package:flutter/material.dart';

class Friends extends StatelessWidget {
  const Friends({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Friends'),
        actions: [
          Container(
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
                          builder: (context) => const Search(),
                        ));
                  },
                  icon: const Icon(Icons.search))),
        ],
      ),
      body: ListView(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 217, 216, 214),
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.note_alt), Text('Suggestions')],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 217, 216, 214),
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.more),
                    SizedBox(
                      width: 2,
                    ),
                    Text('Your Friends')
                  ],
                ),
              ),
            )
          ],
        ),
        const Divider(
          thickness: 1,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Friend requstes',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('See all',
                  style: TextStyle(fontSize: 20, color: Colors.blue)),
            )
          ],
        ),
        Requst(image: 'image/img9.jpg', name: ' Anfas'),
        Requst(image: 'image/img2.jpg', name: ' rumaiz'),
        Requst(image: 'image/img3.jpg', name: ' Rumaiz'),
        Requst(image: 'image/img4.jpg', name: ' Rishal '),
        Requst(image: 'image/img5.jpg', name: 'Asif '),
        Requst(image: 'image/img6.jpg', name: 'Rijas '),
        Requst(image: 'image/img7.jpg', name: ' Minhaj'),
      ]),
    );
  }
}
