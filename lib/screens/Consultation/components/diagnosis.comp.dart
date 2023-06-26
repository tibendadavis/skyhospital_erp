import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/heading3.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/inputOptions.comp.dart';
import 'package:skyhospital_erp/components/inputTextField.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class diagnosis extends StatefulWidget {
  diagnosis({super.key});

  @override
  State<diagnosis> createState() => _diagnosisState();
}

class _diagnosisState extends State<diagnosis> {
  bool _diagnosis = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Expanded(
          child: ListView(
        children: [
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Heading3(
                        value: "Diagnosis",
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold,
                      ),
                      if (_diagnosis)
                        Row(
                          children: [
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    _diagnosis = false;
                                  });
                                },
                                child: Heading5(
                                  value: "Cancel",
                                  color: Colors.red,
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    backgroundColor: Palette().primaryColor,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            Insets().appPadding / 5))),
                                onPressed: () {},
                                child: Heading5(
                                  value: "Save",
                                )),
                          ],
                        )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Visibility(
                    visible: !_diagnosis,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _diagnosis = true;
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
                          Heading5(
                              value: "New Diagnosis",
                              fontWeight: FontWeight.bold,
                              color: Palette().primaryColor),
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _diagnosis,
                    child: Column(
                      children: [
                        Flex(
                            direction: Responsive.isDesktop(context)
                                ? Axis.horizontal
                                : Axis.vertical,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? 500
                                    : size.width,
                                child: Column(children: [
                                  inputOptions(
                                    title: "Attendance",
                                    opt1: "Emergency/Acute",
                                    opt2: "Chronic/Follow up",
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputOptions(
                                    title: "Type",
                                    opt1: "Principal",
                                    opt2: "Provisional",
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputOptions(
                                    title: "Category",
                                    opt1: "Primary",
                                    opt2: "Additional",
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputTextField(
                                      title: "Diagnosis",
                                      hintText: "Search for Diagnosis"),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputOptions(
                                    title: "Status of\nDiagnosis",
                                    opt1: "New",
                                    opt2: "",
                                  ),
                                ]),
                              ),
                              SizedBox(
                                width: Responsive.isDesktop(context) ? 10 : 0,
                              ),
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? 500
                                    : size.width,
                                child: Column(children: [
                                  inputTextField(
                                      title: "D-GRG Code",
                                      hintText: "D-GRG Code"),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputTextField(
                                      title: "ICD-10", hintText: "ICD-10"),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputOptions(
                                    title: "Adverse\nEffect",
                                    opt1: "",
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ]),
                              )
                            ]),
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
                                ? size.width / 34
                                : Responsive.isDesktop(context) &&
                                        size.width > 1600
                                    ? size.width / 22
                                    : 25,
                            showCheckboxColumn: false,
                            checkboxHorizontalMargin: 10,
                            showBottomBorder: true,
                            columns: [
                              DataColumn(
                                  label: HeadingText(
                                size: 14,
                                value: "Attendance",
                                fontWeight: FontWeight.w700,
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "Type",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "Category",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "Diagnosis",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "Visit Type",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "ICD-10",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "D-GRG Code",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "Status Of Diagnosis",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "Adverse Effect",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "User Name",
                                  fontWeight: FontWeight.w700,
                                ),
                              ))
                            ],
                            rows: []),
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
