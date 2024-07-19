import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'myCurved.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

class GuestScreen extends StatefulWidget {
  const GuestScreen({super.key});

  @override
  State<GuestScreen> createState() => _GuestScreenState();
}

class _GuestScreenState extends State<GuestScreen> {
  List images = [
    {'image': 'images/people.png'},
    {'image': 'images/womenAvtar.png'},
    {'image': 'images/menAvtar.png'},
    {'image': 'images/womenAvtar.png'},
    {'image': 'images/menAvtar.png'},
    {'image': 'images/womenAvtar.png'},
    {'image': 'images/addpeople.png'},
  ];

  List tags = [
    {'tag': 'images/uicon.png'},
    {'tag': 'images/uicon.png'},
    {'tag': 'images/uicon.png'},
    {'tag': 'images/uicon.png'},
    {'tag': 'images/uicon.png'},
    {'tag': 'images/uicon.png'}
  ];

  List uBanner = [
    {
      'image': 'images/Ubanner.jpg',
    },
    {
      'image': 'images/Ubanner.jpg',
    },
    {
      'image': 'images/Ubanner.jpg',
    }
  ];
int _currentIndex = 0;
  final List<Widget> screens = [
    Center(child: Text('Home Screen')),
    Center(child: Text('Search Screen')),
    Center(child: Text('Chat Screen')),
    Center(child: Text('Feed Screen')),
    Center(child: Text('Personal Screen')),
  ];
  // int _currentIndex = 0;
  int _index = 0;

  final percent = 0.5;
  final percent2=0.4;
  final percent3=0.8;
  final duration = 3000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset(
                      'images/bellicon.png',
                      height: 25,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 120),
                    child: Image.asset(
                      'images/uPtclicon.png',
                      height: 25,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10, top:4),
                    child: Image.asset(
                      'images/searchicon.png',
                      height: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              const Divider(
                color: Color.fromARGB(255, 156, 156, 156),
                thickness: 0.1,
              ),
             
              SizedBox(height: 3),
              Container(
                height: 57,
                child: PageView.builder(
                  itemCount: images.length,
                  onPageChanged: (val) {
                    setState(() {
                      _index = val;
                    });
                  },
                  controller: PageController(viewportFraction: 0.15),
                  itemBuilder: (context, index) {
                    return Transform.scale(
                      scale: index == _index ? 1.33 : 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Container(
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 255, 255, 255),
                                image: DecorationImage(
                                  image: AssetImage(images[index]['image']!),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            if (index < tags.length && index != 0)
                              Positioned(
                                top: 24,
                                left: 28,
                                child: Container(
                                  width: 12,
                                  height: 15,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue,
                                    image: DecorationImage(
                                      image: AssetImage(tags[index]['tag']!),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 5),
              ClipPath(
                clipper: MyClipper(30),
                child: Container(
                  height: 120,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromARGB(255, 16, 255, 7),
                        Color.fromARGB(255, 43, 94, 54),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sanee Zahra',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 255, 235, 235),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '033333333333',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 236, 236),
                                  ),
                                ),
                                Text(
                                  'Prepay Uwon',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 236, 236),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, right: 10),
                                  child: RichText(
                                    text: const TextSpan(
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 232, 232),
                                      ),
                                      children: <InlineSpan>[
                                        TextSpan(
                                          text: 'Rs 5000.',
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '00',
                                          style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\nValidity: 23-09-24',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, right: 10),
                                  child: Container(
                                    height: 30,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 29, 73, 46),
                                      border: Border.all(
                                        color: Color.fromARGB(255, 230, 174, 154),
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: const Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'PAY BILL',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 8),
                child: const Text(
                  'Total Usage',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 5,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 32),
                  Text(
                    'OFFNET',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 72),
                  Text(
                    'INTERNET',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 100),
                  Text(
                    'TV',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(height: 4),
              const Divider(
                color: Color.fromARGB(255, 156, 156, 156),
                thickness: 0.4,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CircularPercentIndicator(
                          radius: 50,
                          lineWidth: 5,
                          progressColor: Color.fromARGB(255, 117, 179, 17),
                          animation: true,
                          animationDuration: duration,
                          percent: percent,
                          center: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '750',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 117, 179, 17),
                                ),
                              ),
                              Text(
                                'MB',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 117, 179, 17),
                                ),
                              ),
                              Text(
                                'remaining',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 95, 95, 95),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Text('Offnet',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Transform.translate(
                      offset: const Offset(0, 30),
                      child: Column(
                        children: [
                          CircularPercentIndicator(
                            radius: 68,
                            lineWidth: 5,
                            progressColor: Color.fromARGB(255, 117, 179, 17),
                            animation: true,
                            animationDuration: duration,
                            percent: percent2,
                            center: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '750',
                                  style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 117, 179, 17),
                                  ),
                                ),
                                Text(
                                  'MINS',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 117, 179, 17),
                                  ),
                                ),
                                Text(
                                  '1000',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 75, 75, 75),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        CircularPercentIndicator(
                          radius: 50,
                          lineWidth: 5,
                          progressColor: Color.fromARGB(255, 117, 179, 17),
                          animation: true,
                          animationDuration: duration,
                          percent: percent3,
                          center: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '800',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 117, 179, 17),
                                ),
                              ),
                              Text(
                                'MINS',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 117, 179, 17),
                                ),
                              ),
                              Text(
                                '1000',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 109, 109, 109),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Text('International',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 44, left: 162),
                child: Row(
                  children: const [
                    Text('Mobile Mins', style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 70),
                    Text('Details', style: TextStyle(fontWeight: FontWeight.bold)),
                    Icon(Icons.arrow_circle_right, color: Colors.black),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Center(
                child: Container(
                  height: 55,
                  width: 150 * 2.4,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 249, 255, 253),
                    border: Border.all(
                      color: Color.fromARGB(255, 228, 228, 228),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 10),
                        child: Column(
                          children: [
                            Image.asset(
                              height: 20,
                              'images/bundls.png',
                            ),
                            Text(
                              'Bundals',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 15),
                      VerticalDivider(
                        color: Color.fromARGB(255, 202, 202, 202),
                        thickness: 1,
                        indent: 13,
                        endIndent: 22,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 10),
                        child: Column(
                          children: [
                            Image.asset(height: 20, 'images/tagicon.png'),
                            Text('Add-Ons',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(width: 15),
                      VerticalDivider(
                        color: Color.fromARGB(255, 202, 202, 202),
                        thickness: 1,
                        indent: 13,
                        endIndent: 22,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 10),
                        child: Column(
                          children: [
                            Image.asset(height: 20, 'images/healthicon.png'),
                            Text('Health',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      VerticalDivider(
                        color: Color.fromARGB(255, 202, 202, 202),
                        thickness: 1,
                        indent: 13,
                        endIndent: 22,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 15),
                        child: Column(
                          children: [
                            Image.asset(height: 20, 'images/historyicon.png'),
                            Text('History',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
            height: 200,
            width: 150 * 2.4,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: uBanner.length,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    uBanner[index]['image'],
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
          ),
              )
            ],
          ),
        ),
      ),
       bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          color: const Color.fromARGB(255, 226, 226, 226),
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: const Color.fromARGB(255, 71, 71, 71),
          items: <CurvedNavigationBarItem>[
            CurvedNavigationBarItem(
              child: Icon(Icons.home, size: 30, color: Color.fromARGB(255, 255, 255, 255)),
              label: _currentIndex == 0 ? '' : 'Home',
            ),
            CurvedNavigationBarItem(
              child: Image.asset(
                height: 20,
                'images/pymenticon.png'),
              label: _currentIndex == 1 ? '' : 'Pyments',
            ),
            CurvedNavigationBarItem(
              child: Image.asset(
                height: 25,
                'images/shopicon.png'),
              label: _currentIndex == 2 ? '' : 'Shop',
            ),
            CurvedNavigationBarItem(
              child:Image.asset(
                height: 25,'images/helpicon.png'),
              label: _currentIndex == 3 ? '' : 'Help',
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.checklist_sharp, size: 30, color: const Color.fromARGB(255, 0, 0, 0)),
              label: _currentIndex == 4 ? '' : 'Menu',
            ),
          ],
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              
              
            });
          },
        ));

    
  }
}
