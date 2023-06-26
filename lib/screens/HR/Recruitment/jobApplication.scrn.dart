import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/deleteDialog.comp.dart';
import 'package:skyhospital_erp/components/downloadBar.comp.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/searchBar.comp.dart';
import 'package:skyhospital_erp/components/searchInputOptions.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/components/tile3.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/main.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/addJobApplication.scrn.dart';

import 'package:skyhospital_erp/screens/HR/Recruitment/components/jobApplicationDetails.scrn.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

// ignore: must_be_immutable
class jobApplication extends StatefulWidget {
  bool? heading;
  jobApplication({super.key, this.heading});

  @override
  State<jobApplication> createState() => _jobApplicationState();
}

class _jobApplicationState extends State<jobApplication> {
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
                value: "Job Applications",
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
                  icon: Icons.settings_applications_rounded,
                  link: addJobApplication(),
                  linkTitle: "New Job Application",
                )),
                Expanded(
                    child:
                        tile2(tileHeading: "Job Applications", tileData: "24")),
                Expanded(
                    child: tile2(tileHeading: "Hired Jobs", tileData: "12")),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(right: Insets().appPadding * 2),
                  child: tile2(tileHeading: "Rejections", tileData: "12"),
                ))
              ],
              if (!Responsive.isDesktop(context)) ...[
                Container(
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                      top: Insets().appPadding / 2,
                    ),
                    child: tile3(
                      icon: Icons.settings_applications_rounded,
                      link: addJobApplication(),
                      linkTitle: "New Job Application",
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child:
                        tile2(tileHeading: "Job Applications", tileData: "24")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(tileHeading: "Hired Jobs", tileData: "12")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(tileHeading: "Rejections", tileData: "12")),
              ]
            ],
          ),
          searchBar(
            title: "Search for Job Application",
            opt1: searchInputOptions(
              title: "Gender",
              opt1: "All",
              opt2: "Male",
              opt3: "Female",
            ),
            opt2: searchInputOptions(
              title: "Status",
              opt1: "All",
              opt2: "Applied",
              opt3: "Interview",
              opt4: "Hired",
              opt5: "Rejected",
              opt6: "Phone Screen",
            ),
            opt3: searchInputOptions(
              title: "Duration",
              opt1: "Today",
              opt2: "Last 30 Days",
              opt3: "Last Month",
              opt4: "Last 6 Months",
              opt5: "Last 1 Year",
            ),
            opt4: searchInputOptions(
                title: "Work Experience",
                opt1: "Fresher",
                opt2: "1-2 Years",
                opt3: "3-4 Years",
                opt4: "5-6 Years",
                opt5: "7-8 Years",
                opt6: "9-10 Years",
                opt7: "11-12 Years"),
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
                              value: "Name",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Jobs",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Job Location",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Date",
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
                              value: "Effie Douglas",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Designer",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Tanzania",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "23-02-2023",
                            )),
                            DataCell(searchInputOptions(
                              value: "Hired",
                              opt2: "Rejected",
                              opt1: "Hired",
                              opt3: "Interview",
                              opt4: "Applied",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: jobApplicationDetails(),
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
                                          builder: (_) => addJobApplication());
                                    },
                                    tooltip: "Edit",
                                    icon: Icon(Icons.edit,
                                        color: Colors.blueAccent),
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
                              value: "Effie Douglas",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Designer",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Tanzania",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "23-02-2023",
                            )),
                            DataCell(searchInputOptions(
                              value: "Hired",
                              opt2: "Rejected",
                              opt1: "Hired",
                              opt3: "Interview",
                              opt4: "Applied",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: jobApplicationDetails(),
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
                                          builder: (_) => addJobApplication());
                                    },
                                    tooltip: "Edit",
                                    icon: Icon(Icons.edit,
                                        color: Colors.blueAccent),
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
                              value: "Effie Douglas",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Designer",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Tanzania",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "23-02-2023",
                            )),
                            DataCell(searchInputOptions(
                              value: "Hired",
                              opt2: "Rejected",
                              opt1: "Hired",
                              opt3: "Interview",
                              opt4: "Applied",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: jobApplicationDetails(),
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
                                          builder: (_) => addJobApplication());
                                    },
                                    tooltip: "Edit",
                                    icon: Icon(Icons.edit,
                                        color: Colors.blueAccent),
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
                              value: "Effie Douglas",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Designer",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Tanzania",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "23-02-2023",
                            )),
                            DataCell(searchInputOptions(
                              value: "Hired",
                              opt2: "Rejected",
                              opt1: "Hired",
                              opt3: "Interview",
                              opt4: "Applied",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: jobApplicationDetails(),
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
                                          builder: (_) => addJobApplication());
                                    },
                                    tooltip: "Edit",
                                    icon: Icon(Icons.edit,
                                        color: Colors.blueAccent),
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
                              value: "Effie Douglas",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Designer",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Tanzania",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "23-02-2023",
                            )),
                            DataCell(searchInputOptions(
                              value: "Hired",
                              opt2: "Rejected",
                              opt1: "Hired",
                              opt3: "Interview",
                              opt4: "Applied",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: jobApplicationDetails(),
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
                                          builder: (_) => addJobApplication());
                                    },
                                    tooltip: "Edit",
                                    icon: Icon(Icons.edit,
                                        color: Colors.blueAccent),
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
