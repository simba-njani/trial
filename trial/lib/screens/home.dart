import 'package:flutter/material.dart';
import 'package:trial/res/media.dart';
import 'package:trial/utils/friends.dart';
import 'package:trial/utils/stacked_users.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue[300],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey[200],
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey[200],
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey[200],
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey[200],
              ),
              label: "")
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          //welcome text

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  children: [
                    Text(
                      "Hi, Dereck",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Bill Splitter",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                    padding: const EdgeInsets.all(13),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Icon(Icons.person, color: Colors.red))
              ],
            ),

            const SizedBox(
              height: 25,
            ),

            // split with

            Container(
              width: size.width * 0.9,
              height: 180,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(14)),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Split With"),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 40,
                              width: 180,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(18)),
                              child: Row(
                                children: [
                                  StackedUsers(
                                      color: Colors.pink.shade200,
                                      icon: Icons.person,
                                      iconColor: Colors.red),
                                  StackedUsers(
                                      color: Colors.yellow.shade200,
                                      icon: Icons.person,
                                      iconColor: Colors.green),
                                  const StackedUsers(
                                      color: Colors.purple,
                                      icon: Icons.person,
                                      iconColor: Colors.blue),
                                  const StackedUsers(
                                      color: Colors.white,
                                      icon: Icons.add,
                                      iconColor: Colors.black),
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Total Bill",
                              style: TextStyle(color: Colors.grey[400]),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "\$877.22",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.blue[500],
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                                child: Text(
                              "Split Now",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                        const ClipOval(
                          child: Image(
                            image: AssetImage(AppMedia.food),
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // nearby friends
            const SizedBox(
              height: 25,
            ),

            Expanded(
              child: Container(
                width: size.width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                  child: Column(
                    children: [
                      const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Nearby Friends",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ]),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Friends(
                              boxColor: Colors.yellow.shade200,
                              iconColor: Colors.red,
                              username: "Fox"),
                          Friends(
                              boxColor: Colors.pink.shade100,
                              iconColor: Colors.green,
                              username: "Hope"),
                          Friends(
                              boxColor: Colors.purple.shade200,
                              iconColor: Colors.blue,
                              username: "John"),
                          Friends(
                              boxColor: Colors.blue.shade100,
                              iconColor: Colors.red,
                              username: "smith"),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                    const Row(
                      children: [Text("Recent Split", style: TextStyle(fontWeight: FontWeight.bold),)],
                    ),
                   const SizedBox(
                        height: 20,
                      ),

                      Container(
                        child: Column(children: [
                          Container(
                            width: 300,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.blue[100],
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Row(
                              children: [Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Icon(Icons.person, color: Colors.blue,)),
                              )
                              
                              ],
                              
                            ),
                          )
                        ],),
                      )

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
