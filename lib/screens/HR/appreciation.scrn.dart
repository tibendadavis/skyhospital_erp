import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/deleteDialog.comp.dart';
import 'package:skyhospital_erp/components/downloadBar.comp.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/searchBar.comp.dart';
import 'package:skyhospital_erp/components/searchInputOptions.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/components/tile3.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/screens/HR/addAppreciation.scrn.dart';
import 'package:skyhospital_erp/screens/HR/awards.scrn.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

// ignore: must_be_immutable
class appreciation extends StatefulWidget {
  bool? heading;
  appreciation({super.key, this.heading});

  @override
  State<appreciation> createState() => _appreciationState();
}

class _appreciationState extends State<appreciation> {
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
                value: "Appreciation",
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
                        icon: Icons.badge_rounded,
                        link: addAppreciation(),
                        linkTitle: "New Appreciation",
                      )),
                      Expanded(
                          child: tile2(
                        link: awards(),
                        linkTitle: "Awards",
                        tileData: '7',
                        tileHeading: 'Awards',
                      )),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.only(right: Insets().appPadding * 2),
                        child: tile2(
                            tileHeading: "Total Appreciations",
                            tileData: "120"),
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
                      icon: Icons.badge_rounded,
                      link: addAppreciation(),
                      linkTitle: "New Appreciation",
                    )),
                Container(
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                      top: Insets().appPadding / 2,
                    ),
                    child: tile2(
                      link: awards(),
                      linkTitle: "Awards",
                      tileData: '7',
                      tileHeading: 'Awards',
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(
                        tileHeading: "Total Appreciations", tileData: "120")),
              ]
            ],
          ),
          searchBar(
            title: "Search for Employee",
            opt1: searchInputOptions(
              title: "Duration",
              opt1: "All",
            ),
            opt2: searchInputOptions(
              title: "Award",
              opt1: "All",
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
                            ? size.width / 8
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 6
                                : 25,
                        showCheckboxColumn: true,
                        checkboxHorizontalMargin: 10,
                        showBottomBorder: true,
                        columns: [
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Given To",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Award Name",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Given On",
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
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(radius: Insets().appRadiusMid + 2),
                                SizedBox(
                                  width: 6,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    HeadingText(
                                      size: 14,
                                      value: "Kwilasa, Minda Busobe",
                                      fontWeight: FontWeight.w600,
                                    ),
                                    HeadingText(
                                      size: 14,
                                      value: "Senior",
                                      color: Colors.grey.shade700,
                                    ),
                                  ],
                                ),
                              ],
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                    radius: Insets().appRadiusMid + 2,
                                    backgroundColor: Colors.orangeAccent,
                                    child: Center(
                                        child: Icon(
                                            Icons.wallet_giftcard_rounded))),
                                SizedBox(
                                  width: 6,
                                ),
                                HeadingText(
                                  size: 14,
                                  value: "Employee Of The Month",
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "23-01-2023",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addAppreciation());
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
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(radius: Insets().appRadiusMid + 2),
                                SizedBox(
                                  width: 6,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    HeadingText(
                                      size: 14,
                                      value: "Kwilasa, Minda Busobe",
                                      fontWeight: FontWeight.w600,
                                    ),
                                    HeadingText(
                                      size: 14,
                                      value: "Senior",
                                      color: Colors.grey.shade700,
                                    ),
                                  ],
                                ),
                              ],
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                    radius: Insets().appRadiusMid + 2,
                                    backgroundColor: Colors.orangeAccent,
                                    child: Center(
                                        child: Icon(
                                            Icons.wallet_giftcard_rounded))),
                                SizedBox(
                                  width: 6,
                                ),
                                HeadingText(
                                  size: 14,
                                  value: "Employee Of The Month",
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "23-01-2023",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addAppreciation());
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
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(radius: Insets().appRadiusMid + 2),
                                SizedBox(
                                  width: 6,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    HeadingText(
                                      size: 14,
                                      value: "Kwilasa, Minda Busobe",
                                      fontWeight: FontWeight.w600,
                                    ),
                                    HeadingText(
                                      size: 14,
                                      value: "Senior",
                                      color: Colors.grey.shade700,
                                    ),
                                  ],
                                ),
                              ],
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                    radius: Insets().appRadiusMid + 2,
                                    backgroundColor: Colors.orangeAccent,
                                    child: Center(
                                        child: Icon(
                                            Icons.wallet_giftcard_rounded))),
                                SizedBox(
                                  width: 6,
                                ),
                                HeadingText(
                                  size: 14,
                                  value: "Employee Of The Month",
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "23-01-2023",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addAppreciation());
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
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(radius: Insets().appRadiusMid + 2),
                                SizedBox(
                                  width: 6,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    HeadingText(
                                      size: 14,
                                      value: "Kwilasa, Minda Busobe",
                                      fontWeight: FontWeight.w600,
                                    ),
                                    HeadingText(
                                      size: 14,
                                      value: "Senior",
                                      color: Colors.grey.shade700,
                                    ),
                                  ],
                                ),
                              ],
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                    radius: Insets().appRadiusMid + 2,
                                    backgroundColor: Colors.orangeAccent,
                                    child: Center(
                                        child: Icon(
                                            Icons.wallet_giftcard_rounded))),
                                SizedBox(
                                  width: 6,
                                ),
                                HeadingText(
                                  size: 14,
                                  value: "Employee Of The Month",
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "23-01-2023",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addAppreciation());
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
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(radius: Insets().appRadiusMid + 2),
                                SizedBox(
                                  width: 6,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    HeadingText(
                                      size: 14,
                                      value: "Kwilasa, Minda Busobe",
                                      fontWeight: FontWeight.w600,
                                    ),
                                    HeadingText(
                                      size: 14,
                                      value: "Senior",
                                      color: Colors.grey.shade700,
                                    ),
                                  ],
                                ),
                              ],
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                    radius: Insets().appRadiusMid + 2,
                                    backgroundColor: Colors.orangeAccent,
                                    child: Center(
                                        child: Icon(
                                            Icons.wallet_giftcard_rounded))),
                                SizedBox(
                                  width: 6,
                                ),
                                HeadingText(
                                  size: 14,
                                  value: "Employee Of The Month",
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "23-01-2023",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addAppreciation());
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
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(radius: Insets().appRadiusMid + 2),
                                SizedBox(
                                  width: 6,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    HeadingText(
                                      size: 14,
                                      value: "Kwilasa, Minda Busobe",
                                      fontWeight: FontWeight.w600,
                                    ),
                                    HeadingText(
                                      size: 14,
                                      value: "Senior",
                                      color: Colors.grey.shade700,
                                    ),
                                  ],
                                ),
                              ],
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                    radius: Insets().appRadiusMid + 2,
                                    backgroundColor: Colors.orangeAccent,
                                    child: Center(
                                        child: Icon(
                                            Icons.wallet_giftcard_rounded))),
                                SizedBox(
                                  width: 6,
                                ),
                                HeadingText(
                                  size: 14,
                                  value: "Employee Of The Month",
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "23-01-2023",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addAppreciation());
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
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(radius: Insets().appRadiusMid + 2),
                                SizedBox(
                                  width: 6,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    HeadingText(
                                      size: 14,
                                      value: "Kwilasa, Minda Busobe",
                                      fontWeight: FontWeight.w600,
                                    ),
                                    HeadingText(
                                      size: 14,
                                      value: "Senior",
                                      color: Colors.grey.shade700,
                                    ),
                                  ],
                                ),
                              ],
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                    radius: Insets().appRadiusMid + 2,
                                    backgroundColor: Colors.orangeAccent,
                                    child: Center(
                                        child: Icon(
                                            Icons.wallet_giftcard_rounded))),
                                SizedBox(
                                  width: 6,
                                ),
                                HeadingText(
                                  size: 14,
                                  value: "Employee Of The Month",
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "23-01-2023",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addAppreciation());
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
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(radius: Insets().appRadiusMid + 2),
                                SizedBox(
                                  width: 6,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    HeadingText(
                                      size: 14,
                                      value: "Kwilasa, Minda Busobe",
                                      fontWeight: FontWeight.w600,
                                    ),
                                    HeadingText(
                                      size: 14,
                                      value: "Senior",
                                      color: Colors.grey.shade700,
                                    ),
                                  ],
                                ),
                              ],
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                    radius: Insets().appRadiusMid + 2,
                                    backgroundColor: Colors.orangeAccent,
                                    child: Center(
                                        child: Icon(
                                            Icons.wallet_giftcard_rounded))),
                                SizedBox(
                                  width: 6,
                                ),
                                HeadingText(
                                  size: 14,
                                  value: "Employee Of The Month",
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "23-01-2023",
                            )),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => addAppreciation());
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
