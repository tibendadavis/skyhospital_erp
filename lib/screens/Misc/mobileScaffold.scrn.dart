import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class mobileScaffold extends StatefulWidget {
  final Widget page;
  const mobileScaffold({
    super.key,
    required this.page,
  });

  @override
  State<mobileScaffold> createState() => _mobileScaffoldState();
}

class _mobileScaffoldState extends State<mobileScaffold> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height + 700,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              stops: [0.8, 2],
              colors: [Palette().primaryColorLight, Palette().primaryColor],
            ),
          ),
          child: widget.page,
        ),
      ),
    );
  }
}
