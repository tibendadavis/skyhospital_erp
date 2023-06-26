import 'package:flutter/material.dart';

import 'package:skyhospital_erp/components/heading2.dart';
import 'package:skyhospital_erp/components/heading_text.dart';

import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/screens/Pharmacy%20Management/choosePharmacy.comp.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class patientPrescription extends StatefulWidget {
  const patientPrescription({super.key});

  @override
  State<patientPrescription> createState() => _patientPrescriptionState();
}

class _patientPrescriptionState extends State<patientPrescription>
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
                    borderRadius: BorderRadius.circular(15.0))),
            child: SingleChildScrollView(
                child: SizedBox(
              width: Responsive.isDesktop(context)
                  ? size.width / 1.2
                  : size.width - 20,
              child: Expanded(
                  child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(
                        top: Insets().appPadding,
                        left: Insets().appPadding * 2,
                        right: Insets().appGap),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Heading2(
                          value: "John Snow",
                          fontWeight: FontWeight.w700,
                          color: Colors.grey.shade800,
                        ),
                      ],
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: size.height - 320,
                      padding: EdgeInsets.only(
                          top: Insets().appPadding / 2,
                          bottom: Insets().appPadding,
                          left: 10,
                          right: 10),
                      margin: EdgeInsets.only(
                          top: 0,
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          bottom: Insets().appPadding),
                      decoration: BoxDecoration(
                          color: Palette().primaryColorLight,
                          borderRadius:
                              BorderRadius.circular(Insets().appRadius)),
                      child: ListView(children: [
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
                                          ? size.width / 13
                                          : Responsive.isDesktop(context) &&
                                                  size.width > 1600
                                              ? size.width / 11
                                              : 25,
                                  showCheckboxColumn: false,
                                  checkboxHorizontalMargin: 10,
                                  showBottomBorder: true,
                                  columns: [
                                    DataColumn(
                                        label: HeadingText(
                                      size: 14,
                                      value: "Medicine",
                                      fontWeight: FontWeight.w700,
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Dosage",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Frequency",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Duration",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Route",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Total Quantity",
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
                                              builder: (_) => choosePharmacy());
                                        },
                                        cells: [
                                          DataCell(HeadingText(
                                            size: 13,
                                            value: "Test",
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: "Test",
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: "Test",
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: "Test",
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: "Test",
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: "Test",
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: "Test",
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
