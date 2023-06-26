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
import 'package:skyhospital_erp/screens/HR/Recruitment/addJob.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/components/jobDetails.scrn.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class jobs extends StatefulWidget {
  const jobs({super.key});

  @override
  State<jobs> createState() => _jobsState();
}

class _jobsState extends State<jobs> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Expanded(
          child: Column(
        children: [
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
              value: "Jobs",
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
                  icon: Icons.work,
                  link: addJob(),
                  linkTitle: "New Job",
                )),
                Expanded(
                    child: tile2(tileHeading: "Total Jobs", tileData: "24")),
                Expanded(
                    child: tile2(tileHeading: "Open Jobs", tileData: "12")),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(right: Insets().appPadding * 2),
                  child: tile2(tileHeading: "Closed Jobs", tileData: "12"),
                ))
              ],
              if (!Responsive.isDesktop(context)) ...[
                Container(
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                      top: Insets().appPadding / 2,
                    ),
                    child: tile3(
                      icon: Icons.work,
                      link: addJob(),
                      linkTitle: "New Job",
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(tileHeading: "Total Jobs", tileData: "24")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(tileHeading: "Open Jobs", tileData: "12")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(tileHeading: "Closed Jobs", tileData: "12")),
              ]
            ],
          ),
          searchBar(
            title: "Search for Job",
            opt1: searchInputOptions(
              title: "Department",
              opt1: "All",
            ),
            opt2: searchInputOptions(
              title: "Status",
              opt1: "All",
              opt2: "Open",
              opt3: "Closed",
            ),
            opt3: searchInputOptions(
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
                            ? size.width / 9
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 7
                                : 25,
                        showCheckboxColumn: true,
                        checkboxHorizontalMargin: 10,
                        showBottomBorder: true,
                        columns: [
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Job Title",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Start Date",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "End Date",
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
                              value: "Software Developer",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "23-02-2023",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "15-03-2023",
                            )),
                            DataCell(searchInputOptions(
                              value: " Open",
                              opt2: " Closed",
                              opt1: " Open",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: jobDetails(),
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
                                          builder: (_) => addJob());
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
                              value: "Software Developer",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "23-02-2023",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "15-03-2023",
                            )),
                            DataCell(searchInputOptions(
                              value: " Open",
                              opt2: " Closed",
                              opt1: " Open",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: jobDetails(),
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
                                          builder: (_) => addJob());
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
                              value: "Software Developer",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "23-02-2023",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "15-03-2023",
                            )),
                            DataCell(searchInputOptions(
                              value: " Open",
                              opt2: " Closed",
                              opt1: " Open",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: jobDetails(),
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
                                          builder: (_) => addJob());
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
                              value: "Software Developer",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "23-02-2023",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "15-03-2023",
                            )),
                            DataCell(searchInputOptions(
                              value: " Open",
                              opt2: " Closed",
                              opt1: " Open",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: jobDetails(),
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
                                          builder: (_) => addJob());
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
                              value: "Software Developer",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "23-02-2023",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "15-03-2023",
                            )),
                            DataCell(searchInputOptions(
                              value: " Open",
                              opt2: " Closed",
                              opt1: " Open",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => MyHomePage(
                                          page: jobDetails(),
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
                                          builder: (_) => addJob());
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
