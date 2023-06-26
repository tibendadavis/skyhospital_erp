import 'package:flutter/material.dart';

import 'package:skyhospital_erp/components/heading2.dart';
import 'package:skyhospital_erp/components/heading4.dart';
import 'package:skyhospital_erp/components/inputOptions.comp.dart';

import 'package:skyhospital_erp/controllers/responsive.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class choosePharmacy extends StatefulWidget {
  const choosePharmacy({super.key});

  @override
  State<choosePharmacy> createState() => _choosePharmacyState();
}

class _choosePharmacyState extends State<choosePharmacy>
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
              width: Responsive.isDesktop(context) ? 560 : size.width - 20,
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
                              value: "Choose Pharmacy",
                              fontWeight: FontWeight.w700,
                              color: Colors.grey.shade800,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.redAccent,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0, vertical: 0),
                                ),
                                child: Icon(
                                  Icons.clear,
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
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
                              top: 15,
                              left: Responsive.isDesktop(context)
                                  ? Insets().appPadding / 2
                                  : 13,
                              right: Responsive.isDesktop(context)
                                  ? Insets().appPadding / 2
                                  : 13,
                              bottom: 15),
                          padding: EdgeInsets.all(Insets().appPadding / 3),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: SizedBox(
                              width: double.infinity,
                              child: inputOptions(
                                title: "Pharmacy",
                                opt1: "",
                              )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Palette().primaryColor,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                ),
                                child: Heading4(
                                  value: "Dispense",
                                )),
                          ],
                        )
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
