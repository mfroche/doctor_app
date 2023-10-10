import 'package:doctor_app/topic_card_section.dart';
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
            SizedBox(height: 21),
            HomeSearch(),
            SizedBox(height: 21),
            TopicCardsSection(),
            SizedBox(height: 26),
            HeaderTopDoctor(),
            SizedBox(height: 21),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 88,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            "assets/images/doctor1.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      DoctorCard()
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'dr. Gilang Segara Bening',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4),
        Text(
          'Heart   •   Persahabatan Hospital',
          style: TextStyle(fontSize: 14, color: Color(0xFFAAAAAA)),
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.star, size: 11.5, color: Color(0xFFFFE848)),
                SizedBox(width: 3),
                Icon(Icons.star, size: 11.5, color: Color(0xFFFFE848)),
                SizedBox(width: 3),
                Icon(Icons.star, size: 11.5, color: Color(0xFFFFE848)),
                SizedBox(width: 3),
                Icon(Icons.star, size: 11.5, color: Color(0xFFFFE848)),
                SizedBox(width: 3),
                Icon(Icons.star, size: 11.5, color: Color(0xFFFFE848)),
                SizedBox(width: 5),
                Text(
                  '(1221)',
                  style: TextStyle(fontSize: 10, color: Color(0xFFC4C4C4)),
                ),
              ],
            ),
            SizedBox(width: 54),
            Container(
              padding: EdgeInsets.fromLTRB(0, 4, 0, 7),
              alignment: Alignment.center,
              width: 56,
              decoration: BoxDecoration(
                  color: Color(0xFFCCF5E1),
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                'Open',
                style: TextStyle(fontSize: 12, color: Color(0xFF00CC6A)),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class HeaderTopDoctor extends StatelessWidget {
  const HeaderTopDoctor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          'Top Doctors',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
            child: Text(
              'View All',
              style: TextStyle(
                color: Color(0xFF4485FD),
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
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
