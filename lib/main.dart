import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weplay Demo',
      theme: ThemeData(),
      home: MyHomePage(title: 'we play'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> imageNameList = [
    "Futsal",
    "Cricket",
    "Basket Ball",
    "Swimming",
    "Football",
    "Badminton",
  ];
  List<String> imageList = [
    'assets/images/futsal.jpg',
    'assets/images/cricket.jpg',
    'assets/images/basketball.jpg',
    'assets/images/swimming.jpg',
    'assets/images/football.jpg',
    'assets/images/badminton.jpg',
  ];
  List<String> imageNameList1 = [
    'Godawari Futsal',
    'Khel Maidan Recreation Centre',
    'Shantinagar Futsal And Sports Centre',
    'Lalitpur 5A side Futsal',
    'Maa Banglamukhi Futsal',
    'Bhaktapur futsal',
  ];
  List<String> imageList1 = [
    'assets/images/futsal1.jpg',
    'assets/images/futsal2.jpg',
    'assets/images/futsal3.jpg',
    'assets/images/futsal4.jpeg',
    'assets/images/futsal5.jpg',
    'assets/images/futsal6.jpg',
  ];
  List<String> imageNameList2 = [
    '5 Vs 5',
    '5 Vs 5',
    '5 Vs 5',
    '5 Vs 5',
    '5 Vs 5',
    '5 Vs 5',
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('We Play'),
        leading: GestureDetector(
          onTap: () {},
          child: Icon(Icons.menu),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.notifications),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Stack(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/futsal1.jpg',
                      ),
                      Positioned(
                        bottom: 80.0,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            'Futsal',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                            overflow: TextOverflow.visible,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 8.0),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                flex: 1,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText:
                                        "What would you like to play today?",
                                    hintStyle: TextStyle(color: Colors.white),
                                    icon: Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                  ),
                                )),
                            Expanded(
                                flex: 0,
                                child: Row(
                                  children: [
                                    //IconButton(
                                    // onPressed: () {}, icon: Icon(Icons.mic, color: Colors.white,),
                                    //),
                                    VerticalDivider(
                                      color: Colors.white,
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.more_horiz,
                                          color: Colors.white,
                                        )),
                                  ],
                                ))
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 20.0,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            'All your favourite futsal venues with unique experiences. Enjoy futsal with WePlay.',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                            overflow: TextOverflow.visible,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Text(
                'Explore Sports',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageList.length,
                  itemBuilder: (ctx, index) {
                    print('index: $index');
                    final image = imageList[index];
                    final name = imageNameList[index];
                    return Padding(
                      padding: const EdgeInsets.only(
                        right: 10.0,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            '$image',
                            height: 100,
                            width: 100,
                          ),
                          Text(
                            '$name',
                          )
                        ],
                      ),
                    );
                  },
                ),
                //Image.asset('assets/images/futsal.jpg'),
              ),
            ),
            //Column(
            //children: [
            //Image.asset("assets/images/off.jpg"),
            //],
            //),
            Container(
              child: Text(
                "Offers for You",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 350.0,
              child: GridView(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.7,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  // mainAxisExtent: 70,
                  crossAxisCount: 2,
                ),
                children: [
                  Container(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/futsal2.jpg",
                          height: 180,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: 91,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Shantinagar futsal And Sports Centre",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.clip,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "All Time",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "10% off",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.clip,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/futsal3.jpg",
                          height: 180,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: 91,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Buddhanagar Futsal",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.clip,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "All Time",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "10% off",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.clip,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/futsal4.jpeg",
                          height: 180,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: 91,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Maa Banglamukhi Futsal",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.clip,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "All Time",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "10% off",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.clip,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/futsal5.jpg",
                          height: 180,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: 91,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "The Mates Futsal",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.clip,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "All Time",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "10% off",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.clip,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/futsal6.jpg",
                          height: 180,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: 91,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hardik Futsal",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.clip,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "All Time",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "10% off",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.clip,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Futsal",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "Explore all",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageList1.length,
                  itemBuilder: (ctx, index) {
                    print('index: $index');
                    final image1 = imageList1[index];
                    final name1 = imageNameList1[index];
                    final name2 = imageNameList2[index];
                    return Padding(
                      padding: const EdgeInsets.only(
                        right: 10.0,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            '$image1',
                            height: 100,
                            width: 120,
                          ),
                          Column(
                            children: [
                              Text(
                                '$name1',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                '$name2',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 7,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
                //Image.asset('assets/images/futsal.jpg'),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Venues in Bhaktapur",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Explore a range of venues in bhaktapur-from 5A grounds to 7A grunds.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView.separated(
                      separatorBuilder: (ctx, index) {
                        return SizedBox(
                          width: 10.0,
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      itemCount: [
                        "assets/images/futsal1.jpg",
                        "assets/images/futsal1.jpg",
                        "assets/images/futsal1.jpg",
                        "assets/images/futsal1.jpg",
                        "assets/images/futsal1.jpg",
                      ].length,
                      itemBuilder: (cxt, index) {
                        final image = [
                          "assets/images/futsal1.jpg",
                          "assets/images/futsal2.jpg",
                          "assets/images/futsal3.jpg",
                          "assets/images/futsal4.jpeg",
                          "assets/images/futsal5.jpg",
                        ][index];
                        final name = [
                          "Suryabinayak 44800",
                          "Pepsicola",
                          "Unnamed Road",
                          "Hanumante Rd",
                          "Bhaktapur",
                        ][index];

                        return Stack(
                          children: [
                            Image.asset(
                              image,
                              height: 190,
                              width: 190,
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    "$name",
                                  ),
                                ),
                              ),
                              bottom: 10,
                              left: 10,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PlaySafe - WePlay against COVID-19",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 10,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      //color: Colors.lightGreen,
                      height: 60,
                      width: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Our COVID-19 response",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "PlaySafe Initiative",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.grey,
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      //color: Colors.lightGreen,
                      height: 60,
                      width: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Messages from our Team",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "Hear from our team",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.grey,
                            height: 10,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      //color: Colors.lightGreen,
                      height: 60,
                      width: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Resources for venue",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "How we're supporting needy venues",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.grey,
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      //color: Colors.lightGreen,
                      height: 60,
                      width: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Contact Tracing",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            "Answer some questions to help in tracing",
                            style: TextStyle(
                              fontSize: 8,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.grey,
                            height: 10,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            Container(
              //color: Colors.lightGreen,
              height: 400,
              width: 400,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 15,
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  childAspectRatio: 2,
                ),
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Our COVID-19 response",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "PlaySafe Initiative",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          color: Colors.grey,
                          height: 10,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Our COVID-19 response",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "PlaySafe Initiative",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          color: Colors.grey,
                          height: 10,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Our COVID-19 response",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "PlaySafe Initiative",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          color: Colors.grey,
                          height: 10,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Our COVID-19 response",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "PlaySafe Initiative",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          color: Colors.grey,
                          height: 10,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Our COVID-19 response",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "PlaySafe Initiative",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          color: Colors.grey,
                          height: 10,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Our COVID-19 response",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "PlaySafe Initiative",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          color: Colors.grey,
                          height: 10,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
            backgroundColor: Colors.lightGreen,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
            ),
            label: 'Explore',
            backgroundColor: Colors.lightGreen,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
            ),
            label: 'Connect',
            backgroundColor: Colors.lightGreen,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
            ),
            label: 'Inbox',
            backgroundColor: Colors.lightGreen,
          ),
        ],
      ),
    );
  }
}
