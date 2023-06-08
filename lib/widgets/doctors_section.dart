import 'package:flutter/material.dart';
import 'package:uts_flutter/colors.dart';
import 'package:uts_flutter/screens/appoint_screen.dart';

// ignore: must_be_immutable
class DoctorsSection extends StatelessWidget {
  List doctorName = [
    "Dr. Zedan Sp.M",
    "Drg. Dea Sp.Pros",
    "Dr. Indri S.Ft",
    "Dr. Nanda Sp.N",
    "Dr. Nisa Sp.Kk",
    "Dr. Della Sp.THT",
    "Dr. Vaza",
  ];

  List ProfName = [
    "Mata",
    "Gigi",
    "Fisioterapi",
    "Saraf",
    "Kulit dan Kelamin",
    "THT",
    "Hati",
  ];

  List ListRat = [
    "4.7",
    "3.5",
    "4.8",
    "4.5",
    "3.6",
    "3.2",
    "4.3",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 7,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 300,
                  width: 200,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFFF2F8FF),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: sdColor,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AppointScreen(),
                                  ));
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              child: Image.asset(
                                "doctor${index + 1}.jpg",
                                height: 200,
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: EdgeInsets.all(8),
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                color: Color(0xFFF2F8FF),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: sdColor,
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.favorite_outline,
                                  color: pColor,
                                  size: 28,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              doctorName[index],
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: pColor,
                              ),
                            ),
                            Text(
                              ProfName[index],
                              style: TextStyle(
                                fontSize: 18,
                                color: bColor.withOpacity(0.6),
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  ListRat[index],
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: bColor.withOpacity(0.6),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
