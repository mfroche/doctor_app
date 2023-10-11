import 'package:flutter/material.dart';

final Widget openCard = Container(
  width: 56,
  height: 24,
  decoration: BoxDecoration(
      color: const Color(0xFFCCF5E1), borderRadius: BorderRadius.circular(5)),
  child: const Center(
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
      color: const Color(0xFFF7E4D9), borderRadius: BorderRadius.circular(5)),
  child: const Center(
    child: Text(
      'Closed',
      style: TextStyle(fontSize: 12, color: Color(0xFFCC4900)),
    ),
  ),
);

final cardBorder = Container(
  height: 50,
  decoration: const BoxDecoration(
      border: Border(
          right:
              BorderSide(color: Color.fromRGBO(196, 196, 196, .5), width: 2))),
);
