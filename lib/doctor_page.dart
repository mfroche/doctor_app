import 'package:doctor_app/home_page.dart';
import 'package:doctor_app/specialty_section.dart';
import 'package:flutter/material.dart';

class DoctorPage extends StatelessWidget {
  final String image;
  final String name;
  final String specialty;
  final String info;
  final String yr;
  final String ps;
  final String rating;

  const DoctorPage({
    super.key,
    required this.image,
    required this.name,
    required this.specialty,
    required this.info,
    required this.yr,
    required this.ps,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(
              MaterialPageRoute(builder: (context) {
                return HomePage();
              }),
            );
          },
          icon: Image.asset("assets/icons/Icons-Back.png"),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/icons/Icons-Artboard.png"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              image,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(height: 7),
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 4),
                  Text(
                    specialty,
                    style: TextStyle(fontSize: 14, color: Color(0xFFAAAAAA)),
                  ),
                  SizedBox(height: 16),
                  Text(
                    info,
                    style: TextStyle(
                        height: 1.3, fontSize: 16, color: Color(0xFFC4C4C4)),
                  ),
                  SizedBox(height: 21),
                  SpecialtySection(yr: yr, ps: ps, rating: rating),
                  SizedBox(height: 24),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF4485FD),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset("assets/icons/Icons-Comment.png"),
                      ),
                      SizedBox(width: 13),
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFF00CC6A),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'Make an Appointment',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
