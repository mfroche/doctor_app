import 'package:doctor_app/constants.dart';
import 'package:doctor_app/details_card.dart';
import 'package:flutter/material.dart';

class SpecialtySection extends StatelessWidget {
  final String yr;
  final String ps;
  final String rating;
  const SpecialtySection({
    super.key,
    required this.yr,
    required this.ps,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DetailsCard(title: 'Experience', val: yr, unit: 'yr'),
        cardBorder,
        DetailsCard(title: 'Patient', val: ps, unit: 'ps'),
        cardBorder,
        DetailsCard(title: 'Rating', val: rating, unit: ''),
      ],
    );
  }
}
