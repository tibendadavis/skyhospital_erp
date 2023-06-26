import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/heading4.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/inputTextField.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class skillsApplicant extends StatefulWidget {
  skillsApplicant({super.key});

  @override
  State<skillsApplicant> createState() => _skillsApplicantState();
}

class _skillsApplicantState extends State<skillsApplicant> {
  bool _addSkill = false;
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
                  Visibility(
                    visible: !_addSkill,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _addSkill = true;
                        });
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.add_circle_outline_rounded,
                            color: Palette().primaryColor,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Heading4(
                              value: "Add Skill",
                              color: Palette().primaryColor),
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _addSkill,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(Insets().appPadding / 3),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(Insets().appGap + 6)),
                          child: SizedBox(
                              width: Responsive.isDesktop(context)
                                  ? size.width / 2
                                  : null,
                              child: Column(
                                children: [
                                  inputTextField(
                                      title: "Skill", hintText: "Skill Name"),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            setState(() {
                                              _addSkill = false;
                                            });
                                          },
                                          child: Heading5(
                                            value: "Cancel",
                                            color: Colors.redAccent,
                                          )),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            setState(() {
                                              _addSkill = false;
                                            });
                                          },
                                          child: Heading5(
                                            value: "Submit",
                                            color: Palette().primaryColor,
                                          ))
                                    ],
                                  )
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
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
                                ? size.width / 2.1
                                : Responsive.isDesktop(context) &&
                                        size.width > 1600
                                    ? size.width / 1.7
                                    : 25,
                            showCheckboxColumn: false,
                            checkboxHorizontalMargin: 10,
                            showBottomBorder: true,
                            columns: [
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "Skill",
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
