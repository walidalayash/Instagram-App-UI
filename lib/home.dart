import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //list of image profile
  List<String> image = [
    "asset/images/person.jpg",
    "asset/images/person.jpg",
    "asset/images/person.jpg",
    "asset/images/person.jpg",
    "asset/images/person.jpg",
    "asset/images/person.jpg"
  ];
//list of post image
  List<String> post = [
    "asset/images/pic.png",
    "asset/images/pic.png",
    "asset/images/pic.png",
    "asset/images/pic.png",
    "asset/images/pic.png",
    "asset/images/pic.png"
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              //appbar
              appbarUI(width),
              //END APPBAR//
              ///////////////////////////////////////////////////////
              
              SizedBox(
                height: 100.0,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: image.length,
                  itemBuilder: (context, index) =>
                      //profile pic and add his story

                      Row(children: [
                    index == 0
                        ? mystory(index)
                        //profile pic and add his story end here
                        //
                        //other story
                        :
                        //space between stories
                        const SizedBox(
                            width: 20,
                          ),
                    otherstory(index),
                  ]),
                ),
              ),
              //END STORY//
              ////////////////////////////////////////////////
              //post//
              ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: post.length,
                itemBuilder: (context, index) => Column(
                  children: [postwidget(width, index)],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

//appbar widget
  Widget appbarUI(double width) {
    return Row(
      children: [
        Image.asset(
          "asset/images/logo.png",
        ),

        //space
        SizedBox(
          width: width * 0.25,
        ),
        SizedBox(
          width: 70,
          height: 70,
          child: IconButton(
            onPressed: null,
            icon: Image.asset("asset/images/add_post.png"),
          ),
        ),
        SizedBox(
          width: 70,
          height: 70,
          child: IconButton(
            onPressed: null,
            icon: Image.asset("asset/images/message.png"),
          ),
        ),
      ],
    );
  }

  ///////////////////////////////////
  //my story widget
  Widget mystory(int index) {
    return Row(
      children: [
        Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 70,
                  width: 75,
                  decoration: const BoxDecoration(
                      color: Colors.grey, shape: BoxShape.circle),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(65.0),
                    child: Image.asset(
                      image[index],
                      width: 110.0,
                      height: 110.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(39, 30, 0, 0),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                              color: Colors.black, shape: BoxShape.circle),
                        ),
                      ),
                      const IconButton(
                        onPressed: null,
                        icon: Icon(Icons.add_circle, color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Text(
              "Your Story",
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 20,
        )
      ],
    );
  }

  /////////////////////////////////
  //other story widget
  Widget otherstory(int index) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(112),
              ),
              child: Container(
                height: 70,
                width: 75,
                decoration: const BoxDecoration(
                    color: Colors.grey, shape: BoxShape.circle),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(65.0),
                  child: Image.asset(
                    image[index],
                    width: 110.0,
                    height: 110.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
        const Text(
          "walidalayash",
          style: TextStyle(
            color: Colors.white70,
          ),
        ),
      ],
    );
  }

  Widget postwidget(double width, int index) {
    return Column(
      children: [
        //space between posts
        const SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(112),
                  ),
                  child: Container(
                    height: 30,
                    width: 35,
                    decoration: const BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(65.0),
                      child: Image.asset(
                        image[0],
                        width: 110.0,
                        height: 110.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Text(
                "walidalayash",
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
            ),
            SizedBox(
              width: width * 0.58,
            ),
            const IconButton(
              onPressed: null,
              icon: Icon(Icons.more_horiz_rounded, color: Colors.white),
            ),
          ],
        ),
        Image.asset(post[index]),
        Row(
          children: [
            Image.asset('asset/images/activity.png'),
            Image.asset('asset/images/comm.png'),
            Image.asset('asset/images/message.png'),
            const SizedBox(
              width: 50,
            ),
            Container(
              height: 5,
              width: 5,
              decoration: const BoxDecoration(
                  color: Colors.blue, shape: BoxShape.circle),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              height: 5,
              width: 5,
              decoration: const BoxDecoration(
                  color: Colors.grey, shape: BoxShape.circle),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              height: 5,
              width: 5,
              decoration: const BoxDecoration(
                  color: Colors.grey, shape: BoxShape.circle),
            ),
            SizedBox(
              width: width * 0.32,
            ),
            Image.asset('asset/images/save.png'),
          ],
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 370, 0),
          child: Text(
            '57 likes',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 340, 0),
          child: Text(
            'walidalayash',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 290, 0),
          child: Text(
            'View all 9 comments',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 330, 0),
          child: Text(
            '11 minutes ago',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
