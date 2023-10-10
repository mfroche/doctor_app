import 'package:doctor_app/topic_card.dart';
import 'package:flutter/material.dart';

class TopicCardsSection extends StatelessWidget {
  const TopicCardsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TopicCard(
              image: "assets/icons/007-stethoscope.png",
              topic: 'Consultation',
              color: Color(0xFF4485FD),
            ),
            TopicCard(
              image: "assets/icons/004-teeth.png",
              topic: 'Dental',
              color: Color(0xFFA584FF),
            ),
            TopicCard(
              image: "assets/icons/017-heart.png",
              topic: 'Heart',
              color: Color(0xFFFF7854),
            ),
            TopicCard(
              image: "assets/icons/024-clinic.png",
              topic: 'Surgeon',
              color: Color(0xFFFEA725),
            ),
          ],
        ),
        SizedBox(
          height: 9,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TopicCard(
              image: "assets/icons/012-medicine.png",
              topic: 'Medicines',
              color: Color(0xFF00CC6A),
            ),
            TopicCard(
              image: "assets/icons/013-care-2.png",
              topic: 'Physicians',
              color: Color(0xFF00C9E4),
            ),
            TopicCard(
              image: "assets/icons/028-bandage.png",
              topic: 'Skin',
              color: Color(0xFFFD44B3),
            ),
            TopicCard(
              image: "assets/icons/005-syringe.png",
              topic: 'Hospitals',
              color: Color(0xFFFD4444),
            ),
          ],
        ),
      ],
    );
  }
}
