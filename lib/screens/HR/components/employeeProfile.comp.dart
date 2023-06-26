import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skyhospital_erp/components/heading1.dart';
import 'package:skyhospital_erp/components/heading3.dart';
import 'package:skyhospital_erp/components/heading4.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading6.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/screens/HR/addEmployee.scrn.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class employeeProfile extends StatefulWidget {
  employeeProfile({super.key});

  @override
  State<employeeProfile> createState() => _employeeProfileState();
}

class _employeeProfileState extends State<employeeProfile> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Expanded(
          child: ListView(
        children: [
          if (Responsive.isDesktop(context))
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
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
                          child: Stack(
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  //  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      radius: 70,
                                      child: ClipOval(
                                          child: Image.asset(
                                              "assets/img/avatar.jpg")),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Spacer(),
                                        Heading3(
                                          value: "John Doe",
                                          color: Colors.grey.shade700,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Heading5(
                                          value: "Senior | Human Resources",
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Heading6(
                                          value: "Last login at --",
                                          color: Colors.grey.shade600,
                                        ),
                                        Spacer(),
                                        SizedBox(
                                            width: 420,
                                            child: Divider(
                                                color: Colors.grey,
                                                thickness: 1.2)),
                                        Spacer(),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Heading6(value: "Open Tasks"),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Heading4(
                                                  value: "1",
                                                  fontWeight: FontWeight.bold,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 40,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Heading6(value: "Projects"),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Heading4(
                                                  value: "1",
                                                  fontWeight: FontWeight.bold,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 40,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Heading6(value: "Hours Logged"),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Heading4(
                                                  value: "0",
                                                  fontWeight: FontWeight.bold,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 40,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Heading6(value: "Open Tasks"),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Heading4(
                                                  value: "0",
                                                  fontWeight: FontWeight.bold,
                                                )
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ]),
                              Positioned(
                                  right: 1,
                                  top: 1,
                                  child: IconButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (_) => addEmployee());
                                      },
                                      tooltip: "Edit",
                                      icon: Icon(Icons.more_vert_rounded)))
                            ],
                          ),
                        ),
                        Container(
                          height: 140,
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
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Heading3(
                                      value: "About",
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Heading5(
                                      value: "I am Super Human",
                                    ),
                                  ]),
                            ],
                          ),
                        ),
                        Container(
                          height: 800,
                          margin: EdgeInsets.only(
                              left: Insets().appPadding,
                              bottom: Insets().appPadding),
                          padding: EdgeInsets.only(
                              left: Insets().appPadding,
                              right: Insets().appPadding,
                              top: Insets().appGap + 10,
                              bottom: Insets().appPadding),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                  Insets().appRadiusMin + 4)),
                          child: Row(children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Heading3(
                                  value: "Profile Info",
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.bold,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  width: 500,
                                  child: Column(children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "Employee ID",
                                          color: Colors.grey.shade600,
                                        ),
                                        Heading5(value: "Emp-10")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "Full Name",
                                          color: Colors.grey.shade600,
                                        ),
                                        Heading5(value: "John Smith Doe")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "Email",
                                          color: Colors.grey.shade600,
                                        ),
                                        Heading5(value: "johnDoe@example.com")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "Designation",
                                          color: Colors.grey.shade600,
                                        ),
                                        Heading5(value: "Senior")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "Department",
                                          color: Colors.grey.shade600,
                                        ),
                                        Heading5(value: "Human Resources")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "Gender",
                                          color: Colors.grey.shade600,
                                        ),
                                        Heading5(value: "Male")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "Joining Date",
                                          color: Colors.grey.shade600,
                                        ),
                                        Heading5(value: "23-05-2022")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "Work Anniversary",
                                          color: Colors.grey.shade600,
                                        ),
                                        Heading5(value: "2 months from now")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "Date Of Birth",
                                          color: Colors.grey.shade600,
                                        ),
                                        Heading5(value: "--")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "Mobile",
                                          color: Colors.grey.shade600,
                                        ),
                                        Heading5(value: "--")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "Salary",
                                          color: Colors.grey.shade600,
                                        ),
                                        Heading5(value: "--")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "Address",
                                          color: Colors.grey.shade600,
                                        ),
                                        SizedBox(
                                          width: 120,
                                        ),
                                        Expanded(
                                          child: Heading5(
                                              value:
                                                  "4683 Roob Street Suite 575 North Maximillialand, ID 04524-2603"),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "SKills",
                                          color: Colors.grey.shade600,
                                        ),
                                        Heading5(value: "--")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "Probation End Date",
                                          color: Colors.grey.shade600,
                                        ),
                                        Heading5(value: "--")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "Notice Period Start Date",
                                          color: Colors.grey.shade600,
                                        ),
                                        Heading5(value: "--")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "Notice Period End Date",
                                          color: Colors.grey.shade600,
                                        ),
                                        Heading5(value: "--")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "Marital Status",
                                          color: Colors.grey.shade600,
                                        ),
                                        Heading5(value: "--")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "Employment Type",
                                          color: Colors.grey.shade600,
                                        ),
                                        Heading5(value: "--")
                                      ],
                                    ),
                                  ]),
                                )
                              ],
                            )
                          ]),
                        )
                      ],
                    )),
                Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
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
                              borderRadius: BorderRadius.circular(
                                  Insets().appRadiusMin + 4)),
                          child: Row(children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Heading3(
                                  value: "Appreciation",
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.bold,
                                ),
                                Spacer(),
                                Heading5(
                                  value: "-- No record found --",
                                  color: Colors.grey,
                                ),
                                Spacer()
                              ],
                            )
                          ]),
                        ),
                        Container(
                          height: 120,
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
                              borderRadius: BorderRadius.circular(
                                  Insets().appRadiusMin + 4)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Heading5(
                                      value: "Reporting To",
                                      color: Colors.grey.shade600,
                                    ),
                                    Heading6(
                                      value: "--",
                                      color: Colors.grey.shade600,
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Heading5(
                                      value: "Reporting Team",
                                      color: Colors.grey.shade600,
                                    ),
                                    Heading6(
                                      value: "--",
                                      color: Colors.grey.shade600,
                                    ),
                                  ],
                                )
                              ]),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 120,
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
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Spacer(),
                                      Heading4(
                                        value: "Late Attendance",
                                        color: Colors.grey.shade700,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      Heading1(
                                        value: "27",
                                        color: Palette().primaryColor,
                                      ),
                                      Spacer()
                                    ]),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 120,
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
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Spacer(),
                                      Heading4(
                                        value: "Leaves Taken",
                                        color: Colors.grey.shade700,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      Heading1(
                                        value: "10",
                                        color: Palette().primaryColor,
                                      ),
                                      Spacer()
                                    ]),
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 359,
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
                              borderRadius: BorderRadius.circular(
                                  Insets().appRadiusMin + 4)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Heading3(
                                value: "Tasks",
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold,
                              ),
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
                                        radius: "90",
                                        explode: true,
                                        explodeOffset: '20%',
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
                        Container(
                          height: 300,
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
                              borderRadius: BorderRadius.circular(
                                  Insets().appRadiusMin + 4)),
                        )
                      ],
                    ))
              ],
            ),
          if (!Responsive.isDesktop(context))
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 330,
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
                          borderRadius:
                              BorderRadius.circular(Insets().appRadiusMin + 4)),
                      child: Stack(
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              //  crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  radius: 70,
                                  child: ClipOval(
                                      child:
                                          Image.asset("assets/img/avatar.jpg")),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Heading3(
                                      value: "John Doe",
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Heading5(
                                      value: "Senior | Human Resources",
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Heading6(
                                      value: "Last login at --",
                                      color: Colors.grey.shade600,
                                    ),
                                    SizedBox(
                                        width: 420,
                                        child: Divider(
                                            color: Colors.grey,
                                            thickness: 1.2)),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Heading6(value: "Open Tasks"),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Heading4(
                                              value: "1",
                                              fontWeight: FontWeight.bold,
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Heading6(value: "Projects"),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Heading4(
                                              value: "1",
                                              fontWeight: FontWeight.bold,
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Heading6(value: "Hours Logged"),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Heading4(
                                              value: "0",
                                              fontWeight: FontWeight.bold,
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Heading6(value: "Open Tasks"),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Heading4(
                                              value: "0",
                                              fontWeight: FontWeight.bold,
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ]),
                          Positioned(
                              right: 0,
                              top: 1,
                              child: IconButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (_) => addEmployee());
                                  },
                                  tooltip: "Edit",
                                  icon: Icon(Icons.more_vert_rounded)))
                        ],
                      ),
                    ),
                    Container(
                      height: 140,
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
                      child: Row(
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Heading3(
                                  value: "About",
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.bold,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Heading5(
                                  value: "I am Super Human",
                                ),
                              ]),
                        ],
                      ),
                    ),
                    Container(
                      height: 830,
                      margin: EdgeInsets.only(
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          bottom: Insets().appPadding),
                      padding: EdgeInsets.only(
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          top: Insets().appGap + 10,
                          bottom: Insets().appPadding),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(Insets().appRadiusMin + 4)),
                      child: Row(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Heading3(
                              value: "Profile Info",
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: size.width - 80,
                              child: Column(children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Heading5(
                                      value: "Employee ID",
                                      color: Colors.grey.shade600,
                                    ),
                                    Heading5(value: "Emp-10")
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Heading5(
                                      value: "Full Name",
                                      color: Colors.grey.shade600,
                                    ),
                                    Heading5(value: "John Smith Doe")
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Heading5(
                                      value: "Email",
                                      color: Colors.grey.shade600,
                                    ),
                                    Heading5(value: "johnDoe@example.com")
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Heading5(
                                      value: "Designation",
                                      color: Colors.grey.shade600,
                                    ),
                                    Heading5(value: "Senior")
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Heading5(
                                      value: "Department",
                                      color: Colors.grey.shade600,
                                    ),
                                    Heading5(value: "Human Resources")
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Heading5(
                                      value: "Gender",
                                      color: Colors.grey.shade600,
                                    ),
                                    Heading5(value: "Male")
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Heading5(
                                      value: "Joining Date",
                                      color: Colors.grey.shade600,
                                    ),
                                    Heading5(value: "23-05-2022")
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Heading5(
                                      value: "Work Anniversary",
                                      color: Colors.grey.shade600,
                                    ),
                                    Heading5(value: "2 months from now")
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Heading5(
                                      value: "Date Of Birth",
                                      color: Colors.grey.shade600,
                                    ),
                                    Heading5(value: "--")
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Heading5(
                                      value: "Mobile",
                                      color: Colors.grey.shade600,
                                    ),
                                    Heading5(value: "--")
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Heading5(
                                      value: "Salary",
                                      color: Colors.grey.shade600,
                                    ),
                                    Heading5(value: "--")
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Heading5(
                                      value: "Address",
                                      color: Colors.grey.shade600,
                                    ),
                                    SizedBox(
                                      width: 120,
                                    ),
                                    Expanded(
                                      child: Heading5(
                                          value:
                                              "4683 Roob Street Suite 575 North Maximillialand, ID 04524-2603"),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Heading5(
                                      value: "SKills",
                                      color: Colors.grey.shade600,
                                    ),
                                    Heading5(value: "--")
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Heading5(
                                      value: "Probation End Date",
                                      color: Colors.grey.shade600,
                                    ),
                                    Heading5(value: "--")
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Heading5(
                                      value: "Notice Period Start Date",
                                      color: Colors.grey.shade600,
                                    ),
                                    Heading5(value: "--")
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Heading5(
                                      value: "Notice Period End Date",
                                      color: Colors.grey.shade600,
                                    ),
                                    Heading5(value: "--")
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Heading5(
                                      value: "Marital Status",
                                      color: Colors.grey.shade600,
                                    ),
                                    Heading5(value: "--")
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Heading5(
                                      value: "Employment Type",
                                      color: Colors.grey.shade600,
                                    ),
                                    Heading5(value: "--")
                                  ],
                                ),
                              ]),
                            )
                          ],
                        )
                      ]),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
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
                          borderRadius:
                              BorderRadius.circular(Insets().appRadiusMin + 4)),
                      child: Row(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Heading3(
                              value: "Appreciation",
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.bold,
                            ),
                            Spacer(),
                            Heading5(
                              value: "-- No record found --",
                              color: Colors.grey,
                            ),
                            Spacer()
                          ],
                        )
                      ]),
                    ),
                    Container(
                      height: 120,
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
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Heading5(
                                  value: "Reporting To",
                                  color: Colors.grey.shade600,
                                ),
                                Heading6(
                                  value: "--",
                                  color: Colors.grey.shade600,
                                ),
                              ],
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Heading5(
                                  value: "Reporting Team",
                                  color: Colors.grey.shade600,
                                ),
                                Heading6(
                                  value: "--",
                                  color: Colors.grey.shade600,
                                ),
                              ],
                            )
                          ]),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 130,
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
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Spacer(),
                                  Heading4(
                                    value: "Late Attendance",
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  Heading1(
                                    value: "27",
                                    color: Palette().primaryColor,
                                  ),
                                  Spacer()
                                ]),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 130,
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
                                borderRadius: BorderRadius.circular(
                                    Insets().appRadiusMin + 4)),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Spacer(),
                                  Heading4(
                                    value: "Leaves Taken",
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  Heading1(
                                    value: "10",
                                    color: Palette().primaryColor,
                                  ),
                                  Spacer()
                                ]),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 359,
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
                        children: [
                          Heading3(
                            value: "Tasks",
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.bold,
                          ),
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
                                    radius: "90",
                                    explode: true,
                                    explodeOffset: '20%',
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
                    Container(
                      height: 300,
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
                    )
                  ],
                )
              ],
            )
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
    "Complete\n",
    0,
  ),
  ChartData2(
    'Incomplete\n',
    5,
  ),
  ChartData2(
    'To Do\n',
    0,
  ),
  ChartData2(
    'Doing\n',
    0.1,
  ),
];
