import 'package:facebppk2/chatpage.dart';
import 'package:facebppk2/widgets/friendrequst.dart';
import 'package:facebppk2/search.dart';
import 'package:facebppk2/widgets/post.dart';
import 'package:facebppk2/widgets/stories.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'facebook',
            style: TextStyle(color: Colors.blue),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // margin: EdgeInsets.all(5),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(100)),
                child: IconButton(
                    onPressed: () {
                      DropdownButton(
                        onTap: null,
                        items: [
                          DropdownMenuItem(
                              onTap: () {},
                              child: Icon(Icons.add_a_photo_sharp)),
                          DropdownMenuItem(
                              child: Icon(Icons.video_collection_rounded)),
                        ],
                        onChanged: (value) {},
                      );
                    },
                    icon: const Icon(Icons.add)),
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatPage(),
                          ));
                    },
                    icon: const Icon(Icons.message)),
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Search(),
                            ));
                      },
                      icon: const Icon(Icons.search))),
            ),
          ],
        ),
        body: ListView(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('image/img9.jpg'),
              ),
              title: const TextField(
                decoration:
                    InputDecoration.collapsed(hintText: 'Whats on your mnd'),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.image,
                    color: Colors.green,
                  )),
            ),
            const Divider(
              thickness: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 170,
                        width: 120,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'image/img33.jpg',
                                ),
                                fit: BoxFit.cover),
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(25)),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 40,
                              bottom: 15,
                              child: Column(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 240, 241, 241),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                    child: const Icon(Icons.add),
                                  ),
                                  const Text(
                                    'Add story',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 248, 247, 247)),
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Story(
                          profil: 'image/img01.jpg', story: 'image/img01.jpg')),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Story(
                        profil: 'image/img4.jpg', story: 'image/img4.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Story(
                        profil: 'image/img3.jpg', story: 'image/img3.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Story(
                        profil: 'image/img5.jpg', story: 'image/img5.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Story(
                        profil: 'image/img8.jpg', story: 'image/img8.jpg'),
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 10,
            ),
            Post(
                name: 'ASIF',
                post: 'image/img5.jpg',
                profile: 'image/img5.jpg'),
            const Divider(
              thickness: 10,
            ),
            Post(
                name: 'Rishal',
                post: 'image/img4.jpg',
                profile: 'image/img4.jpg'),
            const Divider(
              thickness: 10,
            ),
            Post(
                name: 'Rumaiz ',
                post: 'image/img2.jpg',
                profile: 'image/img2.jpg'),
            const Divider(
              thickness: 10,
            ),
            Post(
                name: 'Sky',
                post: 'image/img11.jpg',
                profile: 'image/img11.jpg'),
            const Divider(
              thickness: 10,
            ),
            Post(
                name: 'Anas ',
                post: 'image/img01.jpg',
                profile: 'image/img00.jpg'),
            Post(
                name: 'Rufaid',
                post: 'image/story5.jpg',
                profile: 'image/story5.jpg')
          ],
        ));
  }
}


  // 

  //