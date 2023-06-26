import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/downloadBar.comp.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading6.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/searchInputOptions.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class receptionStaff extends StatefulWidget {
  const receptionStaff({super.key});

  @override
  State<receptionStaff> createState() => _receptionStaffState();
}

class _receptionStaffState extends State<receptionStaff> {
  @override
  Widget build(BuildContext context) {
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
              value: "Reception Staff",
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
                  child: Container(
                    margin: EdgeInsets.only(
                        left: Insets().appPadding * 2,
                        top: Insets().appPadding,
                        bottom: Insets().appPadding),
                    padding: EdgeInsets.only(
                        left: Insets().appPadding,
                        right: Insets().appPadding,
                        top: Insets().appGap + 2,
                        bottom: Insets().appPadding),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Palette().borderColor,
                            blurRadius: 15.0, // soften the shadow
                            spreadRadius: 2.0, //extend the shadow
                            offset: Offset(
                              1.0, // Move to right 5  horizontally
                              2.0, // Move to bottom 5 Vertically
                            ),
                          )
                        ],
                        color: Palette().primaryColor,
                        borderRadius:
                            BorderRadius.circular(Insets().appRadiusMin + 4)),
                    child: SizedBox(
                      height: 70,
                      child: Row(
                        children: [
                          Icon(
                            Icons.person,
                            size: 50,
                            color: Colors.white,
                          ),
                          Spacer(),
                          ElevatedButton(
                              onPressed: () {
                                // showDialog(
                                //     context: context,
                                //     builder: (_) => addReceptionStaff());
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          Insets().appRadiusMin + 4)),
                                  padding: EdgeInsets.all(Insets().appPadding)),
                              child: Heading5(
                                value: "New Reception Staff",
                                color: Colors.black,
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: tile2(
                        tileHeading: "Total Reception Staffs",
                        tileData: "240")),
                Expanded(
                    child: tile2(
                        tileHeading: "Total Male Reception Staffs",
                        tileData: "120")),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(right: Insets().appPadding * 2),
                  child: tile2(
                      tileHeading: "Total Female Reception Staffs",
                      tileData: "120"),
                ))
              ],
              if (!Responsive.isDesktop(context)) ...[
                Container(
                  margin: EdgeInsets.only(
                    left: Insets().appPadding,
                    right: Insets().appPadding,
                    top: Insets().appPadding / 2,
                  ),
                  padding: EdgeInsets.only(
                      left: Insets().appPadding,
                      right: Insets().appPadding,
                      top: Insets().appGap + 2,
                      bottom: Insets().appPadding),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Palette().borderColor,
                          blurRadius: 15.0, // soften the shadow
                          spreadRadius: 2.0, //extend the shadow
                          offset: Offset(
                            1.0, // Move to right 5  horizontally
                            2.0, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                      color: Palette().primaryColor,
                      borderRadius:
                          BorderRadius.circular(Insets().appRadiusMin + 4)),
                  child: SizedBox(
                    height: 70,
                    child: Row(
                      children: [
                        Icon(
                          Icons.person,
                          size: 50,
                          color: Colors.white,
                        ),
                        Spacer(),
                        ElevatedButton(
                            onPressed: () {
                              // showDialog(
                              //     context: context,
                              //     builder: (_) => addReceptionStaff());
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding: EdgeInsets.all(Insets().appPadding)),
                            child: Heading5(
                              value: "New Reception Staff",
                              color: Colors.black,
                            ))
                      ],
                    ),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(
                        tileHeading: "Total Reception Staffs",
                        tileData: "240")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(
                        tileHeading: "Total Male Reception Staffs",
                        tileData: "120")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(
                        tileHeading: "Total Male Reception Staffs",
                        tileData: "120")),
              ]
            ],
          ),
          Container(
            margin: EdgeInsets.only(
                left: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : Insets().appPadding,
                right: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : Insets().appPadding,
                top: Responsive.isDesktop(context) ? Insets().appPadding : 12,
                bottom:
                    Responsive.isDesktop(context) ? Insets().appPadding : 12),
            padding: EdgeInsets.only(
                left: Responsive.isDesktop(context) ? Insets().appPadding : 10,
                right: Responsive.isDesktop(context) ? Insets().appGap / 2 : 10,
                top: Responsive.isDesktop(context) ? Insets().appGap / 3 : 5,
                bottom:
                    Responsive.isDesktop(context) ? Insets().appGap / 3 : 10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 2),
                color: Palette().primaryColorLight,
                borderRadius: BorderRadius.circular(Insets().appGap + 4)),
            child: Flex(
                direction: Responsive.isDesktop(context)
                    ? Axis.horizontal
                    : Axis.vertical,
                crossAxisAlignment: Responsive.isDesktop(context)
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.start,
                children: [
                  if (Responsive.isDesktop(context)) ...[
                    Expanded(
                        flex: 3,
                        child: TextFormField(
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: " Search for Reception Staff",
                                hintStyle: TextStyle(fontSize: 20)))),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 1,
                        child: searchInputOptions(
                          title: "Gender",
                          opt1: "Male",
                          opt2: "Female",
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 1,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Palette().primaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding:
                                    EdgeInsets.all(Insets().appPadding / 1.5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Heading6(
                                  value: "Apply",
                                  color: Colors.white,
                                ),
                              ],
                            ))),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 1,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Palette().primaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding:
                                    EdgeInsets.all(Insets().appPadding / 1.5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.restart_alt_rounded,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Heading6(
                                  value: "Clear",
                                  color: Colors.white,
                                ),
                              ],
                            )))
                  ],
                  if (!Responsive.isDesktop(context)) ...[
                    Container(
                        child: TextFormField(
                            decoration: const InputDecoration(
                                // enabledBorder: OutlineInputBorder(
                                //     borderSide: BorderSide(
                                //         color: Palette().borderColor, width: 3.0)),
                                border: InputBorder.none,
                                hintText: " Search for Reception Staff",
                                hintStyle: TextStyle(fontSize: 20)))),
                    SizedBox(
                      width: Responsive.isDesktop(context) ? 10 : 0,
                      height: Responsive.isDesktop(context) ? 0 : 5,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width + 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                child: searchInputOptions(
                                    title: "Gender",
                                    opt1: "Male",
                                    opt2: "Female"),
                              )
                            ],
                          )),
                    ),
                    SizedBox(
                      width: Responsive.isDesktop(context) ? 10 : 0,
                      height: Responsive.isDesktop(context) ? 0 : 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Palette().primaryColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4)),
                                    padding: EdgeInsets.all(
                                        Insets().appPadding / 1.5)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Heading6(
                                      value: "Apply",
                                      color: Colors.white,
                                    ),
                                  ],
                                ))),
                        SizedBox(
                          width: Responsive.isDesktop(context) ? 10 : 0,
                          // height: Responsive.isDesktop(context) ? 0 : 5,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Palette().primaryColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4)),
                                    padding: EdgeInsets.all(
                                        Insets().appPadding / 1.5)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.restart_alt_rounded,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Heading6(
                                      value: "Clear",
                                      color: Colors.white,
                                    ),
                                  ],
                                )))
                      ],
                    ),
                  ]
                ]),
          ),
          downloadBar(
            results: '27',
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
                padding: EdgeInsets.all(Insets().appPadding / 3),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Insets().appGap + 6)),
                child: Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                        headingTextStyle:
                            TextStyle(color: Palette().primaryColor),
                        horizontalMargin: 0,
                        columnSpacing: Responsive.isDesktop(context) ? 20 : 10,
                        columns: [
                          DataColumn(
                              label: Checkbox(
                            value: false,
                            onChanged: (value) {
                              setState(() {});
                            },
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: null,
                            child: HeadingText(
                              size: 14,
                              value: "No.",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 100,
                            child: HeadingText(
                              size: 14,
                              value: "Name",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 130,
                            child: HeadingText(
                              size: 14,
                              value: "National ID",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            child: HeadingText(
                              size: 14,
                              value: "Gender",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 100,
                            child: HeadingText(
                              size: 14,
                              value: "Date of Birth",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 100,
                            child: HeadingText(
                              size: 14,
                              value: "Disability",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 100,
                            child: HeadingText(
                              size: 14,
                              value: "Religion",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 100,
                            child: HeadingText(
                              size: 14,
                              value: "Nationality",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 100,
                            child: HeadingText(
                              size: 14,
                              value: "Telephone",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 100,
                            child: HeadingText(
                              size: 14,
                              value: "Address",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 100,
                            child: HeadingText(
                              size: 14,
                              value: "Action",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(Checkbox(
                              value: false,
                              onChanged: (value) {
                                setState(() {});
                              },
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Kwilasa,\nMinda Busobe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: " - ",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "MA",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1936-07-01",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "None",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Paganism",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Tanzanian",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "(255) 787-112-752",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Mwamala\nNurse Shy",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "",
                            )),
                          ]),
                          DataRow(selected: true, cells: [
                            DataCell(Checkbox(
                              value: false,
                              onChanged: (value) {
                                setState(() {});
                              },
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Kwilasa,\nMinda Busobe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: " - ",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "MA",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1936-07-01",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "None",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Paganism",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Tanzanian",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "(255) 787-112-752",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Mwamala\nNurse Shy",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "",
                            )),
                          ]),
                          DataRow(cells: [
                            DataCell(Checkbox(
                              value: false,
                              onChanged: (value) {
                                setState(() {});
                              },
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Kwilasa,\nMinda Busobe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: " - ",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "MA",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1936-07-01",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "None",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Paganism",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Tanzanian",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "(255) 787-112-752",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Mwamala\nNurse Shy",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "",
                            )),
                          ]),
                          DataRow(selected: true, cells: [
                            DataCell(Checkbox(
                              value: false,
                              onChanged: (value) {
                                setState(() {});
                              },
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Kwilasa,\nMinda Busobe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: " - ",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "MA",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1936-07-01",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "None",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Paganism",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Tanzanian",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "(255) 787-112-752",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Mwamala\nNurse Shy",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "",
                            )),
                          ]),
                          DataRow(cells: [
                            DataCell(Checkbox(
                              value: false,
                              onChanged: (value) {
                                setState(() {});
                              },
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Kwilasa,\nMinda Busobe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: " - ",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "MA",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1936-07-01",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "None",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Paganism",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Tanzanian",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "(255) 787-112-752",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Mwamala\nNurse Shy",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "",
                            )),
                          ]),
                          DataRow(selected: true, cells: [
                            DataCell(Checkbox(
                              value: false,
                              onChanged: (value) {
                                setState(() {});
                              },
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Kwilasa,\nMinda Busobe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: " - ",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "MA",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1936-07-01",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "None",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Paganism",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Tanzanian",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "(255) 787-112-752",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Mwamala\nNurse Shy",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "",
                            )),
                          ]),
                          DataRow(cells: [
                            DataCell(Checkbox(
                              value: false,
                              onChanged: (value) {
                                setState(() {});
                              },
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Kwilasa,\nMinda Busobe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: " - ",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "MA",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1936-07-01",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "None",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Paganism",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Tanzanian",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "(255) 787-112-752",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Mwamala\nNurse Shy",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "",
                            )),
                          ]),
                          DataRow(selected: true, cells: [
                            DataCell(Checkbox(
                              value: false,
                              onChanged: (value) {
                                setState(() {});
                              },
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Kwilasa,\nMinda Busobe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: " - ",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "MA",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1936-07-01",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "None",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Paganism",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Tanzanian",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "(255) 787-112-752",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Mwamala\nNurse Shy",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "",
                            )),
                          ]),
                          DataRow(cells: [
                            DataCell(Checkbox(
                              value: false,
                              onChanged: (value) {
                                setState(() {});
                              },
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Kwilasa,\nMinda Busobe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: " - ",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "MA",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1936-07-01",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "None",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Paganism",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Tanzanian",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "(255) 787-112-752",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Mwamala\nNurse Shy",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "",
                            )),
                          ]),
                          DataRow(selected: true, cells: [
                            DataCell(Checkbox(
                              value: false,
                              onChanged: (value) {
                                setState(() {});
                              },
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Kwilasa,\nMinda Busobe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: " - ",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "MA",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1936-07-01",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "None",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Paganism",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Tanzanian",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "(255) 787-112-752",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Mwamala\nNurse Shy",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "",
                            )),
                          ])
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
