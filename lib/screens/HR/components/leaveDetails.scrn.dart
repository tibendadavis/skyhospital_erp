import 'package:flutter/material.dart';

import 'package:skyhospital_erp/components/heading2.dart';
import 'package:skyhospital_erp/components/heading3.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class leaveDetails extends StatefulWidget {
  leaveDetails({super.key});

  @override
  State<leaveDetails> createState() => _leaveDetailsState();
}

class _leaveDetailsState extends State<leaveDetails> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Expanded(
          child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: Insets().appPadding,
                left: Insets().appPadding,
                right: Insets().appPadding,
                bottom: Insets().appPadding),
            padding: EdgeInsets.only(
                left: Insets().appPadding,
                right: Insets().appPadding,
                top: Insets().appGap + 2,
                bottom: Insets().appPadding),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Insets().appRadiusMin + 4)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Heading2(
                    value: "John Smith Doe",
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Heading3(
                    value: "Leave Details",
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: Responsive.isDesktop(context)
                            ? size.width
                            : size.width,
                        child: Flex(
                          direction: Responsive.isDesktop(context)
                              ? Axis.horizontal
                              : Axis.vertical,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Heading5(
                              value: "Application Name",
                              color: Colors.grey.shade600,
                            ),
                            Responsive.isDesktop(context)
                                ? Spacer()
                                : Offstage(),
                            SizedBox(
                              width: Responsive.isDesktop(context)
                                  ? 900
                                  : size.width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(radius: Insets().appRadiusMid),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      HeadingText(
                                        size: 13,
                                        value: "Smith, John Doe",
                                        fontWeight: FontWeight.w600,
                                      ),
                                      HeadingText(
                                        size: 13,
                                        value: "Senior",
                                        color: Colors.grey.shade700,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: Responsive.isDesktop(context)
                            ? size.width
                            : size.width,
                        child: Flex(
                          direction: Responsive.isDesktop(context)
                              ? Axis.horizontal
                              : Axis.vertical,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Heading5(
                              value: "Leave Date",
                              color: Colors.grey.shade600,
                            ),
                            Responsive.isDesktop(context)
                                ? Spacer()
                                : Offstage(),
                            SizedBox(
                              width: Responsive.isDesktop(context)
                                  ? 900
                                  : size.width,
                              child: Heading5(
                                value: "12-01-2023",
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: Responsive.isDesktop(context)
                            ? size.width
                            : size.width,
                        child: Flex(
                          direction: Responsive.isDesktop(context)
                              ? Axis.horizontal
                              : Axis.vertical,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Heading5(
                              value: "Leave Type",
                              color: Colors.grey.shade600,
                            ),
                            Responsive.isDesktop(context)
                                ? Spacer()
                                : Offstage(),
                            SizedBox(
                              width: Responsive.isDesktop(context)
                                  ? 900
                                  : size.width,
                              child: Row(
                                children: [
                                  Container(
                                    width: 54,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(176, 120, 198, 1),
                                        borderRadius: BorderRadius.circular(
                                            Insets().appGap - 5)),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 5),
                                    child: HeadingText(
                                      size: 13,
                                      value: "Earned",
                                      color: Palette().textColor,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: Responsive.isDesktop(context)
                            ? size.width
                            : size.width,
                        child: Flex(
                          direction: Responsive.isDesktop(context)
                              ? Axis.horizontal
                              : Axis.vertical,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Heading5(
                              value: "Paid",
                              color: Colors.grey.shade600,
                            ),
                            Responsive.isDesktop(context)
                                ? Spacer()
                                : Offstage(),
                            SizedBox(
                              width: Responsive.isDesktop(context)
                                  ? 900
                                  : size.width,
                              child: Heading5(
                                value: "Yes",
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: Responsive.isDesktop(context)
                            ? size.width
                            : size.width,
                        child: Flex(
                          direction: Responsive.isDesktop(context)
                              ? Axis.horizontal
                              : Axis.vertical,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Heading5(
                              value: "Reason For Absence",
                              color: Colors.grey.shade600,
                            ),
                            Responsive.isDesktop(context)
                                ? Spacer()
                                : Offstage(),
                            SizedBox(
                              width: Responsive.isDesktop(context)
                                  ? 900
                                  : size.width,
                              child: Expanded(
                                child: Heading5(
                                  value:
                                      "Dormouse go on with the tea, the Hatter instead! CHAPTER VII. A Mad Tea-Party There was a very respectful tone, but frowning and making quite a crowd of little Alice herself, and began singing in.",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: Responsive.isDesktop(context)
                            ? size.width
                            : size.width,
                        child: Flex(
                          direction: Responsive.isDesktop(context)
                              ? Axis.horizontal
                              : Axis.vertical,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Heading5(
                              value: "Status",
                              color: Colors.grey.shade600,
                            ),
                            Responsive.isDesktop(context)
                                ? Spacer()
                                : Offstage(),
                            SizedBox(
                              width: Responsive.isDesktop(context)
                                  ? 900
                                  : size.width,
                              child: Heading5(
                                value: "Rejected",
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: Responsive.isDesktop(context)
                            ? size.width
                            : size.width,
                        child: Flex(
                          direction: Responsive.isDesktop(context)
                              ? Axis.horizontal
                              : Axis.vertical,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Heading5(
                              value: "Reason For Leave Rejection",
                              color: Colors.grey.shade600,
                            ),
                            Responsive.isDesktop(context)
                                ? Spacer()
                                : Offstage(),
                            SizedBox(
                              width: Responsive.isDesktop(context)
                                  ? 900
                                  : size.width,
                              child: Expanded(
                                child: Heading5(
                                  value: " ",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: Responsive.isDesktop(context)
                            ? size.width
                            : size.width,
                        child: Flex(
                          direction: Responsive.isDesktop(context)
                              ? Axis.horizontal
                              : Axis.vertical,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Heading5(
                              value: "Files",
                              color: Colors.grey.shade600,
                            ),
                            Responsive.isDesktop(context)
                                ? Spacer()
                                : Offstage(),
                            SizedBox(
                              width: Responsive.isDesktop(context)
                                  ? 900
                                  : size.width,
                              child: Heading5(
                                value: " - No file uploaded",
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ]),
          ),
        ],
      )),
    );
  }
}
