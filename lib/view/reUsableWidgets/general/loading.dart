import 'package:basalt_assesment/model/imports/generalImport.dart';

Widget loading({Color? color}) {
  return S(
    h: 60,
    w: 60,
    child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(color ?? white),
        backgroundColor: blue),
  );
}
