import 'package:doctor_app/constants.dart';
import 'package:doctor_app/doctor_card.dart';
import 'package:doctor_app/doctor_card_section.dart';
import 'package:doctor_app/home_page_header_doctor_section.dart';
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
      body: SingleChildScrollView(
        child: Container(
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
              SizedBox(height: 15),
              DoctorCardSection(),
            ],
          ),
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
