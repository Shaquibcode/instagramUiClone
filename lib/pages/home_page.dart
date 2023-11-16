import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
    "images/1.png",
    "images/2.png",
    "images/3.png",
    "images/4.png",
    "images/5.png",
    "images/6.png",
  ];
  List<String> postImages = [
    "images/post_1.png",
    "images/post_2.png",
    "images/post_3.png",
    "images/post_4.png",
    "images/post_5.png",
    "images/post_6.png",
  ];
  List<String> name = [
    "Shaquib Nz",
    "Bobby",
    "Aquib",
    "Asad",
    "Afaque",
    "Arsh",
  ];
  List<String> caption = [
    "I am a Flutter Developer",
    "Love To Travel",
    "Want to go to Foreign",
    "Cars and Bikes",
    "New Phone",
    "Movies and Docs",
  ];
  List<String> comment = [
    "View all 150 Comments",
    "View all 47 comments",
    "View all 29 comments",
    "View all 32 comments",
    "View all 17 comments",
    "View all 40 comments",
  ];

  //Refresh Function
  Future<void> onRefresh() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Instagram",
          style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontFamily: "Inspiration",
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.heart),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.facebookMessenger),
          ),
        ],
      ),
      body: RefreshIndicator(
        color: Colors.grey,
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    6,
                    (index) => Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 38,
                            backgroundImage:
                                const AssetImage("images/story.png"),
                            child: CircleAvatar(
                              radius: 32,
                              backgroundImage: AssetImage(
                                profileImages[index],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            name[index],
                            style: const TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(),
              Column(
                children: List.generate(
                  6,
                  (index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: CircleAvatar(
                              radius: 14,
                              backgroundImage:
                                  const AssetImage("images/story.png"),
                              child: CircleAvatar(
                                radius: 12,
                                backgroundImage:
                                    AssetImage(profileImages[index]),
                              ),
                            ),
                          ),
                          Text(name[index]),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert),
                          ),
                        ],
                      ),
                      Image(
                        image: AssetImage(
                          postImages[index],
                        ),
                        height: 300,
                        width: 500,
                        fit: BoxFit.fitWidth,
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.heart),),
                          IconButton(onPressed: (){}, icon: const Icon(Icons.chat_bubble_outline),),
                          IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.bookmark),),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text.rich(
                              TextSpan(
                                children:[
                                  TextSpan(text: "Liked By"),
                                  TextSpan(text: " Hameed", style: TextStyle(fontWeight: FontWeight.bold)
                                  ),
                                  TextSpan(text: " and"),
                                  TextSpan(text: " Others", style: TextStyle(fontWeight: FontWeight.bold)
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text.rich(
                              TextSpan(
                                children:
                                  [
                                    TextSpan(
                                      text: name[index], style: const TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text: ' ${caption[index]} ',
                                    ),
                                  ]
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              comment[index], style: const TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
