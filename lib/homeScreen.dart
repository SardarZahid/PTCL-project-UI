import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/guest_Screen.dart';
import 'package:myapp/member_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController phoneNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset:
          true, // This allows the view to resize when the keyboard appears
      body: SafeArea(
        child: SingleChildScrollView(
          // This allows the entire screen to be scrollable
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    'EN ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 167, 87, 59),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   Container(
                    height: 24, // Adjust height to ensure it is visible
                    child: const VerticalDivider(
                      thickness: 1,
                      color: Color.fromARGB(255, 102, 102, 102),
                      width: 10,
                      indent: 4,
                      endIndent: 2,
                    ),
                  ),
                  const Text(
                    '  اردو',
                    style: TextStyle(color: Colors.white),
                  ),
                  const Spacer(),
                 const Padding(
                    padding:  EdgeInsets.only(right: 10),
                    child:  Image(
                      height: 25,
                      color: Colors.white,
                      image: AssetImage('images/faQicon.png'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('u',
                          style: GoogleFonts.notoSans(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontSize: 50,
                              fontWeight: FontWeight.bold)),
                      Text(
                        'ptcl',
                        style: GoogleFonts.slabo27px(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'ufone',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Image.asset(height: 10, width: 10, 'images/4g.png'),
                      const SizedBox(
                        width: 6,
                      ),
                      Image.asset(height: 20, 'images/ptclicon.png'),
                      const SizedBox(
                        width: 6,
                      ),
                      Image.asset(height: 20, 'images/flashicon.png')
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 130,
              ),
              Container(
                height: MediaQuery.of(context).size.height - 250,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                    padding: const EdgeInsets.only(top: 25, left: 20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Welcome to',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Image.asset(height: 45, 'images/uPtclicon.png'),
                          const SizedBox(
                            height: 13,
                          ),
                          const Text(
                            'Enter your Ufone / PTCL Number',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 124, 124, 124),
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20, top: 3),
                            child: Form(
                              key: _formKey,
                              child: TextFormField(
                                controller: phoneNoController,
                                decoration: InputDecoration(
                                    hintText: 'Enter your number',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color.fromARGB(
                                              255, 180, 180, 180)),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color.fromARGB(
                                                255, 170, 170, 170)),
                                        borderRadius:
                                            BorderRadius.circular(7))),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your phone number';
                                  } else if (!RegExp(r'^[0-9 ]+$')
                                      .hasMatch(value)) {
                                    return 'Please enter digits only';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 230),
                            child: Text('What can I login with?',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 105, 105, 105),
                                    fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const MemberScreen()),
                                    );
                                  }
                                },
                                child: Container(
                                  height: 40,
                                  width: 360,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 61, 61, 61),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                    child: Text('Continue',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const GuestScreen()),
                                  );
                                },
                                child: Container(
                                  height: 40,
                                  width: 360,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                    child: Text('Continue as a Guest',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Center(
                            child: RichText(
                              text: const TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: <InlineSpan>[
                                  TextSpan(text: 'By continuing you agree to '),
                                  TextSpan(
                                    text: 'Privacy Policy',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 199, 120, 1),
                                      decoration: TextDecoration.underline,
                                      decorationThickness: 1,
                                      decorationColor:
                                          Color.fromARGB(255, 194, 116, 0),
                                    ),
                                  ),
                                  TextSpan(text: ' and\n'),
                                  WidgetSpan(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 70),
                                      child: Text(
                                        'Terms & Conditions',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 199, 120, 1),
                                          decoration: TextDecoration.underline,
                                          decorationThickness: 1,
                                          decorationColor:
                                              Color.fromARGB(255, 221, 133, 0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
