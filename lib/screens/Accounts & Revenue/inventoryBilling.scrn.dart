import 'package:flutter/material.dart';
import 'package:skyhospital_erp/screens/Accounts%20&%20Revenue/components/collectPayment.comp.dart';
import 'package:skyhospital_erp/components/deleteDialog.comp.dart';
import 'package:skyhospital_erp/components/downloadBar.comp.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/searchBar.comp.dart';
import 'package:skyhospital_erp/components/searchInputOptions.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/controllers/funcs_main.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class inventoryBilling extends StatefulWidget {
  const inventoryBilling({super.key});

  @override
  State<inventoryBilling> createState() => _inventoryBillingState();
}

class _inventoryBillingState extends State<inventoryBilling> {
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
              value: "Inventory Billing",
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
                        tile2(tileHeading: "Total Billings", tileData: "24")),
                Expanded(child: tile2(tileHeading: "Pending", tileData: "240")),
                Expanded(
                    child: tile2(tileHeading: "Completed", tileData: "120")),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(right: Insets().appPadding * 2),
                  child: tile2(tileHeading: "Declined", tileData: "120"),
                ))
              ],
              if (!Responsive.isDesktop(context)) ...[
                Container(
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                      top: Insets().appPadding / 2,
                    ),
                    child:
                        tile2(tileHeading: "Total Billings", tileData: "240")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(tileHeading: "Pending", tileData: "240")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(tileHeading: "Completed", tileData: "120")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(tileHeading: "Declined", tileData: "120")),
              ]
            ],
          ),
          searchBar(
              title: "Search for Purchase",
              opt1: searchInputOptions(
                title: "Status",
                opt1: "All",
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
                          ? size.width / 20
                          : Responsive.isDesktop(context) && size.width > 1600
                              ? size.width / 15
                              : 25,
                      showCheckboxColumn: false,
                      checkboxHorizontalMargin: 10,
                      showBottomBorder: true,
                      columns: [
                        DataColumn(
                          label: HeadingText(
                            size: 14,
                            value: "No.",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        DataColumn(
                            label: SizedBox(
                          width: 130,
                          child: HeadingText(
                            size: 14,
                            value: "Invoice No",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          child: HeadingText(
                            size: 14,
                            value: "Date",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                          label: HeadingText(
                            size: 14,
                            value: "Tax",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        DataColumn(
                          label: HeadingText(
                            size: 14,
                            value: "Additional Charges",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        DataColumn(
                          label: HeadingText(
                            size: 14,
                            value: "Discount",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        DataColumn(
                          label: HeadingText(
                            size: 14,
                            value: "Total",
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
                                  builder: (_) => collectPayment());
                            },
                            cells: [
                              DataCell(HeadingText(
                                size: 14,
                                value: "117",
                              )),
                              DataCell(HeadingText(
                                size: 14,
                                value: Funcs().getRandomString(10),
                              )),
                              DataCell(HeadingText(
                                size: 14,
                                value: "12/04/2022",
                              )),
                              DataCell(HeadingText(
                                size: 14,
                                value: " ",
                              )),
                              DataCell(HeadingText(
                                size: 14,
                                value: "",
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
                                value: "",
                              )),
                              DataCell(Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  // IconButton(
                                  //     onPressed: () {
                                  //       //showDialog(
                                  //       //  context: context,
                                  //       //   builder: (_) =>
                                  //       //        addPatientVisit());
                                  //     },
                                  //     tooltip: "View",
                                  //     icon: Icon(Icons.visibility_outlined,
                                  //         color: Colors.blue),
                                  //     iconSize: 17),
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
