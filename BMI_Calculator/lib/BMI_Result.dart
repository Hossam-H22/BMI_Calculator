import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMI_Result extends StatelessWidget {
  // const BMI_Result({Key? key}) : super(key: key);
  String Stats="";
  int age=0;
  double weight=0, height=0, result=0;

  void caculate()
  {
    if (result<=18.5) Stats = "Underweight";
    else if (result>=19 && result<=25) Stats = "Normal";
    else if (result>25 && result<=30) Stats = "Overweight";
    else if (result>30 && result<=35) Stats = "Obese Class I";
    else if (result>35 && result<=40) Stats = "Obese Class III";
    else if (result>40) Stats = "Obese Class III";
  }

  BMI_Result({
    required this.height,
    required this.weight,
    required this.age,
    required this.result,
  })
  {
    caculate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2E0249),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF2E0249),
        elevation: 0,
        title: Text(
          'BMI CACULATOR',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFA91079),
                  shape: BoxShape.circle,
                ),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'BMI',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${result.toStringAsFixed(1)}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '$Stats',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: (Stats == "Underweight")? Color(0xFFA91079) : Color(0xFF570A57),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                          top: 5,
                          bottom: 5,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Underweight',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                ' 18.5 >',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: (Stats == "Normal")? Color(0xFFA91079) : Color(0xFF570A57),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                          top: 5,
                          bottom: 5,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Normal',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '25 - 19',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                          color: (Stats == "Overweight")? Color(0xFFA91079) : Color(0xFF570A57),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                          top: 5,
                          bottom: 5,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Overweight',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '30 - 25',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: (Stats == "Obese Class I")? Color(0xFFA91079) : Color(0xFF570A57),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                          top: 5,
                          bottom: 5,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Obese Class I',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '35 - 30',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: (Stats == "Obese Class II")? Color(0xFFA91079) : Color(0xFF570A57),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                          top: 5,
                          bottom: 5,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Obese Class II',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '40 - 35',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: (Stats == "Obese Class III")? Color(0xFFA91079) : Color(0xFF570A57),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                          top: 5,
                          bottom: 5,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Obese Class III',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                ' 40 <',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          'HEIGHT',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          'WEIGHT',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          'AGE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                          bottom: 8,
                          top: 8,
                        ),
                        child: Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                              ),
                              color: Color(0xFF500A57),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 12,
                                bottom: 12,
                              ),
                              child: Row(
                                textBaseline: TextBaseline.alphabetic,
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                children: [
                                  Text(
                                    '${height.round()}',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'cm',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                          bottom: 8,
                          top: 8,
                        ),
                        child: Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                              ),
                              color: Color(0xFF500A57),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 12,
                                bottom: 12,
                              ),
                              child: Row(
                                textBaseline: TextBaseline.alphabetic,
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                children: [
                                  Text(
                                    '${weight.round()}',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'kg',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                          bottom: 8,
                          top: 8,
                        ),
                        child: Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                              ),
                              color: Color(0xFF500A57),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 12,
                                bottom: 12,
                              ),
                              child: Row(
                                textBaseline: TextBaseline.alphabetic,
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                children: [
                                  Text(
                                    '$age',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  // Text(
                                  //   'cm',
                                  //   style: TextStyle(
                                  //     color: Colors.white,
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // child: Padding(
            //   padding: const EdgeInsets.all(20.0),
            //   child: Row(
            //     children: [
            //       Expanded(
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Text(
            //               'HEIGHT',
            //               style: TextStyle(
            //                 color: Colors.white,
            //                 fontSize: 25,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //             SizedBox(
            //               height: 10,
            //             ),
            //             Container(
            //               decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.only(
            //                   topLeft: Radius.circular(10.0),
            //                   bottomRight: Radius.circular(10.0),
            //                 ),
            //                 color: Color(0xFF500A57),
            //               ),
            //               child: Padding(
            //                 padding: const EdgeInsets.all(12.0),
            //                 child: Row(
            //                   textBaseline: TextBaseline.alphabetic,
            //                   mainAxisAlignment: MainAxisAlignment.center,
            //                   mainAxisSize: MainAxisSize.min,
            //                   crossAxisAlignment: CrossAxisAlignment.baseline,
            //                   children: [
            //                     Text(
            //                       '167',
            //                       style: TextStyle(
            //                         color: Colors.white,
            //                         fontSize: 25,
            //                         fontWeight: FontWeight.bold,
            //                       ),
            //                     ),
            //                     Text(
            //                       'cm',
            //                       style: TextStyle(
            //                         color: Colors.white,
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             )
            //           ],
            //         ),
            //       ),
            //       Expanded(
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Text(
            //               'WEIGHT',
            //               style: TextStyle(
            //                 color: Colors.white,
            //                 fontSize: 25,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //             SizedBox(
            //               height: 10,
            //             ),
            //             Container(
            //               decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.only(
            //                   topLeft: Radius.circular(10.0),
            //                   bottomRight: Radius.circular(10.0),
            //                 ),
            //                 color: Color(0xFF500A57),
            //               ),
            //               child: Padding(
            //                 padding: const EdgeInsets.all(12.0),
            //                 child: Row(
            //                   textBaseline: TextBaseline.alphabetic,
            //                   mainAxisAlignment: MainAxisAlignment.center,
            //                   mainAxisSize: MainAxisSize.min,
            //                   crossAxisAlignment: CrossAxisAlignment.baseline,
            //                   children: [
            //                     Text(
            //                       '65',
            //                       style: TextStyle(
            //                         color: Colors.white,
            //                         fontSize: 25,
            //                         fontWeight: FontWeight.bold,
            //                       ),
            //                     ),
            //                     Text(
            //                       'kg',
            //                       style: TextStyle(
            //                         color: Colors.white,
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             )
            //           ],
            //         ),
            //       ),
            //       Expanded(
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Text(
            //               'AGE',
            //               style: TextStyle(
            //                 color: Colors.white,
            //                 fontSize: 25,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //             SizedBox(
            //               height: 10,
            //             ),
            //             Container(
            //               decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.only(
            //                   topLeft: Radius.circular(10.0),
            //                   bottomRight: Radius.circular(10.0),
            //                 ),
            //                 color: Color(0xFF500A57),
            //               ),
            //               child: Padding(
            //                 padding: const EdgeInsets.all(12.0),
            //                 child: Row(
            //                   textBaseline: TextBaseline.alphabetic,
            //                   mainAxisAlignment: MainAxisAlignment.center,
            //                   mainAxisSize: MainAxisSize.min,
            //                   crossAxisAlignment: CrossAxisAlignment.baseline,
            //                   children: [
            //                     Text(
            //                       '20',
            //                       style: TextStyle(
            //                         color: Colors.white,
            //                         fontSize: 25,
            //                         fontWeight: FontWeight.bold,
            //                       ),
            //                     ),
            //                     // Text(
            //                     //   'cm',
            //                     //   style: TextStyle(
            //                     //     color: Colors.white,
            //                     //   ),
            //                     // ),
            //                   ],
            //                 ),
            //               ),
            //             )
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}
