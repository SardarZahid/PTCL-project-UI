import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

import 'package:flutter/material.dart';
import 'myCurved.dart';

class MemberScreen extends StatefulWidget {
  const MemberScreen({Key? key}) : super(key: key);

  @override
  State<MemberScreen> createState() => _MemberScreenState();
}

class _MemberScreenState extends State<MemberScreen> {
  List images = [
    {'image': 'images/people.png'},
    {'image': 'images/womenAvtar.png'},
    {'image': 'images/menAvtar.png'},
    {'image': 'images/womenAvtar.png'},
    {'image': 'images/menAvtar.png'},
    {'image': 'images/womenAvtar.png'},
    {'image': 'images/menAvtar.png'},
  ];

  List tags = [
    {'tag': 'images/uicon.png'},
    {'tag': 'images/uicon.png'},
    {'tag': 'images/uicon.png'},
    {'tag': 'images/uicon.png'},
    {'tag': 'images/uicon.png'},
    {'tag': 'images/uicon.png'}
  ];
int _currentIndex = 0;
  final List<Widget> screens = [
    Center(child: Text('Home Screen')),
    Center(child: Text('Search Screen')),
    Center(child: Text('Chat Screen')),
    Center(child: Text('Feed Screen')),
    Center(child: Text('Personal Screen')),
  ];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     extendBody: true, 
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      resizeToAvoidBottomInset: true,
      
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
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: Image.asset(
                          'images/uPtclicon.png',
                          height: 25,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 140, top: 5),
                        child: Image.asset(
                          'images/searchicon.png',
                          height: 20,
                        ),
                      ),
                    ],
                  ),
                 const SizedBox(height: 2),
                const  Divider(
                    color: const Color.fromARGB(255, 90, 90, 90),
                    thickness: 0.1,
                  ),
                  SizedBox(height: 5),
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
                    clipper: MyClipper(30), // Pass a value for space
                    child: Container(
                      height: 120,
                      width: double.infinity,
                      decoration:const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color.fromARGB(255, 255, 120, 42),
                            Color.fromARGB(255, 219, 88, 0),
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
                                const  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Sanee Zahra',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromARGB(255, 255, 235, 235),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '033333333333',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 236, 236),
                                        ),
                                      ),
                                      Text(
                                        'Prepay Uwon',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 236, 236),
                                        ),
                                      ),
                                    ],
                                  ),
                               const   SizedBox(
                                    width: 98,
                                  ), // Add space between the texts if needed
            
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: RichText(
                                            text:const TextSpan(
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 255, 232, 232),
                                                ),
                                                children: <InlineSpan>[
                                              TextSpan(
                                                  text: 'Rs 1062.',
                                                  style: TextStyle(
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              TextSpan(
                                                  text: '93',
                                                  style: TextStyle(
                                                      fontSize: 19,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              TextSpan(
                                                  text: '\nValidity: 16-01-2025',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ])),
                                      ),
                                    const  SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 140,
                                        decoration: BoxDecoration(
                                            color: Colors.brown,
                                            border: Border.all(
                                                color: Color.fromARGB(
                                                    255, 230, 174, 154)),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child:const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'RECHARGE +',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ]),
                      ),
                    ),
                  ),
                const  SizedBox(height: 10), // Add space between sections
                 const Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'Remaining Usage',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                 const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 100,
                            width: 90,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                width: 4.5,
                                color: Color.fromARGB(255, 202, 86, 44),
                              ),
                            ),
                            child:const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '74930',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 211, 91, 47),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  'MINS',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 211, 91, 47)),
                                ),
                                Text(
                                  '74930',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        const  SizedBox(height: 2),
                        const  Text(
                            'Calls',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Transform.translate(
                        offset: Offset(0, 35),
                        child: Column(
                          children: [
                            Container(
                              height:
                                  120, // Adjust height to match other containers
                              width: 130,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(
                                  width: 4.5,
                                  color: Color.fromARGB(255, 202, 86, 44),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RichText(
                                    text:const TextSpan(
                                      style: TextStyle(color: Colors.black),
                                      children: [
                                        TextSpan(
                                          text: '712.85\n',
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 211, 91, 47),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '\t\t\t\t\t\tGB\n',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 211, 91, 47)),
                                        ),
                                        TextSpan(
                                          text: '\t\t712.85',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
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
                      Column(
                        children: [
                          Container(
                            height: 100,
                            width: 90,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                width: 4.5,
                                color:const Color.fromARGB(255, 202, 86, 44),
                              ),
                            ),
                            child:const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '68150',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 211, 91, 47),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  'SMS',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 211, 91, 47)),
                                ),
                                Text(
                                  '68150',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                       const   Text(
                            'SMS',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
               const   SizedBox(
                    height: 35,
                  ),
                const  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 170,
                        ),
                        child: Text(
                          'Internet',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Details'),
                          SizedBox(width: 4),
                          Icon(Icons.forward, size: 16),
                        ],
                      ),
                    ],
                  ),
               const   SizedBox(
                    height: 8,
                  ),
                  Center(
                      child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
            
                      border: Border.all(color: Color.fromARGB(255, 214, 214, 214)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 17, top: 10),
                        child: Column(
                          children: [
                            Image.asset(
                              height: 22,
                              
                              'images/bundls.png'),
                           const   SizedBox(height: 5,),
                            const  Text('Bundles', style: TextStyle(fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 124, 124, 124)),)
                          ],
                        ),
                      ),
                   const   SizedBox(width: 10,),
                    const    VerticalDivider(
                          color: const Color.fromARGB(255, 180, 180, 180),
                          thickness: 1,
                          indent: 12,
                          endIndent: 35,
                        ),
                       Padding(
                         padding: const EdgeInsets.only(top: 10, left: 15),
                         child: Column(
                            children: [
                              Image.asset(
                                height: 23,
                                'images/vas.png',),
                             const   SizedBox(height: 5,),
                           const     Text('VAS', style: TextStyle(fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 124, 124, 124)),)
                            ],
                         ),
                       ) ,
                     const  SizedBox(width: 13,),
                    const   VerticalDivider(
                          color: Color.fromARGB(255, 196, 196, 196),
                          thickness: 1,
                          indent: 12,
                          endIndent: 35,
                        ),
                       Padding(
                         padding: const EdgeInsets.only(top: 6, left: 10),
                         child: Column(
                          children: [
                            Image.asset(
                              height: 28,
                              'images/pathicon.png'),
                           
                           const   Text('\t\tLocation\nbaseed offer', style: TextStyle(color: const Color.fromARGB(255, 126, 126, 126), fontSize: 12, fontWeight: FontWeight.bold),)
                          ],
                         ),
                       ),
                        const   VerticalDivider(
                          color: Color.fromARGB(255, 196, 196, 196),
                          thickness: 1,
                          indent: 12,
                          endIndent: 35,
                        ),
                       Padding(
                         padding: const EdgeInsets.only(top: 9, left: 10),
                         child: Column(
                          children: [
                            Image.asset(
                              height: 22,
                              'images/exOffer.png'),
                           SizedBox(height: 3,),
                           const   Text('\t\tExclusive\n\t\t\t\t Offer', style: TextStyle(color: const Color.fromARGB(255, 126, 126, 126), fontSize: 12, fontWeight: FontWeight.bold),)
                          ],
                         ),
                       )
                    ],),
                  )),
                  SizedBox(height: 10,),
              const  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 13),
                      child: Text('Promotions', style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                    ),
                  Text('View all',style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 194, 84, 44), fontWeight: FontWeight.bold),)
                  
                  ],
                ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('images/uphoneBanner.jpg'),
                    fit: BoxFit.cover,
                ),
                )
              ),
            )
                ]),
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
                height: 25,
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
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              
              
            });
          },
        ));
  }
}