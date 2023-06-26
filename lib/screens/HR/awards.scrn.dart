import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/deleteDialog.comp.dart';
import 'package:skyhospital_erp/components/downloadBar.comp.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/searchBar.comp.dart';
import 'package:skyhospital_erp/components/searchInputOptions.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/components/tile3.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/screens/HR/addAward.scrn.dart';

import 'package:skyhospital_erp/screens/HR/appreciation.scrn.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class awards extends StatefulWidget {
  const awards({super.key});

  @override
  State<awards> createState() => _awardsState();
}

class _awardsState extends State<awards> {
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
              value: "Awards",
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
                  width:
                      Responsive.isDesktop(context) ? size.width / 1.5 : null,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: tile3(
                        icon: Icons.card_giftcard_rounded,
                        link: addAward(),
                        linkTitle: "New Award",
                      )),
                      Expanded(
                          child: tile2(
                        link: appreciation(),
                        linkTitle: "Appreciation",
                        tileData: '7',
                        tileHeading: 'Appreciations',
                      )),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.only(right: Insets().appPadding * 2),
                        child:
                            tile2(tileHeading: "Total Awards", tileData: "120"),
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
                      icon: Icons.card_giftcard_rounded,
                      link: addAward(),
                      linkTitle: "New Award",
                    )),
                Container(
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                      top: Insets().appPadding / 2,
                    ),
                    child: tile2(
                      link: appreciation(),
                      linkTitle: "Appreciation",
                      tileData: '7',
                      tileHeading: 'Appreciations',
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(tileHeading: "Total Awards", tileData: "120")),
              ]
            ],
          ),
          searchBar(
            title: "Search for Awards",
            opt1: searchInputOptions(
                opt1: "Active", opt2: "Inactive", title: "Status"),
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
                        dataRowHeight: 57,
                        headingTextStyle:
                            TextStyle(color: Palette().primaryColor),
                        horizontalMargin: 0,
                        columnSpacing: Responsive.isDesktop(context) &&
                                size.width < 1600
                            ? size.width / 6.5
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 5.2
                                : 25,
                        showCheckboxColumn: true,
                        checkboxHorizontalMargin: 30,
                        showBottomBorder: true,
                        columns: [
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Icon",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Title",
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
                            DataCell(CircleAvatar(
                                radius: Insets().appRadiusMid + 7,
                                backgroundColor: Colors.orangeAccent,
                                child: Center(
                                    child:
                                        Icon(Icons.wallet_giftcard_rounded)))),
                            DataCell(
                              HeadingText(
                                size: 14,
                                value: "Employee Of The Month",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            DataCell(searchInputOptions(
                              opt1: "Active",
                              opt2: "Inactive",
                              value: "Active",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addAward());
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
                            DataCell(CircleAvatar(
                                radius: Insets().appRadiusMid + 7,
                                backgroundColor: Colors.orangeAccent,
                                child: Center(
                                    child:
                                        Icon(Icons.wallet_giftcard_rounded)))),
                            DataCell(
                              HeadingText(
                                size: 14,
                                value: "Employee Of The Month",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            DataCell(searchInputOptions(
                              opt1: "Active",
                              opt2: "Inactive",
                              value: "Active",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addAward());
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
                            DataCell(CircleAvatar(
                                radius: Insets().appRadiusMid + 7,
                                backgroundColor: Colors.orangeAccent,
                                child: Center(
                                    child:
                                        Icon(Icons.wallet_giftcard_rounded)))),
                            DataCell(
                              HeadingText(
                                size: 14,
                                value: "Employee Of The Month",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            DataCell(searchInputOptions(
                              opt1: "Active",
                              opt2: "Inactive",
                              value: "Active",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addAward());
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
                            DataCell(CircleAvatar(
                                radius: Insets().appRadiusMid + 7,
                                backgroundColor: Colors.orangeAccent,
                                child: Center(
                                    child:
                                        Icon(Icons.wallet_giftcard_rounded)))),
                            DataCell(
                              HeadingText(
                                size: 14,
                                value: "Employee Of The Month",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            DataCell(searchInputOptions(
                              opt1: "Active",
                              opt2: "Inactive",
                              value: "Active",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addAward());
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
                            DataCell(CircleAvatar(
                                radius: Insets().appRadiusMid + 7,
                                backgroundColor: Colors.orangeAccent,
                                child: Center(
                                    child:
                                        Icon(Icons.wallet_giftcard_rounded)))),
                            DataCell(
                              HeadingText(
                                size: 14,
                                value: "Employee Of The Month",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            DataCell(searchInputOptions(
                              opt1: "Active",
                              opt2: "Inactive",
                              value: "Active",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addAward());
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
                            DataCell(CircleAvatar(
                                radius: Insets().appRadiusMid + 7,
                                backgroundColor: Colors.orangeAccent,
                                child: Center(
                                    child:
                                        Icon(Icons.wallet_giftcard_rounded)))),
                            DataCell(
                              HeadingText(
                                size: 14,
                                value: "Employee Of The Month",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            DataCell(searchInputOptions(
                              opt1: "Active",
                              opt2: "Inactive",
                              value: "Active",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addAward());
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
                            DataCell(CircleAvatar(
                                radius: Insets().appRadiusMid + 7,
                                backgroundColor: Colors.orangeAccent,
                                child: Center(
                                    child:
                                        Icon(Icons.wallet_giftcard_rounded)))),
                            DataCell(
                              HeadingText(
                                size: 14,
                                value: "Employee Of The Month",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            DataCell(searchInputOptions(
                              opt1: "Active",
                              opt2: "Inactive",
                              value: "Active",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addAward());
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
