import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skyhospital_erp/components/heading1.dart';
import 'package:skyhospital_erp/components/heading2.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/addJob.scrn.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class jobProfile extends StatefulWidget {
  jobProfile({super.key});

  @override
  State<jobProfile> createState() => _jobProfileState();
}

class _jobProfileState extends State<jobProfile> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Expanded(
          child: ListView(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                                height: 145,
                                margin: EdgeInsets.only(
                                    top: Insets().appPadding,
                                    left: Insets().appPadding,
                                    bottom: Insets().appPadding),
                                padding: EdgeInsets.only(
                                    left: Insets().appPadding,
                                    right: Insets().appPadding,
                                    top: Insets().appGap + 2,
                                    bottom: Insets().appPadding),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Heading5(value: "Openings"),
                                        Heading1(
                                          value: "17",
                                          color: Palette().primaryColor,
                                          fontWeight: FontWeight.w300,
                                        )
                                      ],
                                    ),
                                    Icon(Icons.list,
                                        color: Colors.grey, size: 37)
                                  ],
                                )),
                          ),
                          Expanded(
                            child: Container(
                                height: 145,
                                margin: EdgeInsets.only(
                                    top: Insets().appPadding,
                                    left: Insets().appPadding,
                                    bottom: Insets().appPadding),
                                padding: EdgeInsets.only(
                                    left: Insets().appPadding,
                                    right: Insets().appPadding,
                                    top: Insets().appGap + 2,
                                    bottom: Insets().appPadding),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Heading5(value: "In Progress"),
                                        Heading1(
                                          value: "0",
                                          color: Palette().primaryColor,
                                          fontWeight: FontWeight.w300,
                                        )
                                      ],
                                    ),
                                    Icon(Icons.schedule,
                                        color: Colors.grey, size: 37)
                                  ],
                                )),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                                height: 145,
                                margin: EdgeInsets.only(
                                    left: Insets().appPadding,
                                    bottom: Insets().appPadding),
                                padding: EdgeInsets.only(
                                    left: Insets().appPadding,
                                    right: Insets().appPadding,
                                    top: Insets().appGap + 2,
                                    bottom: Insets().appPadding),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Heading5(value: "Scheduled"),
                                        Heading1(
                                          value: "0",
                                          color: Palette().primaryColor,
                                          fontWeight: FontWeight.w300,
                                        )
                                      ],
                                    ),
                                    Icon(Icons.calendar_today_rounded,
                                        color: Colors.grey, size: 37)
                                  ],
                                )),
                          ),
                          Expanded(
                            child: Container(
                                height: 145,
                                margin: EdgeInsets.only(
                                    left: Insets().appPadding,
                                    bottom: Insets().appPadding),
                                padding: EdgeInsets.only(
                                    left: Insets().appPadding,
                                    right: Insets().appPadding,
                                    top: Insets().appGap + 2,
                                    bottom: Insets().appPadding),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Heading5(value: "Offer Released"),
                                        Heading1(
                                          value: "1",
                                          color: Palette().primaryColor,
                                          fontWeight: FontWeight.w300,
                                        )
                                      ],
                                    ),
                                    Icon(Icons.local_offer_rounded,
                                        color: Colors.grey, size: 37)
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ],
                  )),
              Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: Insets().appPadding,
                            top: Insets().appPadding,
                            right: Insets().appPadding,
                            bottom: Insets().appPadding),
                        padding: EdgeInsets.only(
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          top: Insets().appGap + 2,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                Insets().appRadiusMin + 4)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SfCircularChart(
                                  series: <CircularSeries>[
                                    PieSeries<ChartData2, String>(
                                      dataSource: chartData2,
                                      enableTooltip: true,

                                      xValueMapper: (ChartData2 data, _) =>
                                          data.x,
                                      yValueMapper: (ChartData2 data, _) =>
                                          data.y,
                                      strokeColor: Palette().primaryColor,
                                      radius: "80",
                                      explode: true,
                                      explodeOffset: '10%',
                                      explodeIndex: 0,
                                      animationDelay: 7,
                                      animationDuration: 1500,

                                      //enableSmartLabels: true,
                                      dataLabelMapper: (ChartData2 data, _) =>
                                          '${data.x} : ${data.y}',
                                      dataLabelSettings: DataLabelSettings(
                                        isVisible: true,
                                        labelPosition:
                                            ChartDataLabelPosition.outside,
                                        useSeriesColor: true,
                                        textStyle: GoogleFonts.openSans(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                        // labelIntersectAction:
                                        //     LabelIntersectAction
                                        //         .hide
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))
            ],
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
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
                  borderRadius:
                      BorderRadius.circular(Insets().appRadiusMin + 4)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Heading2(
                          value: "Software Developer",
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade800,
                        ),
                        IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context, builder: (_) => addJob());
                            },
                            icon: Icon(Icons.more_vert_rounded))
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Flex(
                      direction: Responsive.isDesktop(context)
                          ? Axis.horizontal
                          : Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: Responsive.isDesktop(context)
                                  ? size.width / 2.6
                                  : size.width,
                              child: Flex(
                                direction: Responsive.isDesktop(context)
                                    ? Axis.horizontal
                                    : Axis.vertical,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Heading5(
                                    value: "Category",
                                    color: Colors.grey.shade600,
                                  ),
                                  Responsive.isDesktop(context)
                                      ? Spacer()
                                      : Offstage(),
                                  SizedBox(
                                    width: Responsive.isDesktop(context)
                                        ? 400
                                        : size.width,
                                    child: Heading5(
                                      value: "Developer",
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
                                  ? size.width / 2.6
                                  : size.width,
                              child: Flex(
                                direction: Responsive.isDesktop(context)
                                    ? Axis.horizontal
                                    : Axis.vertical,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Heading5(
                                    value: "Sub Category",
                                    color: Colors.grey.shade600,
                                  ),
                                  Responsive.isDesktop(context)
                                      ? Spacer()
                                      : Offstage(),
                                  SizedBox(
                                    width: Responsive.isDesktop(context)
                                        ? 400
                                        : size.width,
                                    child: Heading5(
                                      value: "Javascript Developer",
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
                                  ? size.width / 2.6
                                  : size.width,
                              child: Flex(
                                direction: Responsive.isDesktop(context)
                                    ? Axis.horizontal
                                    : Axis.vertical,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Heading5(
                                    value: "Department",
                                    color: Colors.grey.shade600,
                                  ),
                                  Responsive.isDesktop(context)
                                      ? Spacer()
                                      : Offstage(),
                                  SizedBox(
                                    width: Responsive.isDesktop(context)
                                        ? 400
                                        : size.width,
                                    child: Heading5(
                                      value: "Marketing",
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
                                  ? size.width / 2.6
                                  : size.width,
                              child: Flex(
                                direction: Responsive.isDesktop(context)
                                    ? Axis.horizontal
                                    : Axis.vertical,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Heading5(
                                    value: "Total Openings",
                                    color: Colors.grey.shade600,
                                  ),
                                  Responsive.isDesktop(context)
                                      ? Spacer()
                                      : Offstage(),
                                  SizedBox(
                                    width: Responsive.isDesktop(context)
                                        ? 400
                                        : size.width,
                                    child: Heading5(
                                      value: "17",
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
                                  ? size.width / 2.6
                                  : size.width,
                              child: Flex(
                                direction: Responsive.isDesktop(context)
                                    ? Axis.horizontal
                                    : Axis.vertical,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Heading5(
                                    value: "Start Date",
                                    color: Colors.grey.shade600,
                                  ),
                                  Responsive.isDesktop(context)
                                      ? Spacer()
                                      : Offstage(),
                                  SizedBox(
                                    width: Responsive.isDesktop(context)
                                        ? 400
                                        : size.width,
                                    child: Heading5(
                                      value: "23-02-2023",
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
                                  ? size.width / 2.6
                                  : size.width,
                              child: Flex(
                                direction: Responsive.isDesktop(context)
                                    ? Axis.horizontal
                                    : Axis.vertical,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Heading5(
                                    value: "End Date",
                                    color: Colors.grey.shade600,
                                  ),
                                  Responsive.isDesktop(context)
                                      ? Spacer()
                                      : Offstage(),
                                  SizedBox(
                                    width: Responsive.isDesktop(context)
                                        ? 400
                                        : size.width,
                                    child: Heading5(
                                      value: "15-03-2023",
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
                                  ? size.width / 2.6
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
                                        ? 400
                                        : size.width,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          color: Colors.green,
                                          size: 13,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Heading5(
                                          value: "Open",
                                        ),
                                      ],
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
                                  ? size.width / 2.6
                                  : size.width,
                              child: Flex(
                                direction: Responsive.isDesktop(context)
                                    ? Axis.horizontal
                                    : Axis.vertical,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Heading5(
                                    value: "Description",
                                    color: Colors.grey.shade600,
                                  ),
                                  Responsive.isDesktop(context)
                                      ? Spacer()
                                      : Offstage(),
                                  SizedBox(
                                    width: Responsive.isDesktop(context)
                                        ? 400
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
                          ],
                        ),
                        SizedBox(
                            height: Responsive.isDesktop(context) ? 0 : 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: Responsive.isDesktop(context)
                                  ? size.width / 2.6
                                  : size.width,
                              child: Flex(
                                direction: Responsive.isDesktop(context)
                                    ? Axis.horizontal
                                    : Axis.vertical,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Heading5(
                                    value: "Recruiter",
                                    color: Colors.grey.shade600,
                                  ),
                                  Responsive.isDesktop(context)
                                      ? Spacer()
                                      : Offstage(),
                                  SizedBox(
                                    width: Responsive.isDesktop(context)
                                        ? 400
                                        : size.width,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                            radius: Insets().appRadiusMid),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            HeadingText(
                                              size: 13,
                                              value: "Smith, John Doe",
                                              fontWeight: FontWeight.w600,
                                            ),
                                            HeadingText(
                                              size: 13,
                                              value: "Junior",
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
                                  ? size.width / 2.6
                                  : size.width,
                              child: Flex(
                                direction: Responsive.isDesktop(context)
                                    ? Axis.horizontal
                                    : Axis.vertical,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Heading5(
                                    value: "Job Type",
                                    color: Colors.grey.shade600,
                                  ),
                                  Responsive.isDesktop(context)
                                      ? Spacer()
                                      : Offstage(),
                                  SizedBox(
                                    width: Responsive.isDesktop(context)
                                        ? 400
                                        : size.width,
                                    child: Heading5(
                                      value: "Internship",
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
                                  ? size.width / 2.6
                                  : size.width,
                              child: Flex(
                                direction: Responsive.isDesktop(context)
                                    ? Axis.horizontal
                                    : Axis.vertical,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Heading5(
                                    value: "Work Experience",
                                    color: Colors.grey.shade600,
                                  ),
                                  Responsive.isDesktop(context)
                                      ? Spacer()
                                      : Offstage(),
                                  SizedBox(
                                    width: Responsive.isDesktop(context)
                                        ? 400
                                        : size.width,
                                    child: Heading5(
                                      value: "5+ Years",
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
                                  ? size.width / 2.6
                                  : size.width,
                              child: Flex(
                                direction: Responsive.isDesktop(context)
                                    ? Axis.horizontal
                                    : Axis.vertical,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Heading5(
                                    value: "Minimum Salary Amount",
                                    color: Colors.grey.shade600,
                                  ),
                                  Responsive.isDesktop(context)
                                      ? Spacer()
                                      : Offstage(),
                                  SizedBox(
                                    width: Responsive.isDesktop(context)
                                        ? 400
                                        : size.width,
                                    child: Heading5(
                                      value: " - ",
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
                                  ? size.width / 2.6
                                  : size.width,
                              child: Flex(
                                direction: Responsive.isDesktop(context)
                                    ? Axis.horizontal
                                    : Axis.vertical,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Heading5(
                                    value: "Maximum Salary Amount",
                                    color: Colors.grey.shade600,
                                  ),
                                  Responsive.isDesktop(context)
                                      ? Spacer()
                                      : Offstage(),
                                  SizedBox(
                                    width: Responsive.isDesktop(context)
                                        ? 400
                                        : size.width,
                                    child: Heading5(
                                      value: " - ",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ],
                    )
                  ]),
            ),
          ),
        ],
      )),
    );
  }
}

class ChartData2 {
  final String x;
  final double y;
  List<Color>? gradientColors;

  ChartData2(this.x, this.y);
}

final List<ChartData2> chartData2 = [
  ChartData2(
    "Hired\n",
    1,
  ),
  ChartData2(
    'Rejected\n',
    0,
  ),
];
