import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:squadapp/widgets/constants.dart';

class HomePage extends StatefulWidget {
  static const id = "/home";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> interests = [
    "All",
    "Lifestyle",
    "Programming",
    "Cooking",
    "Sport",
    "Politics",
    "Gaming",
    "Health",
  ];

  String selectedInterest = "All";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: kPrimaryColor,
          onPressed: () {},
          label: const Text(
            "Create",
            style: TextStyle(color: Colors.white),
          ),
          icon: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 8,
          ),
          decoration: const BoxDecoration(
            color: kLightDarkColor,
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 29, 29, 29),
                blurRadius: 5,
                spreadRadius: 3,
              ),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.quote_bubble_fill),
                iconSize: 28,
                tooltip: "Q&A",
              ),
              const SizedBox(
                width: 17,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.search),
                iconSize: 28,
                tooltip: "Feeds",
              ),
              const SizedBox(
                width: 17,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.person),
                iconSize: 28,
                tooltip: "Profile",
              ),
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const Padding(
            //   padding: EdgeInsets.only(
            //     left: 20.0,
            //     top: 20,
            //   ),
            //   child: Text(
            //     "Squad",
            //     style: TextStyle(
            //       fontSize: 18,
            //       fontWeight: FontWeight.bold,
            //       letterSpacing: 1.2,
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30,
              child: ListView.builder(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 10,
                ),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedInterest = interests[index];
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 100),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 5,
                      ),
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: selectedInterest == interests[index]
                            ? kPrimaryColor
                            : kLightDarkColor,
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: Text(
                        interests[index],
                        style: TextStyle(
                          fontSize: 15,
                          color: selectedInterest == interests[index]
                              ? Colors.white
                              : Colors.grey,
                          fontWeight: selectedInterest == interests[index]
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: interests.length,
              ),
            ),
            Expanded(
              child: ShaderMask(
                shaderCallback: (Rect rect) {
                  return const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.red,
                      Colors.transparent,
                      Colors.transparent,
                      Colors.red
                    ],
                    stops: [
                      0.0,
                      0.05,
                      0.8,
                      1.0,
                    ],
                  ).createShader(rect);
                },
                blendMode: BlendMode.dstOut,
                child: ListView.builder(
                  padding: const EdgeInsets.only(
                    top: 30,
                    bottom: 100,
                  ),
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (ctx, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.only(
                          bottom: 40,
                          left: 20,
                          right: 20,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 22,
                        ),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: kLightDarkColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Politics",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                  ),
                                ),
                                Text(
                                  "2hr ago",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const Text(
                              "Healthy Lifestyles",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            const Text(
                              "What a bug track! A great way to start your journey by discussing with the experienced mentors",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white54,
                                height: 1.3,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 0.0),
                                  child: Container(
                                    height: 28,
                                    width: 28,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: const [
                                        BoxShadow(
                                          color:
                                              Color.fromARGB(255, 43, 43, 43),
                                          blurRadius: 5,
                                          spreadRadius: 3,
                                        ),
                                      ],
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(
                                        "https://img.freepik.com/free-photo/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg?w=2000",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Text(
                                  "Pratik JH",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 0.13,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 15,
                              ),
                              width: double.infinity,
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 0.0),
                                      child: Container(
                                        height: 28,
                                        width: 28,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 43, 43, 43),
                                              blurRadius: 5,
                                              spreadRadius: 3,
                                            ),
                                          ],
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(
                                            "https://img.freepik.com/free-photo/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg?w=2000",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 25.0),
                                      child: Container(
                                        height: 28,
                                        width: 28,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 43, 43, 43),
                                              blurRadius: 5,
                                              spreadRadius: 3,
                                            ),
                                          ],
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(
                                            "https://img.freepik.com/free-photo/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg?w=2000",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 50.0),
                                      child: Container(
                                        height: 28,
                                        width: 28,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 43, 43, 43),
                                              blurRadius: 5,
                                              spreadRadius: 3,
                                            ),
                                          ],
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(
                                            "https://img.freepik.com/free-photo/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg?w=2000",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 85),
                                      child: const Text(
                                        "112 Visitors",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 7,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: kLighterColor,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        height: 8,
                                        width: 8,
                                        margin: const EdgeInsets.only(right: 7),
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: kDarkColor,
                                        ),
                                      ),
                                      Container(
                                        height: 8,
                                        width: 8,
                                        margin: const EdgeInsets.only(right: 7),
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.amber,
                                        ),
                                      ),
                                      Container(
                                        height: 8,
                                        width: 8,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: kDarkColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
