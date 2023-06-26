import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/app_drawer/skyHospitalDrawer.dart';
import 'package:skyhospital_erp/components/heading6.dart';
import 'package:skyhospital_erp/controllers/globalVariables.dart';
import 'package:skyhospital_erp/routes/routes.dart';
import 'package:skyhospital_erp/components/header.dart';
import 'package:skyhospital_erp/controllers/funcs_main.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/screens/Misc/desktopScaffold.scrn.dart';
import 'package:skyhospital_erp/screens/Misc/mobileScaffold.scrn.dart';
import 'package:skyhospital_erp/screens/Misc/tabletScaffold.scrn.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';
import 'package:skyhospital_erp/components/heading2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes().route,
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  final Widget page;
  var context;
  MyHomePage({super.key, required this.page, this.context});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // bool _menu = globalData.menu;
  double _drawersize = 250;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _menu = ModalRoute.of(context)!.settings.arguments ?? null;
    print(_menu);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              centerTitle: true,
              elevation: 0,
              title: Title(
                  color: Palette().textColor,
                  child: const Heading2(
                    value: "SkyHospital",
                  )),
              backgroundColor: Palette().primaryColor,
            )
          : null,
      drawer: skyHospitalDrawer(
        size: 304,
        onTap: () {},
      ),
      body: Container(
          color: Palette().primaryColorLight,
          width: size.width,
          height: size.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (Responsive.isDesktop(context))
                AnimatedContainer(
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: _drawersize,
                    child: skyHospitalDrawer(
                      size: _drawersize,
                      onTap: (val) {
                        setState(() {
                          _drawersize = val;
                        });
                      },
                    )),
              Expanded(
                  child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.only(bottom: 1.5),
                      decoration: BoxDecoration(
                          color: Palette().primaryColorExtraLight),
                      child: header(
                        onTap: (val) {
                          setState(() {
                            _drawersize = val[0];
                            globalData.menu = val[1];
                          });
                        },
                      )),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: Responsive.isDesktop(context)
                              ? size.height - 86
                              : size.height - 142,
                          child: LayoutBuilder(builder: (context, constraints) {
                            if (Responsive.isDesktop(context)) {
                              return desktopScaffold(
                                page: widget.page,
                              );
                            } else if (Responsive.isTablet(context)) {
                              return tabletScaffold(
                                page: widget.page,
                              );
                            } else {
                              return mobileScaffold(
                                page: widget.page,
                              );
                            }
                          }),
                        ),
                        SizedBox(
                            height: 26,
                            width: size.width,
                            child: Container(
                                padding: EdgeInsets.only(
                                    right: 3, top: 3, left: 25, bottom: 3),
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Heading6(
                                        color: Colors.grey.shade400,
                                        value:
                                            "Copyright © ${DateTime.now().year}"),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    InkWell(
                                        onTap: () {
                                          Funcs().openLink(
                                              url: "https://skyconnect.co.tz/");
                                        },
                                        child: Heading6(
                                          value: "SkyConnect",
                                          color: Palette()
                                              .primaryColor
                                              .withOpacity(0.8),
                                          fontWeight: FontWeight.w600,
                                        )),
                                    Heading6(
                                        color: Colors.grey.shade400,
                                        value: ", All rights reserved.")
                                  ],
                                )))
                      ],
                    ),
                  )
                ],
              )),
            ],
          )),
    );
  }
}
