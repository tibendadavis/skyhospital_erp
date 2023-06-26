import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/deleteDialog.comp.dart';
import 'package:skyhospital_erp/components/downloadBar.comp.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/searchBar.comp.dart';
import 'package:skyhospital_erp/components/searchInputOptions.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

// ignore: must_be_immutable
class candidateDB extends StatefulWidget {
  bool? heading;
  candidateDB({super.key, this.heading});

  @override
  State<candidateDB> createState() => _candidateDBState();
}

class _candidateDBState extends State<candidateDB> {
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
                value: "Candidate Database",
                fontWeight: FontWeight.w700,
                color: Colors.grey.shade800,
              ),
            ),
          Flex(
            direction:
                Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
            children: [
              if (Responsive.isDesktop(context)) ...[
                SizedBox(
                  width: Responsive.isDesktop(context) ? size.width / 4 : null,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.only(right: Insets().appPadding * 2),
                        child: tile2(
                            tileHeading: "Total Candidates", tileData: "120"),
                      )),
                    ],
                  ),
                )
              ],
              if (!Responsive.isDesktop(context)) ...[
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                      top: Insets().appPadding / 2,
                    ),
                    child: tile2(
                        tileHeading: "Total Candidates", tileData: "120")),
              ]
            ],
          ),
          searchBar(
            title: "Search for Candidate",
            opt1: searchInputOptions(
              title: "Skill",
              opt1: "",
            ),
            opt2: searchInputOptions(
              title: "Job",
              opt1: "",
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
          downloadBar(results: "7"),
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
                        dataRowHeight: 50,
                        headingTextStyle:
                            TextStyle(color: Palette().primaryColor),
                        horizontalMargin: 0,
                        columnSpacing: Responsive.isDesktop(context) &&
                                size.width < 1600
                            ? size.width / 11
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 8.8
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
                              value: "Job",
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
                              value: "Job Applied",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Skills",
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
                              value: "Jane Smith Doe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "UI/UX Developer",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Dar, Tanzania",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "24-01-2023",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Adobe",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
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
                              value: "Jane Smith Doe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "UI/UX Developer",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Dar, Tanzania",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "24-01-2023",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Adobe",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
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
                              value: "Jane Smith Doe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "UI/UX Developer",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Dar, Tanzania",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "24-01-2023",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Adobe",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
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
                              value: "Jane Smith Doe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "UI/UX Developer",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Dar, Tanzania",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "24-01-2023",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Adobe",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
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
                              value: "Jane Smith Doe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "UI/UX Developer",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Dar, Tanzania",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "24-01-2023",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Adobe",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
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
                              value: "Jane Smith Doe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "UI/UX Developer",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Dar, Tanzania",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "24-01-2023",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Adobe",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
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
                              value: "Jane Smith Doe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "UI/UX Developer",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Dar, Tanzania",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "24-01-2023",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Adobe",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
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
