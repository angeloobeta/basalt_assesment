import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../model/imports/generalImport.dart';

Widget screenUi(
    {required List<Widget> children,
    required bool allowBackButton,
    Color? color}) {
  return WillPopScope(
    onWillPop: () async {
      return allowBackButton;
    },
    child: Container(
      color: color ?? Colors.blueGrey[900],
      // width: double.infinity,
      // height: MediaQuery.of(context).size.height * 0.8,
      // color:
      child: Stack(
        children: children,
      ),
    ),
  );
}
