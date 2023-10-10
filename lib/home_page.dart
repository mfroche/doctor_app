import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset("assets/icons/Icons-Menu-Burger.png"),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: ClipOval(child: Image.asset("assets/icons/Bung.png")),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          children: <Widget>[
            HomeTitle(),
            SizedBox(
              height: 21,
            ),
            HomeSearch(),
            SizedBox(
              height: 21,
            ),
            Card(
              elevation: 0,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                        color: Color(0xFF4485FD),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset("assets/icons/007-stethoscope.png"),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Text('Consultation'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HomeSearch extends StatelessWidget {
  const HomeSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      decoration: BoxDecoration(
        color: Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(11),
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search doctors, medicine etc.",
            hintStyle: TextStyle(
              fontSize: 14,
              color: Color(0xFFCACCCF),
            ),
            border: InputBorder.none,
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Image.asset("assets/icons/Search.png"),
            ),
          ),
        ),
      ),
    );
  }
}

class HomeTitle extends StatelessWidget {
  const HomeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Find',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          ' your doctor',
          style: TextStyle(
              color: Colors.grey, fontSize: 30, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
