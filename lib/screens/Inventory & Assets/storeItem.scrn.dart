import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/downloadBar.comp.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/searchBar.comp.dart';
import 'package:skyhospital_erp/components/searchInputOptions.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/components/tile3.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/screens/Inventory%20&%20Assets/addStoreItem.scrn.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class storeItem extends StatefulWidget {
  const storeItem({super.key});

  @override
  State<storeItem> createState() => _storeItemState();
}

class _storeItemState extends State<storeItem> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
              value: "Stock Item",
              fontWeight: FontWeight.w700,
              color: Colors.grey.shade800,
            ),
          ),
          SizedBox(
            width: Responsive.isDesktop(context) ? size.width / 2.38 : null,
            child: Flex(
              direction: Responsive.isDesktop(context)
                  ? Axis.horizontal
                  : Axis.vertical,
              children: [
                if (Responsive.isDesktop(context)) ...[
                  Expanded(
                      child: tile3(
                    icon: Icons.store_rounded,
                    link: addStockItem(),
                    linkTitle: "New Stock Item",
                  )),
                  Expanded(
                      child: tile2(
                    tileHeading: "Total Stock Items",
                    tileData: "7",
                  )),
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
                            Icons.store_rounded,
                            size: 50,
                            color: Colors.white,
                          ),
                          Spacer(),
                          ElevatedButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (_) => addStockItem());
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          Insets().appRadiusMin + 4)),
                                  padding: EdgeInsets.all(Insets().appPadding)),
                              child: Heading5(
                                value: "New Stock Item",
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
                        tileHeading: "Total Stock Items",
                        tileData: "7",
                      )),
                ]
              ],
            ),
          ),
          searchBar(
            title: "Search for Stock Item",
            opt1: searchInputOptions(
              title: "Category",
              opt1: "",
            ),
            opt2: searchInputOptions(
              title: "Type",
              opt1: "",
            ),
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
                        columnSpacing: Responsive.isDesktop(context) &&
                                size.width < 1600
                            ? size.width / 40
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 25
                                : 25,
                        columns: [
                          DataColumn(
                              label: Checkbox(
                            value: false,
                            onChanged: (value) {
                              setState(() {});
                            },
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "No.",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: Responsive.isDesktop(context) ? 120 : 150,
                            child: HeadingText(
                              size: 14,
                              value: "Store ",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: Responsive.isDesktop(context) ? 120 : 150,
                            child: HeadingText(
                              size: 14,
                              value: "Item Name",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: Responsive.isDesktop(context) ? 150 : 150,
                            child: HeadingText(
                              size: 14,
                              value: "Item Code",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: Responsive.isDesktop(context) ? null : null,
                            child: HeadingText(
                              size: 14,
                              value: "Quantity",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: Responsive.isDesktop(context) ? 100 : 100,
                            child: HeadingText(
                              size: 14,
                              value: "Unit Price",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: Responsive.isDesktop(context) ? 80 : 80,
                            child: HeadingText(
                              size: 14,
                              value: "Tax",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: Responsive.isDesktop(context) ? null : null,
                            child: HeadingText(
                              size: 14,
                              value: "Expiry Date",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: Responsive.isDesktop(context) ? 150 : 150,
                            child: HeadingText(
                              size: 14,
                              value: "Action",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                        ],
                        rows: []),
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
