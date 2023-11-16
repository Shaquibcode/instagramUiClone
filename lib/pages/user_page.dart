import 'package:flutter/material.dart';
import 'package:instaclone/tabs/grid_view_tab.dart';
import 'package:instaclone/tabs/tags_view_tab.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<String> highlightsCover = [
    "images/highlight_1.png",
    "images/highlight_2.png",
    "images/highlight_3.png",
    "images/1.png",
    "images/highlight_4.png",
  ];
  List<String> highlightsName = [
    "Flutter",
    "Dart",
    "Firebase",
    "Getx",
    "New",
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Theme.of(context).appBarTheme.backgroundColor?.withOpacity(0),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          "Shaquib Nz",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("images/1.png"),
                ),
              ),
              const SizedBox(
                width: 45,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const Text(
                              "0",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: screenHeight * 0.01,
                            ),
                            const Text(
                              "Posts",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: screenWidth * 0.1,
                        ),
                        Column(
                          children: [
                            const Text(
                              "20",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: screenHeight * 0.01,
                            ),
                            const Text(
                              "Followers",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: screenWidth * 0.1,
                        ),
                        Column(
                          children: [
                            const Text(
                              "200",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: screenHeight * 0.01,
                            ),
                            const Text(
                              "Following",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Shaquib",
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Flutter Developer"),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 40,
                    width: 170,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Edit profile",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 40,
                  width: 170,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Share profile",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: Container(
                  width: 50,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.person_add_alt_1_outlined),
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 15),
          //   child: Column(
          //     children: [
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           const Text(
          //             "Suggested For You",
          //             style: TextStyle(
          //                 fontSize: 16, fontWeight: FontWeight.bold),
          //           ),
          //           TextButton(
          //             onPressed: () {},
          //             child: const Text(
          //               "See All",
          //               style: TextStyle(
          //                 fontWeight: FontWeight.bold,
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //       // Align(
          //       //   alignment: Alignment.centerLeft,
          //       //   child: Container(
          //       //     height: 220,
          //       //     width: 180,
          //       //     decoration: BoxDecoration(
          //       //         border:
          //       //             Border.all(color: Colors.grey.withOpacity(.3))),
          //       //     child: Column(
          //       //       crossAxisAlignment: CrossAxisAlignment.center,
          //       //       children: [
          //       //         const Padding(
          //       //           padding: EdgeInsets.only(top: 5, right: 10),
          //       //           child: Stack(
          //       //             clipBehavior: Clip.none,
          //       //             children: [
          //       //               CircleAvatar(
          //       //                 radius: 40,
          //       //                 backgroundImage: AssetImage("images/2.png"),
          //       //               ),
          //       //               Positioned(
          //       //                 top: 20,
          //       //                 left: 15,
          //       //                 child: CircleAvatar(
          //       //                   radius: 40,
          //       //                   backgroundImage:
          //       //                       AssetImage("images/3.png"),
          //       //                 ),
          //       //               ),
          //       //             ],
          //       //           ),
          //       //         ),
          //       //         const SizedBox(
          //       //           height: 40,
          //       //         ),
          //       //         const Text.rich(
          //       //           TextSpan(children: [
          //       //             TextSpan(
          //       //                 text: "Find More People\n",
          //       //                 style: TextStyle(
          //       //                     fontSize: 16,
          //       //                     fontWeight: FontWeight.bold)),
          //       //             TextSpan(
          //       //                 text: "       To Follow",
          //       //                 style: TextStyle(
          //       //                     fontSize: 16,
          //       //                     fontWeight: FontWeight.bold)),
          //       //           ]),
          //       //         ),
          //       //         const SizedBox(
          //       //           height: 20,
          //       //         ),
          //       //         Container(
          //       //           height: 30,
          //       //           width: 150,
          //       //           decoration: BoxDecoration(
          //       //             borderRadius: BorderRadius.circular(10),
          //       //             color: Colors.grey.withOpacity(.3),
          //       //           ),
          //       //           child: const Center(
          //       //             child: Text(
          //       //               "See All",
          //       //               style: TextStyle(fontWeight: FontWeight.bold),
          //       //             ),
          //       //           ),
          //       //         ),
          //       //       ],
          //       //     ),
          //       //   ),
          //       // ),
          //     ],
          //   ),
          // ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                top: 10,
                left: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Story Highlights",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Keep your favorite stories on your profile",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
              right: 8,
              top: 5,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  5,
                  (index) => Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 38,
                          backgroundImage: const AssetImage(
                              "images/highlight_cover.png"),
                          child: CircleAvatar(
                            radius: 32,
                            backgroundImage:
                                AssetImage(highlightsCover[index]),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          highlightsName[index],
                          style: const TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Expanded(
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  TabBar(
                    tabs: [
                      Tab(
                        icon: Icon(
                          Icons.grid_on,
                          color: Colors.black,
                          size: 35,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.person_pin_outlined,
                          color: Colors.black,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        GridTab(),
                        TagsView(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
