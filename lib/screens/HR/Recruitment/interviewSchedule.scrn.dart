import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/deleteDialog.comp.dart';
import 'package:skyhospital_erp/components/downloadBar.comp.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/components/interviewDetails.comp.dart';
import 'package:skyhospital_erp/components/searchBar.comp.dart';
import 'package:skyhospital_erp/components/searchInputOptions.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/components/tile3.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/main.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/addInterviewSchedule.scrn.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

// ignore: must_be_immutable
class interviewSchedule extends StatefulWidget {
  bool? heading;
  interviewSchedule({super.key, this.heading});

  @override
  State<interviewSchedule> createState() => _interviewScheduleState();
}

class _interviewScheduleState extends State<interviewSchedule> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.heading == null)
      setState(() {
        widget.heading = true;
      });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Expanded(
          child: Column(
        children: [
          if (widget.heading!)
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(
                  top: Insets().appPadding,
                  left: Responsive.isDesktop(context)
                      ? Insets().appPadding * 2
                      : Insets().appPadding,
                  right: Insets().appGap),
              child: HeadingText(
                size: Responsive.isDesktop(context) ? 35 : 30,
                value: "Interview Schedule",
                fontWeight: FontWeight.w700,
                color: Colors.grey.shade800,
              ),
            ),
          Flex(
            direction:
                Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
            children: [
              if (Responsive.isDesktop(context)) ...[
                Expanded(
                    child: tile3(
                  icon: Icons.schedule_rounded,
                  link: addInterviewSchedule(),
                  linkTitle: "New Schedule",
                )),
                Expanded(
                    child: tile2(tileHeading: "Completed", tileData: "24")),
                Expanded(child: tile2(tileHeading: "Pending", tileData: "12")),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(right: Insets().appPadding * 2),
                  child: tile2(tileHeading: "Cancelled", tileData: "12"),
                ))
              ],
              if (!Responsive.isDesktop(context)) ...[
                Container(
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                      top: Insets().appPadding / 2,
                    ),
                    child: tile3(
                      icon: Icons.schedule_rounded,
                      link: addInterviewSchedule(),
                      linkTitle: "New Schedule",
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(tileHeading: "Completed", tileData: "24")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(tileHeading: "Pending", tileData: "12")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(tileHeading: "Cancelled", tileData: "12")),
              ]
            ],
          ),
          searchBar(
            title: "Search for Interview Schedule",
            opt1: searchInputOptions(
              title: "Status",
              opt1: "All",
              opt2: "Pending",
              opt3: "Hired",
              opt4: "Rejected",
              opt5: "Cancelled",
            ),
            opt2: searchInputOptions(
              title: "Duration",
              opt1: "Today",
              opt2: "Last 30 Days",
              opt3: "Last Month",
              opt4: "Last 6 Months",
              opt5: "Last 1 Year",
            ),
          ),
          downloadBar(
            results: '7',
          ),
          Expanded(
            child: ListView(children: [
              Container(
                margin: EdgeInsets.only(
                  left:
                      Responsive.isDesktop(context) ? Insets().appPadding : 13,
                  right:
                      Responsive.isDesktop(context) ? Insets().appPadding : 13,
                ),
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(Insets().appPadding / 3),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Insets().appGap + 6)),
                child: SizedBox(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                        dataRowHeight: 55,
                        headingTextStyle:
                            TextStyle(color: Palette().primaryColor),
                        horizontalMargin: 0,
                        columnSpacing: Responsive.isDesktop(context) &&
                                size.width < 1600
                            ? size.width / 12
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 9.3
                                : 25,
                        showCheckboxColumn: true,
                        checkboxHorizontalMargin: 10,
                        showBottomBorder: true,
                        columns: [
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Candidate",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Scheduled Date And Time",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Interview Round",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Status",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Action",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                        ],
                        rows: [
                          DataRow(onSelectChanged: (value) {}, cells: [
                            DataCell(HeadingText(
                              size: 14,
                              value: "Mr.Domingo Nolan",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "14 February,2023 07:59 am",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Manager round",
                            )),
                            DataCell(searchInputOptions(
                              value: "Pending",
                              opt2: "Pending",
                              opt1: "Hired",
                              opt3: "Completed",
                              opt4: "Cancelled",
                              opt5: "Rejected",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: interviewDetails(),
                                        ),
                                      ));
                                    },
                                    tooltip: "View",
                                    icon: Icon(
                                      Icons.visibility,
                                      color: Colors.grey.shade700,
                                    ),
                                    iconSize: 17),
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) =>
                                              addInterviewSchedule());
                                    },
                                    tooltip: "Edit",
                                    icon: Icon(Icons.edit,
                                        color: Colors.blueAccent),
                                    iconSize: 17),
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addInterviewSchedule(
                                                reschudle: true,
                                              ));
                                    },
                                    tooltip: "Reschedule Interview",
                                    icon: Icon(
                                      Icons.recycling,
                                      color: Colors.green,
                                    ),
                                    iconSize: 17),
                                IconButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (_) => deleteDialog());
                                  },
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.redAccent,
                                  ),
                                  tooltip: "Delete",
                                  iconSize: 17,
                                ),
                              ],
                            )),
                          ]),
                          DataRow(onSelectChanged: (value) {}, cells: [
                            DataCell(HeadingText(
                              size: 14,
                              value: "Mr.Domingo Nolan",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "14 February,2023 07:59 am",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Manager round",
                            )),
                            DataCell(searchInputOptions(
                              value: "Pending",
                              opt2: "Pending",
                              opt1: "Hired",
                              opt3: "Completed",
                              opt4: "Cancelled",
                              opt5: "Rejected",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: interviewDetails(),
                                        ),
                                      ));
                                    },
                                    tooltip: "View",
                                    icon: Icon(
                                      Icons.visibility,
                                      color: Colors.grey.shade700,
                                    ),
                                    iconSize: 17),
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) =>
                                              addInterviewSchedule());
                                    },
                                    tooltip: "Edit",
                                    icon: Icon(Icons.edit,
                                        color: Colors.blueAccent),
                                    iconSize: 17),
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addInterviewSchedule(
                                                reschudle: true,
                                              ));
                                    },
                                    tooltip: "Reschedule Interview",
                                    icon: Icon(
                                      Icons.recycling,
                                      color: Colors.green,
                                    ),
                                    iconSize: 17),
                                IconButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (_) => deleteDialog());
                                  },
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.redAccent,
                                  ),
                                  tooltip: "Delete",
                                  iconSize: 17,
                                ),
                              ],
                            )),
                          ]),
                          DataRow(onSelectChanged: (value) {}, cells: [
                            DataCell(HeadingText(
                              size: 14,
                              value: "Mr.Domingo Nolan",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "14 February,2023 07:59 am",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Manager round",
                            )),
                            DataCell(searchInputOptions(
                              value: "Pending",
                              opt2: "Pending",
                              opt1: "Hired",
                              opt3: "Completed",
                              opt4: "Cancelled",
                              opt5: "Rejected",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: interviewDetails(),
                                        ),
                                      ));
                                    },
                                    tooltip: "View",
                                    icon: Icon(
                                      Icons.visibility,
                                      color: Colors.grey.shade700,
                                    ),
                                    iconSize: 17),
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) =>
                                              addInterviewSchedule());
                                    },
                                    tooltip: "Edit",
                                    icon: Icon(Icons.edit,
                                        color: Colors.blueAccent),
                                    iconSize: 17),
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addInterviewSchedule(
                                                reschudle: true,
                                              ));
                                    },
                                    tooltip: "Reschedule Interview",
                                    icon: Icon(
                                      Icons.recycling,
                                      color: Colors.green,
                                    ),
                                    iconSize: 17),
                                IconButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (_) => deleteDialog());
                                  },
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.redAccent,
                                  ),
                                  tooltip: "Delete",
                                  iconSize: 17,
                                ),
                              ],
                            )),
                          ]),
                          DataRow(onSelectChanged: (value) {}, cells: [
                            DataCell(HeadingText(
                              size: 14,
                              value: "Mr.Domingo Nolan",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "14 February,2023 07:59 am",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Manager round",
                            )),
                            DataCell(searchInputOptions(
                              value: "Pending",
                              opt2: "Pending",
                              opt1: "Hired",
                              opt3: "Completed",
                              opt4: "Cancelled",
                              opt5: "Rejected",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: interviewDetails(),
                                        ),
                                      ));
                                    },
                                    tooltip: "View",
                                    icon: Icon(
                                      Icons.visibility,
                                      color: Colors.grey.shade700,
                                    ),
                                    iconSize: 17),
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) =>
                                              addInterviewSchedule());
                                    },
                                    tooltip: "Edit",
                                    icon: Icon(Icons.edit,
                                        color: Colors.blueAccent),
                                    iconSize: 17),
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addInterviewSchedule(
                                                reschudle: true,
                                              ));
                                    },
                                    tooltip: "Reschedule Interview",
                                    icon: Icon(
                                      Icons.recycling,
                                      color: Colors.green,
                                    ),
                                    iconSize: 17),
                                IconButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (_) => deleteDialog());
                                  },
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.redAccent,
                                  ),
                                  tooltip: "Delete",
                                  iconSize: 17,
                                ),
                              ],
                            )),
                          ]),
                          DataRow(onSelectChanged: (value) {}, cells: [
                            DataCell(HeadingText(
                              size: 14,
                              value: "Mr.Domingo Nolan",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "14 February,2023 07:59 am",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Manager round",
                            )),
                            DataCell(searchInputOptions(
                              value: "Pending",
                              opt2: "Pending",
                              opt1: "Hired",
                              opt3: "Completed",
                              opt4: "Cancelled",
                              opt5: "Rejected",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: interviewDetails(),
                                        ),
                                      ));
                                    },
                                    tooltip: "View",
                                    icon: Icon(
                                      Icons.visibility,
                                      color: Colors.grey.shade700,
                                    ),
                                    iconSize: 17),
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) =>
                                              addInterviewSchedule());
                                    },
                                    tooltip: "Edit",
                                    icon: Icon(Icons.edit,
                                        color: Colors.blueAccent),
                                    iconSize: 17),
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addInterviewSchedule(
                                                reschudle: true,
                                              ));
                                    },
                                    tooltip: "Reschedule Interview",
                                    icon: Icon(
                                      Icons.recycling,
                                      color: Colors.green,
                                    ),
                                    iconSize: 17),
                                IconButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (_) => deleteDialog());
                                  },
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.redAccent,
                                  ),
                                  tooltip: "Delete",
                                  iconSize: 17,
                                ),
                              ],
                            )),
                          ]),
                        ]),
                  ),
                ),
              ),
            ]),
          )
        ],
      )),
    );
  }
}
