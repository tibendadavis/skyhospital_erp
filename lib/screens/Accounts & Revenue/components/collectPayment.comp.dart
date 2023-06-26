import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/deleteDialog.comp.dart';
import 'package:skyhospital_erp/components/heading2.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/inputTextOnly.comp.dart';
import 'package:skyhospital_erp/screens/Accounts%20&%20Revenue/components/invoiceReport.comp.dart';
import 'package:skyhospital_erp/components/searchInputOptions.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class collectPayment extends StatefulWidget {
  const collectPayment({super.key});

  @override
  State<collectPayment> createState() => _collectPaymentState();
}

class _collectPaymentState extends State<collectPayment>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    scaleAnimation = CurvedAnimation(
        parent: controller, curve: Curves.fastLinearToSlowEaseIn);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0))),
            child: SingleChildScrollView(
                child: SizedBox(
              width: Responsive.isDesktop(context) ? 960 : size.width - 20,
              child: Expanded(
                  child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(
                        top: Insets().appPadding,
                        left: Insets().appPadding * 2,
                        right: Insets().appPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Heading2(
                              value: "Payment Modes",
                              fontWeight: FontWeight.w700,
                              color: Colors.grey.shade800,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  showDialog(
                                      context: context,
                                      builder: (_) => invoiceReport());
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Palette().primaryColor,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0, vertical: 10),
                                ),
                                child: Icon(
                                  Icons.save,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 400,
                      padding: EdgeInsets.only(
                        top: Insets().appPadding / 2,
                        bottom: Insets().appPadding,
                      ),
                      margin: EdgeInsets.only(
                          top: 0,
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          bottom: Insets().appPadding),
                      decoration: BoxDecoration(
                          color: Palette().primaryColorLight,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListView(children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: Responsive.isDesktop(context)
                                ? Insets().appPadding / 2
                                : 13,
                            right: Responsive.isDesktop(context)
                                ? Insets().appPadding / 2
                                : 13,
                          ),
                          padding: EdgeInsets.all(Insets().appPadding / 3),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: SizedBox(
                            width: double.infinity,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: DataTable(
                                  dataRowHeight: 55,
                                  headingTextStyle:
                                      TextStyle(color: Palette().primaryColor),
                                  horizontalMargin: 0,
                                  columnSpacing:
                                      Responsive.isDesktop(context) &&
                                              size.width < 1600
                                          ? size.width / 60
                                          : Responsive.isDesktop(context) &&
                                                  size.width > 1600
                                              ? size.width / 80
                                              : 25,
                                  showCheckboxColumn: true,
                                  checkboxHorizontalMargin: 10,
                                  showBottomBorder: true,
                                  columns: [
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Mode Type",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Amount",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Bank",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Cheque/Card/DD No.",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Expiry Date",
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
                                          DataCell(searchInputOptions(
                                            title: "Payment Mode",
                                            opt1: "Cash",
                                            opt2: "Cheque",
                                            opt3: "Debit Card",
                                            opt4: "Credit Card",
                                            value: "Cash",
                                          )),
                                          DataCell(inputTextOnly(
                                            size: 140,
                                            hintText: '',
                                            value: "17.00",
                                          )),
                                          DataCell(searchInputOptions(
                                            title: "Select",
                                            opt1: "CRDB",
                                          )),
                                          DataCell(inputTextOnly(
                                            hintText: '',
                                            size: 140,
                                          )),
                                          DataCell(inputTextOnly(
                                            hintText: '',
                                            size: 140,
                                          )),
                                          DataCell(Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    //showDialog(
                                                    //  context: context,
                                                    //   builder: (_) =>
                                                    //        addPatientVisit());
                                                  },
                                                  tooltip: "Add",
                                                  icon: Icon(Icons.add,
                                                      color: Colors.blue),
                                                  iconSize: 17),
                                              IconButton(
                                                onPressed: () {
                                                  showDialog(
                                                      context: context,
                                                      builder: (_) =>
                                                          deleteDialog());
                                                },
                                                icon: Icon(
                                                  Icons.clear,
                                                  color: Colors.red,
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
                      ]))
                ],
              )),
            )),
          ),
        ),
      ),
    );
  }
}
