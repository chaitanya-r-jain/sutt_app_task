import 'package:flutter/material.dart';
import 'package:sutt_app_task/custom_widgets/my_carousels.dart';
import 'package:sutt_app_task/custom_widgets/my_list_views.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Center(
          child: Text(
            "HOME",
            style: TextStyle(
                color: Color.fromARGB(255, 30, 40, 49),
                fontSize: 24,
                fontWeight: FontWeight.w600),
          ),
        ),
        actions: <Widget>[
          IconButton(
            iconSize: 42,
            icon: Image.asset('assets/images/screen1/Frame 3712.png'),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          iconSize: 42,
          icon: Image.asset('assets/images/screen1/Frame 1000001417.png'),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              'Welcome!',
              style: TextStyle(
                  color: Color.fromARGB(255, 30, 40, 49),
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const SizedBox(
            height: 260,
            child: Screen1Carousel(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              elevation: 0,
              color: const Color.fromARGB(255, 2, 2, 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'Getting\nStarted',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Color.fromARGB(255, 85, 116, 152),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Countries',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color.fromARGB(204, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Image.asset(
                    'assets/images/screen1/image 4.png',
                    height: 182,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 60,
            width: 342,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: const BorderSide(width: 1, color: Color(0xFF02021E))),
              elevation: 0,
              child: const Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    'Search Country',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xFF787878),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    size: 24,
                    Icons.search,
                    color: Color(0xFF02021E),
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const CountrySelector(),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
