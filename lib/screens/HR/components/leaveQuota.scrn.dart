import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skyhospital_erp/components/heading3.dart';
import 'package:skyhospital_erp/components/heading4.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class leaveQuota extends StatefulWidget {
  leaveQuota({super.key});

  @override
  State<leaveQuota> createState() => _leaveQuotaState();
}

class _leaveQuotaState extends State<leaveQuota> {
  bool _manageLeaveType = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Expanded(
          child: ListView(
        children: [
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
                          child: tile2(
                        tileData: "15",
                        tileHeading: "Remaining Leaves",
                        icon: Icons.logout_rounded,
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
                    child: tile2(
                      tileData: "15",
                      tileHeading: "Remaining Leaves",
                      icon: Icons.logout_rounded,
                    )),
              ]
            ],
          ),
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
                  Heading3(
                    value: "Leaves Quota",
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //     if()
                  Visibility(
                    visible: !_manageLeaveType,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _manageLeaveType = true;
                        });
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.settings,
                            color: Palette().primaryColor,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Heading4(
                              value: "Manage", color: Palette().primaryColor),
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _manageLeaveType,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(Insets().appPadding / 3),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(Insets().appGap + 6)),
                          child: SizedBox(
                            width: double.infinity,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: DataTable(
                                  dataRowHeight: 50,
                                  headingTextStyle:
                                      TextStyle(color: Palette().primaryColor),
                                  horizontalMargin: 0,
                                  columnSpacing:
                                      Responsive.isDesktop(context) &&
                                              size.width < 1600
                                          ? size.width / 4
                                          : Responsive.isDesktop(context) &&
                                                  size.width > 1600
                                              ? size.width / 3.3
                                              : 25,
                                  showCheckboxColumn: false,
                                  checkboxHorizontalMargin: 10,
                                  showBottomBorder: true,
                                  columns: [
                                    DataColumn(
                                        label: HeadingText(
                                      size: 14,
                                      value: "Leave Type",
                                      fontWeight: FontWeight.w700,
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "No. of Leaves",
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
                                    DataRow(
                                        onSelectChanged: (value) {},
                                        cells: [
                                          DataCell(Row(
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                color: Colors.green,
                                                size: 15,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              HeadingText(
                                                size: 14,
                                                value: "Casual",
                                              ),
                                            ],
                                          )),
                                          DataCell(
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              width: 200,
                                              height: 40,
                                              padding: EdgeInsets.only(
                                                left: Insets().appPadding / 2,
                                                right: Insets().appPadding / 2,
                                              ),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      width: 1,
                                                      color: Colors.grey),
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          Insets().appPadding /
                                                              1.5)),
                                              child: TextFormField(
                                                  style: GoogleFonts.openSans(
                                                    fontSize:
                                                        Responsive.isDesktop(
                                                                context)
                                                            ? 16
                                                            : 14,
                                                  ),

                                                  // controller: value,
                                                  onChanged: (val) {},
                                                  onEditingComplete: () {
                                                    setState(() {
                                                      //   value.text = widget.value!;
                                                    });
                                                  },
                                                  textAlignVertical:
                                                      TextAlignVertical.center,
                                                  decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      hintText: "e.g. 5")),
                                            ),
                                          ),
                                          DataCell(Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              IconButton(
                                                  onPressed: () {},
                                                  tooltip: "Save",
                                                  icon: Icon(Icons.check,
                                                      color: Colors.blue),
                                                  iconSize: 20),
                                              IconButton(
                                                onPressed: () {},
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
                                    DataRow(
                                        onSelectChanged: (value) {},
                                        cells: [
                                          DataCell(Row(
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                color: Colors.red,
                                                size: 15,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              HeadingText(
                                                size: 14,
                                                value: "Sick",
                                              ),
                                            ],
                                          )),
                                          DataCell(
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              width: 200,
                                              height: 40,
                                              padding: EdgeInsets.only(
                                                left: Insets().appPadding / 2,
                                                right: Insets().appPadding / 2,
                                              ),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      width: 1,
                                                      color: Colors.grey),
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          Insets().appPadding /
                                                              1.5)),
                                              child: TextFormField(
                                                  style: GoogleFonts.openSans(
                                                    fontSize:
                                                        Responsive.isDesktop(
                                                                context)
                                                            ? 16
                                                            : 14,
                                                  ),

                                                  // controller: value,
                                                  onChanged: (val) {},
                                                  onEditingComplete: () {
                                                    setState(() {
                                                      //   value.text = widget.value!;
                                                    });
                                                  },
                                                  textAlignVertical:
                                                      TextAlignVertical.center,
                                                  decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      hintText: "e.g. 5")),
                                            ),
                                          ),
                                          DataCell(Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              IconButton(
                                                  onPressed: () {},
                                                  tooltip: "Save",
                                                  icon: Icon(Icons.check,
                                                      color: Colors.blue),
                                                  iconSize: 20),
                                              IconButton(
                                                onPressed: () {},
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
                                    DataRow(
                                        onSelectChanged: (value) {},
                                        cells: [
                                          DataCell(Row(
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                color: Colors.purple,
                                                size: 15,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              HeadingText(
                                                size: 14,
                                                value: "Earned",
                                              ),
                                            ],
                                          )),
                                          DataCell(
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              width: 200,
                                              height: 40,
                                              padding: EdgeInsets.only(
                                                left: Insets().appPadding / 2,
                                                right: Insets().appPadding / 2,
                                              ),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      width: 1,
                                                      color: Colors.grey),
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          Insets().appPadding /
                                                              1.5)),
                                              child: TextFormField(
                                                  style: GoogleFonts.openSans(
                                                    fontSize:
                                                        Responsive.isDesktop(
                                                                context)
                                                            ? 16
                                                            : 14,
                                                  ),

                                                  // controller: value,
                                                  onChanged: (val) {},
                                                  onEditingComplete: () {
                                                    setState(() {
                                                      //   value.text = widget.value!;
                                                    });
                                                  },
                                                  textAlignVertical:
                                                      TextAlignVertical.center,
                                                  decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      hintText: "e.g. 5")),
                                            ),
                                          ),
                                          DataCell(Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              IconButton(
                                                  onPressed: () {},
                                                  tooltip: "Save",
                                                  icon: Icon(Icons.check,
                                                      color: Colors.blue),
                                                  iconSize: 20),
                                              IconButton(
                                                onPressed: () {},
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
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    _manageLeaveType = false;
                                  });
                                },
                                child: Heading5(
                                  value: "Cancel",
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(Insets().appPadding / 3),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(Insets().appGap + 6)),
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
                                ? size.width / 7.3
                                : Responsive.isDesktop(context) &&
                                        size.width > 1600
                                    ? size.width / 5.7
                                    : 25,
                            showCheckboxColumn: false,
                            checkboxHorizontalMargin: 10,
                            showBottomBorder: true,
                            columns: [
                              DataColumn(
                                  label: HeadingText(
                                size: 14,
                                value: "Leave Type",
                                fontWeight: FontWeight.w700,
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "No. of Leaves",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "Monthly Limit",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "Total Leaves Taken",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                            ],
                            rows: [
                              DataRow(onSelectChanged: (value) {}, cells: [
                                DataCell(Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.green,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    HeadingText(
                                      size: 14,
                                      value: "Casual",
                                    ),
                                  ],
                                )),
                                DataCell(
                                  HeadingText(
                                    size: 14,
                                    value: "5",
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    width: 200,
                                    height: 40,
                                    padding: EdgeInsets.only(
                                      left: Insets().appPadding / 2,
                                      right: Insets().appPadding / 2,
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.grey),
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                            Insets().appPadding / 1.5)),
                                    child: TextFormField(
                                        style: GoogleFonts.openSans(
                                          fontSize:
                                              Responsive.isDesktop(context)
                                                  ? 16
                                                  : 14,
                                        ),

                                        // controller: value,
                                        onChanged: (val) {},
                                        onEditingComplete: () {
                                          setState(() {
                                            //   value.text = widget.value!;
                                          });
                                        },
                                        textAlignVertical:
                                            TextAlignVertical.center,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "e.g. 5")),
                                  ),
                                ),
                                DataCell(
                                  HeadingText(
                                    size: 14,
                                    value: "0",
                                  ),
                                ),
                              ]),
                              DataRow(onSelectChanged: (value) {}, cells: [
                                DataCell(Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.red,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    HeadingText(
                                      size: 14,
                                      value: "Sick",
                                    ),
                                  ],
                                )),
                                DataCell(
                                  HeadingText(
                                    size: 14,
                                    value: "5",
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    width: 200,
                                    height: 40,
                                    padding: EdgeInsets.only(
                                      left: Insets().appPadding / 2,
                                      right: Insets().appPadding / 2,
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.grey),
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                            Insets().appPadding / 1.5)),
                                    child: TextFormField(
                                        style: GoogleFonts.openSans(
                                          fontSize:
                                              Responsive.isDesktop(context)
                                                  ? 16
                                                  : 14,
                                        ),

                                        // controller: value,
                                        onChanged: (val) {},
                                        onEditingComplete: () {
                                          setState(() {
                                            //   value.text = widget.value!;
                                          });
                                        },
                                        textAlignVertical:
                                            TextAlignVertical.center,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "e.g. 5")),
                                  ),
                                ),
                                DataCell(
                                  HeadingText(
                                    size: 14,
                                    value: "0",
                                  ),
                                ),
                              ]),
                              DataRow(onSelectChanged: (value) {}, cells: [
                                DataCell(Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.purple,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    HeadingText(
                                      size: 14,
                                      value: "Earned",
                                    ),
                                  ],
                                )),
                                DataCell(
                                  HeadingText(
                                    size: 14,
                                    value: "5",
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    width: 200,
                                    height: 40,
                                    padding: EdgeInsets.only(
                                      left: Insets().appPadding / 2,
                                      right: Insets().appPadding / 2,
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.grey),
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                            Insets().appPadding / 1.5)),
                                    child: TextFormField(
                                        style: GoogleFonts.openSans(
                                          fontSize:
                                              Responsive.isDesktop(context)
                                                  ? 16
                                                  : 14,
                                        ),

                                        // controller: value,
                                        onChanged: (val) {},
                                        onEditingComplete: () {
                                          setState(() {
                                            //   value.text = widget.value!;
                                          });
                                        },
                                        textAlignVertical:
                                            TextAlignVertical.center,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "e.g. 5")),
                                  ),
                                ),
                                DataCell(
                                  HeadingText(
                                    size: 14,
                                    value: "0",
                                  ),
                                ),
                              ]),
                            ]),
                      ),
                    ),
                  ),
                ]),
          ),
        ],
      )),
    );
  }
}
