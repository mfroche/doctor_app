import 'package:flutter/material.dart';

final Widget openCard = Container(
  width: 56,
  height: 24,
  decoration: BoxDecoration(
      color: Color(0xFFCCF5E1), borderRadius: BorderRadius.circular(5)),
  child: Center(
    child: Text(
      'Open',
      style: TextStyle(fontSize: 12, color: Color(0xFF00CC6A)),
    ),
  ),
);

final Widget closeCard = Container(
  width: 56,
  height: 24,
  decoration: BoxDecoration(
      color: Color(0xFFF7E4D9), borderRadius: BorderRadius.circular(5)),
  child: Center(
    child: Text(
      'Closed',
      style: TextStyle(fontSize: 12, color: Color(0xFFCC4900)),
    ),
  ),
);
