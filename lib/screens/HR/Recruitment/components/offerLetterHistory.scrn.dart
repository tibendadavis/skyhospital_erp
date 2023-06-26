
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyhospital_erp/components/heading3.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class offerHistory extends StatefulWidget {
  const offerHistory({super.key});

  @override
  State<offerHistory> createState() => offerHistoryState();
}

class offerHistoryState extends State<offerHistory> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Center(
          child: Heading3(
        value: "-No History found-",
        color: Colors.grey.shade400,
      )),
    );
  }
}
