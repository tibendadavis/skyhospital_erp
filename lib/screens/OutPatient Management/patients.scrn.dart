import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/deleteDialog.comp.dart';
import 'package:skyhospital_erp/components/downloadBar.comp.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/patientRegCard.ccomp.dart';
import 'package:skyhospital_erp/components/searchBar.comp.dart';
import 'package:skyhospital_erp/components/searchInputOptions.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/components/tile3.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/screens/OutPatient%20Management/addPatient.scrn.dart';
import 'package:skyhospital_erp/screens/OutPatient%20Management/addPatientVisit.scrn.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class patients extends StatefulWidget {
  const patients({super.key});

  @override
  State<patients> createState() => _patientsState();
}

class _patientsState extends State<patients> {
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
              value: "Patients",
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
                  icon: Icons.person,
                  link: addPatient(),
                  linkTitle: "New Patient",
                )),
                Expanded(
                    child:
                        tile2(tileHeading: "Total Patients", tileData: "240")),
                Expanded(
                    child:
                        tile2(tileHeading: "Male Patients", tileData: "120")),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(right: Insets().appPadding * 2),
                  child: tile2(tileHeading: "Female Patients", tileData: "120"),
                ))
              ],
              if (!Responsive.isDesktop(context)) ...[
                Container(
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                      top: Insets().appPadding / 2,
                    ),
                    child: tile3(
                      icon: Icons.person,
                      link: addPatient(),
                      linkTitle: "New Patient",
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child:
                        tile2(tileHeading: "Total Patients", tileData: "240")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(tileHeading: "Total Male", tileData: "120")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(tileHeading: "Total Female", tileData: "120")),
              ]
            ],
          ),
          searchBar(
              title: "Search for Patients",
              opt1: searchInputOptions(
                title: "District",
                opt1: "All Districts",
                opt2: "Kishapu1",
                opt3: "Kishapu2",
                opt4: "Kishapu3",
                opt5: "Kishapu4",
              )),
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
                        dataRowHeight: 55,
                        headingTextStyle:
                            TextStyle(color: Palette().primaryColor),
                        horizontalMargin: 0,
                        columnSpacing: Responsive.isDesktop(context) &&
                                size.width < 1600
                            ? size.width / 260
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 260
                                : 25,
                        showCheckboxColumn: false,
                        checkboxHorizontalMargin: 10,
                        showBottomBorder: true,
                        columns: [
                          DataColumn(
                              label: SizedBox(
                            width: 100,
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
                              value: "Tribe",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 100,
                            child: HeadingText(
                              size: 14,
                              value: "Balozi",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 100,
                            child: HeadingText(
                              size: 14,
                              value: "District",
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
                              value: "Payment",
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
                          DataRow(
                              onSelectChanged: (value) {
                                showDialog(
                                    context: context,
                                    builder: (_) => addPatientVisit());
                              },
                              cells: [
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
                                  value: "Sukuma",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Paulo\nMatheo",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Kishapu",
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
                                  value: "Mwamala\nKishapu Shy",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Bank-\nTembo Card",
                                )),
                                DataCell(Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          //showDialog(
                                          //  context: context,
                                          //   builder: (_) =>
                                          //        addPatientVisit());
                                        },
                                        tooltip: "View",
                                        icon: Icon(Icons.visibility_outlined,
                                            color: Colors.blue),
                                        iconSize: 17),
                                    IconButton(
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (_) => patientRegCard());
                                        },
                                        tooltip: "Print Registration Card",
                                        icon: Icon(Icons.print,
                                            color: Palette().primaryColor),
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
                          DataRow(
                              onSelectChanged: (value) {
                                showDialog(
                                    context: context,
                                    builder: (_) => addPatientVisit());
                              },
                              cells: [
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
                                  value: "Sukuma",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Paulo\nMatheo",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Kishapu",
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
                                  value: "Mwamala\nKishapu Shy",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Bank-\nTembo Card",
                                )),
                                DataCell(Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          //showDialog(
                                          //  context: context,
                                          //   builder: (_) =>
                                          //        addPatientVisit());
                                        },
                                        tooltip: "View",
                                        icon: Icon(Icons.visibility_outlined,
                                            color: Colors.blue),
                                        iconSize: 17),
                                    IconButton(
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (_) => patientRegCard());
                                        },
                                        tooltip: "Print Registration Card",
                                        icon: Icon(Icons.print,
                                            color: Palette().primaryColor),
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
                          DataRow(
                              onSelectChanged: (value) {
                                showDialog(
                                    context: context,
                                    builder: (_) => addPatientVisit());
                              },
                              cells: [
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
                                  value: "Sukuma",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Paulo\nMatheo",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Kishapu",
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
                                  value: "Mwamala\nKishapu Shy",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Bank-\nTembo Card",
                                )),
                                DataCell(Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          //showDialog(
                                          //  context: context,
                                          //   builder: (_) =>
                                          //        addPatientVisit());
                                        },
                                        tooltip: "View",
                                        icon: Icon(Icons.visibility_outlined,
                                            color: Colors.blue),
                                        iconSize: 17),
                                    IconButton(
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (_) => patientRegCard());
                                        },
                                        tooltip: "Print Registration Card",
                                        icon: Icon(Icons.print,
                                            color: Palette().primaryColor),
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
                          DataRow(
                              onSelectChanged: (value) {
                                showDialog(
                                    context: context,
                                    builder: (_) => addPatientVisit());
                              },
                              cells: [
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
                                  value: "Sukuma",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Paulo\nMatheo",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Kishapu",
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
                                  value: "Mwamala\nKishapu Shy",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Bank-\nTembo Card",
                                )),
                                DataCell(Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          //showDialog(
                                          //  context: context,
                                          //   builder: (_) =>
                                          //        addPatientVisit());
                                        },
                                        tooltip: "View",
                                        icon: Icon(Icons.visibility_outlined,
                                            color: Colors.blue),
                                        iconSize: 17),
                                    IconButton(
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (_) => patientRegCard());
                                        },
                                        tooltip: "Print Registration Card",
                                        icon: Icon(Icons.print,
                                            color: Palette().primaryColor),
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
                          DataRow(
                              onSelectChanged: (value) {
                                showDialog(
                                    context: context,
                                    builder: (_) => addPatientVisit());
                              },
                              cells: [
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
                                  value: "Sukuma",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Paulo\nMatheo",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Kishapu",
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
                                  value: "Mwamala\nKishapu Shy",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Bank-\nTembo Card",
                                )),
                                DataCell(Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          //showDialog(
                                          //  context: context,
                                          //   builder: (_) =>
                                          //        addPatientVisit());
                                        },
                                        tooltip: "View",
                                        icon: Icon(Icons.visibility_outlined,
                                            color: Colors.blue),
                                        iconSize: 17),
                                    IconButton(
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (_) => patientRegCard());
                                        },
                                        tooltip: "Print Registration Card",
                                        icon: Icon(Icons.print,
                                            color: Palette().primaryColor),
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
                          DataRow(
                              onSelectChanged: (value) {
                                showDialog(
                                    context: context,
                                    builder: (_) => addPatientVisit());
                              },
                              cells: [
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
                                  value: "Sukuma",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Paulo\nMatheo",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Kishapu",
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
                                  value: "Mwamala\nKishapu Shy",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Bank-\nTembo Card",
                                )),
                                DataCell(Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          //showDialog(
                                          //  context: context,
                                          //   builder: (_) =>
                                          //        addPatientVisit());
                                        },
                                        tooltip: "View",
                                        icon: Icon(Icons.visibility_outlined,
                                            color: Colors.blue),
                                        iconSize: 17),
                                    IconButton(
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (_) => patientRegCard());
                                        },
                                        tooltip: "Print Registration Card",
                                        icon: Icon(Icons.print,
                                            color: Palette().primaryColor),
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
                          DataRow(
                              onSelectChanged: (value) {
                                showDialog(
                                    context: context,
                                    builder: (_) => addPatientVisit());
                              },
                              cells: [
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
                                  value: "Sukuma",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Paulo\nMatheo",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Kishapu",
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
                                  value: "Mwamala\nKishapu Shy",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Bank-\nTembo Card",
                                )),
                                DataCell(Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          //showDialog(
                                          //  context: context,
                                          //   builder: (_) =>
                                          //        addPatientVisit());
                                        },
                                        tooltip: "View",
                                        icon: Icon(Icons.visibility_outlined,
                                            color: Colors.blue),
                                        iconSize: 17),
                                    IconButton(
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (_) => patientRegCard());
                                        },
                                        tooltip: "Print Registration Card",
                                        icon: Icon(Icons.print,
                                            color: Palette().primaryColor),
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
