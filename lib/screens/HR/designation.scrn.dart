import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/deleteDialog.comp.dart';
import 'package:skyhospital_erp/components/downloadBar.comp.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/searchBar.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/components/tile3.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/screens/HR/addDesignation.scrn.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class designation extends StatefulWidget {
  const designation({super.key});

  @override
  State<designation> createState() => _designationState();
}

class _designationState extends State<designation> {
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
              value: "Designation",
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
                  width: Responsive.isDesktop(context) ? size.width / 2 : null,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: tile3(
                        icon: Icons.person,
                        link: addDesignation(),
                        linkTitle: "New Designation",
                      )),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.only(right: Insets().appPadding * 2),
                        child: tile2(
                            tileHeading: "Total Designations", tileData: "120"),
                      )),
                    ],
                  ),
                )
              ],
              if (!Responsive.isDesktop(context)) ...[
                Container(
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                      top: Insets().appPadding / 2,
                    ),
                    child: tile3(
                      icon: Icons.person,
                      link: addDesignation(),
                      linkTitle: "New Designation",
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(
                        tileHeading: "Total Designations", tileData: "120")),
              ]
            ],
          ),
          searchBar(
            title: "Search for Designation",
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
                            ? size.width / 3.5
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 3.1
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
                              value: "Parent designation",
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
                              value: "Trainee",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "-",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addDesignation());
                                    },
                                    tooltip: "Edit",
                                    icon: Icon(
                                      Icons.create,
                                      color: Colors.blueAccent,
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
                              value: "Trainee",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "-",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addDesignation());
                                    },
                                    tooltip: "Edit",
                                    icon: Icon(
                                      Icons.create,
                                      color: Colors.blueAccent,
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
                              value: "Trainee",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "-",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addDesignation());
                                    },
                                    tooltip: "Edit",
                                    icon: Icon(
                                      Icons.create,
                                      color: Colors.blueAccent,
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
                              value: "Trainee",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "-",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addDesignation());
                                    },
                                    tooltip: "Edit",
                                    icon: Icon(
                                      Icons.create,
                                      color: Colors.blueAccent,
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
                              value: "Trainee",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "-",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addDesignation());
                                    },
                                    tooltip: "Edit",
                                    icon: Icon(
                                      Icons.create,
                                      color: Colors.blueAccent,
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
