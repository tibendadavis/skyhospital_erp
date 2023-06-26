import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/heading3.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/inputBigText.comp.dart';
import 'package:skyhospital_erp/components/inputDate.comp.dart';
import 'package:skyhospital_erp/components/inputMultpleCheckbox.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class patientReferrals extends StatefulWidget {
  patientReferrals({super.key});

  @override
  State<patientReferrals> createState() => _patientReferralsState();
}

class _patientReferralsState extends State<patientReferrals> {
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
                        value: "Referrals",
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Visibility(
                    child: Column(
                      children: [
                        Flex(
                            direction: Axis.vertical,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? 600
                                    : size.width,
                                child: Column(children: [
                                  inputBigText(
                                    title: "Advice",
                                    hintText: "Enter Advice",
                                  ),
                                ]),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                          backgroundColor:
                                              Palette().primaryColor,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Insets().appPadding /
                                                          5))),
                                      onPressed: () {},
                                      child: Heading5(
                                        value: "Save",
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: size.width,
                                height: 400,
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(
                                    left: Insets().appPadding / 2,
                                    right: Insets().appPadding / 2,
                                    top: Insets().appPadding / 2),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.grey),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appPadding / 2)),
                                child: SizedBox(
                                  width: 530,
                                  child: Column(
                                    children: [
                                      inputDate(
                                          heading: "Follow-up Date",
                                          subheading: "Date"),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      inputMultipleCheckbox(
                                        heading: "Referrals",
                                        opt1: "Refer to Emergency",
                                        opt2: "Refer to Admission",
                                        opt3: "Visit Complete",
                                        opt4: "Refer to Mental Health",
                                        opt5: "Refer to Antenatal Care",
                                        opt6: "Surgery Request",
                                        opt7: "Refer to Outside Hospital",
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ]),
                      ],
                    ),
                  ),
                ]),
          ),
        ],
      )),
    );
  }
}
