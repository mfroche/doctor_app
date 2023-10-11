import 'package:doctor_app/constants.dart';
import 'package:doctor_app/doctor_card.dart';
import 'package:doctor_app/doctor_page.dart';
import 'package:flutter/material.dart';

class DoctorCardSection extends StatelessWidget {
  const DoctorCardSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return DoctorPage(
                  image: 'assets/images/doctor1.png',
                  name: 'dr. Gilang Segara Bening',
                  specialty: 'Heart   •   Persahabatan Hospital',
                  info:
                      "dr. Gilang is one of the best doctors in the Persahabatan Hospital. He has saved more than 1000 patients in the past 3 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule.",
                  yr: '3',
                  ps: '1221',
                  rating: '5.5',
                );
              }),
            );
          },
          child: DoctorCard(
            image: "assets/images/doctor1.png",
            name: 'dr. Gilang Segara Bening',
            specialty: 'Heart   •   Persahabatan Hospital',
            ratings: '1221',
            notice: openCard,
          ),
        ),
        DoctorCard(
          image: "assets/images/doctor2.png",
          name: 'dr. Shabil Chan',
          specialty: 'Dental   •   Columbia Asia Hospital',
          ratings: '964',
          notice: openCard,
        ),
        DoctorCard(
          image: "assets/images/doctor3.png",
          name: 'dr. Mustakim',
          specialty: 'Eye   •   Salemba Carolus Hospital',
          ratings: '762',
          notice: closeCard,
        ),
        DoctorCard(
          image: "assets/images/doctor4.png",
          name: 'dr. Suprihatini',
          specialty: 'Heart   •   Salemba Carolus Hospital',
          ratings: '762',
          notice: openCard,
        ),
      ],
    );
  }
}
