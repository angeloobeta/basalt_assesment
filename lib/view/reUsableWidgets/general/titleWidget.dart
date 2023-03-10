import 'package:basalt_assesment/model/imports/generalImport.dart';

Widget title(context,
    {required String title,
    double? topDeduction,
    bool? noBackButton,
    Function? backTo,
    double? titleSize}) {
  return Stack(
    children: [
      // back button
      noBackButton == true
          ? Container()
          : AdaptivePositioned(
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () {
                        backTo == null ? Navigator.pop(context) : backTo();
                      },
                      child: GeneralIconDisplay(
                          LineIcons.alternateLongArrowLeft,
                          white,
                          UniqueKey(),
                          18))
                ],
              ),
              left: 27.54,
              top: topDeduction != null ? 23.21 - topDeduction : 23.21,
            ),
      // title
      AdaptivePositioned(
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GeneralTextDisplay(
                processLongString(
                    unProcessedString: title,
                    minimumStringLength: 27,
                    substringLength: 24),
                white,
                1,
                titleSize ?? 16,
                FontWeight.w500,
                "title"),
          ],
        ),
        top: topDeduction != null ? 20 - topDeduction : 20,
      ),
    ],
  );
}
