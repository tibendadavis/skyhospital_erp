import 'package:flutter/material.dart';
import 'package:skyhospital_erp/screens/InPatient%20Management/components/bedTasks.comp.dart';
import 'package:skyhospital_erp/components/downloadBar.comp.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/searchBar.comp.dart';
import 'package:skyhospital_erp/components/searchInputOptions.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/components/tile3.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/screens/InPatient%20Management/addPatientAdmission.scrn.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class patientAdmission extends StatefulWidget {
  const patientAdmission({super.key});

  @override
  State<patientAdmission> createState() => _patientAdmissionState();
}

class _patientAdmissionState extends State<patientAdmission> {
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
              value: "Patient Admission",
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
                  icon: Icons.person_add_alt,
                  link: addPatientAdmission(),
                  linkTitle: "New Admission",
                )),
                Expanded(
                    child:
                        tile2(tileHeading: "Admitted Patients", tileData: "0")),
                Expanded(
                    child: tile2(
                        tileHeading: "Discharged Patients", tileData: "0")),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(right: Insets().appPadding * 2),
                  child: tile2(tileHeading: "Payments", tileData: "0"),
                ))
              ],
              if (!Responsive.isDesktop(context)) ...[
                Container(
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                      top: Insets().appPadding / 2,
                    ),
                    child: tile3(
                      icon: Icons.person_add_alt,
                      link: addPatientAdmission(),
                      linkTitle: "New Admission",
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(
                        tileHeading: "Admitted Patients", tileData: "24")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(
                        tileHeading: "Discharged Patients", tileData: "0")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(tileHeading: "Payments", tileData: "0")),
              ]
            ],
          ),
          searchBar(
              title: "Search for Reg No.",
              opt1: searchInputOptions(
                title: "Status",
                opt2: "Admitted",
                opt3: "Discharge",
              )),
          downloadBar(
            results: '2',
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
                            ? size.width / 60
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 55
                                : 25,
                        showCheckboxColumn: true,
                        checkboxHorizontalMargin: 10,
                        showBottomBorder: true,
                        columns: [
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Adm No.",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Admission Date",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Reg No.",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Patient Name",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Age / Gender",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Floor Name",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Ward",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Bed No.",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Bed Category",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Billing Category",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Doctor",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Mobile",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Payment\nMethod",
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
                        ],
                        rows: [
                          DataRow(
                              onSelectChanged: (value) {
                                showDialog(
                                    context: context,
                                    builder: (_) => bedTasks());
                              },
                              cells: [
                                DataCell(HeadingText(
                                  size: 13,
                                  value: "111",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "13/07/2022 10:36",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "234",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "John Snow",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "23/M",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "GROUND FLOOR",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Male Ward (Medical)",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "MS01",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "HOSPITAL(BASE)",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "HOSPITAL(BASE)",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Jane Doe",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "1234567890",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Private Cash",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Admitted",
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
