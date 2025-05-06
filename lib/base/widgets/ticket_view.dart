import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 199,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            //Blue part of the ticket
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  //show departure and destination with icons first line
                  Row(
                    children: [
                      TextStyleThird(
                        text: "CGK",
                      ),
                      Expanded(child: Container()),
                      const BigDot(),
                      //Expanded it's better control for alignment for complex widgets more than mainAxisAlignment
                      Expanded(
                        child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: AppLayoutbuilderWidget(
                                randomDivider: 6,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                //angle 1.57 for rotate to 90 degree
                                //angle 3.1416 for rotate to 180 degree
                                //use - (minus) for rotate to left
                                angle: 1.57,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const BigDot(),
                      Expanded(
                        child: Container(),
                      ),
                      TextStyleThird(
                        text: "PKU",
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 3,
                  ),

                  //show departure and destination with time
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: "Jakarta"),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      TextStyleFourth(text: "1H 45M"),
                      Expanded(
                        child: Container(),
                      ),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: "Pekanbaru",
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //circles and dot
            Container(
              height: 20,
              color: AppStyles.ticketOrange,
              child: Row(
                children: [
                  const BigCircle(
                    isRight: false,
                  ),
                  //creating space between circles
                  Expanded(
                    child: AppLayoutbuilderWidget(
                      randomDivider: 16,
                      width: 6,
                    ),
                  ),
                  const BigCircle(
                    isRight: true,
                  ),
                ],
              ),
            ),

            //Orange part of the ticket
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  //show departure and destination with icons first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        topText: "5 MAY",
                        bottomText: "Date",
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                      AppColumnTextLayout(
                        topText: "08:00 AM",
                        bottomText: "Departure Time",
                        crossAxisAlignment: CrossAxisAlignment.center,
                      ),
                      AppColumnTextLayout(
                        topText: "20",
                        bottomText: "Number",
                        crossAxisAlignment: CrossAxisAlignment.end,
                      ),
                      // Expanded(child: Container()),
                      // TextStyleThird(text: "08:00 AM"),
                      // Expanded(
                      //   child: Container(),
                      // ),
                      // TextStyleThird(text: "20"),
                    ],
                  ),

                  const SizedBox(
                    height: 3,
                  ),

                  //show departure and destination with time
                  // Row(
                  //   children: [
                  //     TextStyleFourth(text: "Date"),
                  //     Expanded(
                  //       child: Container(),
                  //     ),
                  //     TextStyleFourth(text: "Departure Time"),
                  //     Expanded(
                  //       child: Container(),
                  //     ),
                  //     TextStyleFourth(text: "Number"),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
