import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String image;
  final String name;
  final String specialty;
  final String ratings;
  final Widget notice;

  const DoctorCard({
    super.key,
    required this.image,
    required this.name,
    required this.specialty,
    required this.ratings,
    required this.notice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              Container(
                height: 80,
                width: 88,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    specialty,
                    style: TextStyle(fontSize: 14, color: Color(0xFFAAAAAA)),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.star,
                              size: 11.5, color: Color(0xFFFFE848)),
                          SizedBox(width: 3),
                          Icon(Icons.star,
                              size: 11.5, color: Color(0xFFFFE848)),
                          SizedBox(width: 3),
                          Icon(Icons.star,
                              size: 11.5, color: Color(0xFFFFE848)),
                          SizedBox(width: 3),
                          Icon(Icons.star,
                              size: 11.5, color: Color(0xFFFFE848)),
                          SizedBox(width: 3),
                          Icon(Icons.star,
                              size: 11.5, color: Color(0xFFFFE848)),
                          SizedBox(width: 5),
                          Text(
                            '($ratings)',
                            style: TextStyle(
                                fontSize: 10, color: Color(0xFFC4C4C4)),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      notice,
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
