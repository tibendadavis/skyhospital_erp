import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/deleteDialog.comp.dart';
import 'package:skyhospital_erp/components/downloadBar.comp.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/screens/Accounts%20&%20Revenue/components/patientOrders.comp.dart';
import 'package:skyhospital_erp/components/searchBar.comp.dart';
import 'package:skyhospital_erp/components/searchInputOptions.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class patientBilling extends StatefulWidget {
  const patientBilling({super.key});

  @override
  State<patientBilling> createState() => _patientBillingState();
}

class _patientBillingState extends State<patientBilling> {
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
              value: "Patient Billing",
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
                    child:
                        tile2(tileHeading: "Total Patients", tileData: "240")),
                Expanded(
                    child: tile2(
                        tileHeading: "Admitted Patients", tileData: "240")),
                Expanded(
                    child: tile2(tileHeading: "Emergencies", tileData: "120")),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(right: Insets().appPadding * 2),
                  child: tile2(tileHeading: "Expired", tileData: "120"),
                ))
              ],
              if (!Responsive.isDesktop(context)) ...[
                Container(
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                      top: Insets().appPadding / 2,
                    ),
                    child:
                        tile2(tileHeading: "Total Patients", tileData: "240")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(
                        tileHeading: "Admitted Patients", tileData: "240")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(tileHeading: "Emergencies", tileData: "120")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(tileHeading: "Expired", tileData: "120")),
              ]
            ],
          ),
          searchBar(
              title: "Search for Patient",
              opt1: searchInputOptions(
                title: "Status",
                opt1: "All",
                opt2: "Admitted",
                opt4: "Emergency",
                opt5: "Expired",
                opt3: "Out-Patient",
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
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                      dataRowHeight: 55,
                      headingTextStyle:
                          TextStyle(color: Palette().primaryColor),
                      horizontalMargin: 0,
                      columnSpacing: Responsive.isDesktop(context) &&
                              size.width < 1600
                          ? size.width / 50
                          : Responsive.isDesktop(context) && size.width > 1600
                              ? size.width / 20
                              : 25,
                      showCheckboxColumn: false,
                      checkboxHorizontalMargin: 10,
                      showBottomBorder: true,
                      columns: [
                        DataColumn(
                          label: HeadingText(
                            size: 14,
                            value: "Reg No.",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        DataColumn(
                            label: SizedBox(
                          width: 130,
                          child: HeadingText(
                            size: 14,
                            value: "Patient Name",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          child: HeadingText(
                            size: 14,
                            value: "Age / Gender",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                          label: HeadingText(
                            size: 14,
                            value: "Date of Birth",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        DataColumn(
                          label: HeadingText(
                            size: 14,
                            value: "Mobile No.",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        DataColumn(
                          label: HeadingText(
                            size: 14,
                            value: "Payment Method",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        DataColumn(
                          label: HeadingText(
                            size: 14,
                            value: "Serial No.",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        DataColumn(
                          label: HeadingText(
                            size: 14,
                            value: "Membership No.",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        DataColumn(
                          label: HeadingText(
                            size: 14,
                            value: "Status",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        DataColumn(
                          label: HeadingText(
                            size: 14,
                            value: "Action",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                      rows: [
                        DataRow(
                            onSelectChanged: (value) {
                              showDialog(
                                  context: context,
                                  builder: (_) => patientOrders());
                            },
                            cells: [
                              DataCell(HeadingText(
                                size: 14,
                                value: "117",
                              )),
                              DataCell(HeadingText(
                                size: 14,
                                value: "John Snow",
                              )),
                              DataCell(HeadingText(
                                size: 14,
                                value: "23Y/M",
                              )),
                              DataCell(HeadingText(
                                size: 14,
                                value: "1936-07-01",
                              )),
                              DataCell(HeadingText(
                                size: 14,
                                value: "1234567890",
                              )),
                              DataCell(HeadingText(
                                size: 14,
                                value: "PRIVATE CASH",
                              )),
                              DataCell(HeadingText(
                                size: 14,
                                value: " ",
                              )),
                              DataCell(HeadingText(
                                size: 14,
                                value: " ",
                              )),
                              DataCell(HeadingText(
                                size: 14,
                                value: "Out Patient",
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
            ]),
          )
        ],
      )),
    );
  }
}
