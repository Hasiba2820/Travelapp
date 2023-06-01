import 'package:flutter/material.dart';
import 'package:untitled/screens/demo.dart';

import '../model/model_class.dart';

class Page_2 extends StatefulWidget {
  const Page_2({Key? key}) : super(key: key);

  @override
  State<Page_2> createState() => _Page_2State();
}

class _Page_2State extends State<Page_2> {
  final travelinf = Travel.TravelInfo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),

        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("images/back.jpg"),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              "Let's enjoy",
              style: myStyle(20, Colors.grey.shade600),
            ),
            Text(
              "Your Vacation!",
              style: myStyle(20, Colors.black, FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 50,
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(40)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.search),
                      Text(
                        "Search your trip",
                        style: myStyle(13, Colors.grey.shade800),
                      )
                    ],
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.manage_search, size: 30),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Text(
                    "All",
                    style: myStyle(15, Colors.lightBlueAccent, FontWeight.bold),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "New",
                    style: myStyle(15, Colors.grey.shade600, FontWeight.bold),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Most Viewed",
                    style: myStyle(15, Colors.grey.shade600, FontWeight.bold),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Recommended",
                    style: myStyle(15, Colors.grey.shade600, FontWeight.bold),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                  itemCount: travelinf.length,
                  itemBuilder: (context, index) {
                    var travel = travelinf[index];
                    return Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(travel.img),
                        ),
                        Positioned(
                            bottom: 20,
                            left: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  travel.name,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    Text(travel.location,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20)),
                                  ],
                                ),
                              ],
                            )),
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Popular Catagories",
              style: myStyle(20, Colors.grey.shade800, FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("images/hotel.png"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Hotel",
                      style: myStyle(15, Colors.grey.shade800),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("images/events.jpg"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Events",
                      style: myStyle(15, Colors.grey.shade800),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("images/camping.jpg"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Camp",
                      style: myStyle(15, Colors.grey.shade800),
                    )
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("images/trips.jpg"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Trip",
                      style: myStyle(15, Colors.grey.shade800),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
