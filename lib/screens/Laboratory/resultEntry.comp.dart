import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/alertDialog.comp.dart';
import 'package:skyhospital_erp/components/heading2.dart';
import 'package:skyhospital_erp/components/heading4.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/inputOptions.comp.dart';
import 'package:skyhospital_erp/components/inputTextOnly.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class resultEntry extends StatefulWidget {
  const resultEntry({super.key});

  @override
  State<resultEntry> createState() => _resultEntryState();
}

class _resultEntryState extends State<resultEntry>
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
            margin: EdgeInsets.symmetric(vertical: 35),
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: SingleChildScrollView(
                child: SizedBox(
              width: Responsive.isDesktop(context) ? 1000 : size.width - 20,
              child: Expanded(
                  child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(
                        top: Insets().appPadding / 2,
                        left: Insets().appPadding * 2,
                        right: Insets().appGap),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Heading2(
                              value: "Result Entry",
                              fontWeight: FontWeight.w700,
                              color: Colors.grey.shade800,
                            ),
                            Spacer(),
                            ElevatedButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (_) => (alert(
                                            title: "Success",
                                            content:
                                                "Result saved successfully",
                                            icon: Icon(Icons.check,
                                                color: Palette().primaryColor,
                                                size: 60),
                                          )));
                                },
                                child: Heading4(
                                  value: "Save",
                                )),
                            SizedBox(
                              width: 20,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      padding: EdgeInsets.only(
                          top: Insets().appPadding / 2,
                          bottom: Insets().appPadding,
                          left: 17,
                          right: 17),
                      margin: EdgeInsets.only(
                          top: 0,
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          bottom: Insets().appPadding),
                      decoration: BoxDecoration(
                          color: Palette().primaryColorLight,
                          borderRadius:
                              BorderRadius.circular(Insets().appRadius)),
                      child: Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "Lab No.",
                                          color: Colors.grey.shade700,
                                        ),
                                        Heading4(
                                          value: "178",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade800,
                                        )
                                      ]),
                                ),
                                SizedBox(
                                  width: 24,
                                ),
                                SizedBox(
                                  width: 100,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "Reg No.",
                                          color: Colors.grey.shade700,
                                        ),
                                        Heading4(
                                          value: "120",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade800,
                                        )
                                      ]),
                                ),
                                SizedBox(
                                  width: 24,
                                ),
                                SizedBox(
                                  width: 150,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "Doctor",
                                          color: Colors.grey.shade700,
                                        ),
                                        Heading5(
                                          value: "Dr. Jane Doe",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade800,
                                        )
                                      ]),
                                ),
                                Spacer(),
                                SizedBox(
                                  width: 300,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "Patient Name",
                                          color: Colors.grey.shade700,
                                        ),
                                        Heading4(
                                          value: "John Snow",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade800,
                                        )
                                      ]),
                                )
                              ]),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 500,
                                  child: inputOptions(
                                      title: "Techncian", opt1: ""),
                                )
                              ]),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: size.height - 180,
                            child: ListView(children: [
                              Container(
                                padding:
                                    EdgeInsets.all(Insets().appPadding / 3),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appGap + 6)),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: DataTable(
                                        dataRowHeight: 55,
                                        headingTextStyle: TextStyle(
                                            color: Palette().primaryColor),
                                        horizontalMargin: 0,
                                        columnSpacing: Responsive.isDesktop(
                                                    context) &&
                                                size.width < 1600
                                            ? size.width / 60
                                            : Responsive.isDesktop(context) &&
                                                    size.width > 1600
                                                ? size.width / 64
                                                : 20,
                                        showCheckboxColumn: false,
                                        checkboxHorizontalMargin: 10,
                                        showBottomBorder: true,
                                        columns: [
                                          DataColumn(
                                              label: HeadingText(
                                            size: 14,
                                            value: "SN",
                                            fontWeight: FontWeight.w700,
                                          )),
                                          DataColumn(
                                              label: Expanded(
                                            child: HeadingText(
                                              size: 14,
                                              value: "Investigation Name",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )),
                                          DataColumn(
                                              label: Expanded(
                                            child: HeadingText(
                                              size: 14,
                                              value: "Method",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )),
                                          DataColumn(
                                              label: Expanded(
                                            child: HeadingText(
                                              size: 14,
                                              value: "Result",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )),
                                          DataColumn(
                                              label: Expanded(
                                            child: HeadingText(
                                              size: 14,
                                              value: "Normal Range",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )),
                                          DataColumn(
                                              label: Expanded(
                                            child: HeadingText(
                                              size: 14,
                                              value: "Unit",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )),
                                        ],
                                        rows: [
                                          DataRow(
                                              onSelectChanged: (value) {},
                                              cells: [
                                                DataCell(HeadingText(
                                                  size: 13,
                                                  value: "A",
                                                )),
                                                DataCell(HeadingText(
                                                  size: 14,
                                                  value: "LIPID PROFILE",
                                                  color: Palette().primaryColor,
                                                  fontWeight: FontWeight.bold,
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
                                                  value: " ",
                                                )),
                                                DataCell(HeadingText(
                                                  size: 14,
                                                  value: " ",
                                                )),
                                              ]),
                                          DataRow(
                                              onSelectChanged: (value) {},
                                              cells: [
                                                DataCell(HeadingText(
                                                  size: 13,
                                                  value: "1",
                                                )),
                                                DataCell(HeadingText(
                                                  size: 14,
                                                  value: "LDL - CHOLESTEROL",
                                                )),
                                                DataCell(inputOptions(
                                                  hint: "Select",
                                                  opt1: "",
                                                )),
                                                DataCell(inputTextOnly(
                                                  hintText: "",
                                                  size: 250,
                                                )),
                                                DataCell(HeadingText(
                                                  size: 14,
                                                  value: "2.60 - 4.90",
                                                )),
                                                DataCell(HeadingText(
                                                  size: 14,
                                                  value: "mmol/l",
                                                )),
                                              ]),
                                          DataRow(
                                              onSelectChanged: (value) {},
                                              cells: [
                                                DataCell(HeadingText(
                                                  size: 13,
                                                  value: "2",
                                                )),
                                                DataCell(HeadingText(
                                                  size: 14,
                                                  value: "RDL - CHOLESTEROL",
                                                )),
                                                DataCell(inputOptions(
                                                  hint: "Select",
                                                  opt1: "",
                                                )),
                                                DataCell(inputTextOnly(
                                                  hintText: "",
                                                  size: 250,
                                                )),
                                                DataCell(HeadingText(
                                                  size: 14,
                                                  value: "1.0 - 1.6",
                                                )),
                                                DataCell(HeadingText(
                                                  size: 14,
                                                  value: "mmol/l",
                                                )),
                                              ]),
                                          DataRow(
                                              onSelectChanged: (value) {},
                                              cells: [
                                                DataCell(HeadingText(
                                                  size: 13,
                                                  value: "3",
                                                )),
                                                DataCell(HeadingText(
                                                  size: 14,
                                                  value: "SERUM TRIGLYCERIDE",
                                                )),
                                                DataCell(inputOptions(
                                                  hint: "Select",
                                                  opt1: "",
                                                )),
                                                DataCell(inputTextOnly(
                                                  hintText: "",
                                                  size: 250,
                                                )),
                                                DataCell(HeadingText(
                                                  size: 14,
                                                  value: "0.3 - 1.7",
                                                )),
                                                DataCell(HeadingText(
                                                  size: 14,
                                                  value: "mmol/l",
                                                )),
                                              ]),
                                          DataRow(
                                              onSelectChanged: (value) {},
                                              cells: [
                                                DataCell(HeadingText(
                                                  size: 13,
                                                  value: "4",
                                                )),
                                                DataCell(HeadingText(
                                                  size: 14,
                                                  value: "CORONARY RISK",
                                                )),
                                                DataCell(inputOptions(
                                                  hint: "Select",
                                                  opt1: "",
                                                )),
                                                DataCell(inputTextOnly(
                                                  hintText: "",
                                                  size: 250,
                                                )),
                                                DataCell(HeadingText(
                                                  size: 14,
                                                  value: "0.00 - 5.7",
                                                )),
                                                DataCell(HeadingText(
                                                  size: 14,
                                                  value: "ratio",
                                                )),
                                              ]),
                                        ]),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ))
                ],
              )),
            )),
          ),
        ),
      ),
    );
  }
}
