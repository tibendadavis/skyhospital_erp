import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/heading3.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/inputOptions.comp.dart';
import 'package:skyhospital_erp/components/inputTextField.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class prescriptionMedicine extends StatefulWidget {
  prescriptionMedicine({super.key});

  @override
  State<prescriptionMedicine> createState() => _prescriptionMedicineState();
}

class _prescriptionMedicineState extends State<prescriptionMedicine> {
  bool _prescriptionMedicine = false;
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
                        value: "Prescription Medicine",
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold,
                      ),
                      if (_prescriptionMedicine)
                        Row(
                          children: [
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    _prescriptionMedicine = false;
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
                    visible: !_prescriptionMedicine,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _prescriptionMedicine = true;
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
                              value: "New Prescription",
                              fontWeight: FontWeight.bold,
                              color: Palette().primaryColor),
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _prescriptionMedicine,
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
                                    ? 510
                                    : size.width,
                                child: Column(children: [
                                  inputOptions(
                                    title: "Medicine",
                                    opt1: " ",
                                    opt2: " ",
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputOptions(
                                    title: "Measurement",
                                    opt1: "Tablet(s)",
                                    opt2: "mg",
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputTextField(title: "Dosage", hintText: ""),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputTextField(
                                      title: "No. of Days", hintText: ""),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputTextField(
                                      title: "Instruction", hintText: "")
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
                                  inputOptions(
                                    title: "Route",
                                    opt1: "Oral",
                                    opt2: "Opthalmic",
                                    opt3: "Topical",
                                    opt4: "Auricular (otic)",
                                    opt5: "Nasal",
                                    opt6: "Intramuscular",
                                    opt7: "Respiratory (inhalation)",
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputOptions(
                                    title: "Frequency",
                                    opt1: "Morning",
                                    opt2: "Evening",
                                    opt3: "Afternoon",
                                    opt4: "Once a Day",
                                    opt5: "2 times a Day",
                                    opt6: "Urgent",
                                    opt7: "3 times a Day",
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  inputOptions(
                                    title: "Food Relation",
                                    opt1: "Before Dinner",
                                    opt2: "After Dinner",
                                    opt3: "Before Lunch",
                                    opt4: "After Lunch",
                                    opt5: "Before Breakfast",
                                    opt6: "After Breakfast",
                                    opt7: "After Food",
                                  ),
                                  SizedBox(
                                    height: 5,
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
                                ? size.width / 10
                                : Responsive.isDesktop(context) &&
                                        size.width > 1600
                                    ? size.width / 9
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
