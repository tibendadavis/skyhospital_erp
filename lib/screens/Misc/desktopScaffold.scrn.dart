import 'package:flutter/material.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class desktopScaffold extends StatefulWidget {
  final Widget page;

  desktopScaffold({
    super.key,
    required this.page,
  });

  @override
  State<desktopScaffold> createState() => _desktopScaffoldState();
}

class _desktopScaffoldState extends State<desktopScaffold> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height + 50,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              stops: [0.8, 1.2],
              colors: [Palette().primaryColorLight, Palette().primaryColor],
            ),
          ),
          child: widget.page,
        ),
      ),
    );
  }
}
