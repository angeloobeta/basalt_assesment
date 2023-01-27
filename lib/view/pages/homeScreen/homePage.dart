import 'package:basalt_assesment/model/imports/generalImport.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseUi(allowBackButton: false,children: [
      AdaptivePositioned(
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textAndTextField(context, textInputType: TextInputType.text,
                controller: TextEditingController(),
                hint: "Search for Stock",
                labelText: "Stock Options",
                onChanged: (){},
                inputFormatter: [],
                errorTextActive: false,
                focusNode: FocusNode(),
                prefix: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GeneralIconDisplay(LineIcons.search, white, UniqueKey(), 20),
                )),
          ),
      top: 20,
      left: 15,
      right: 15,),
      Positioned(
          left: 0,
          right: 0,
          top: sS(context).cH(height: 100),
          bottom: 20,
          child: SingleChildScrollView(
        child: S( w: 375, h: 700,
          child: Column(
            children: [
                S(h: 20),
                  textAndTextField(context, textInputType: TextInputType.text,
                      controller: TextEditingController(),
                      hint: "Search for Stock",
                      labelText: "labelText",
                      onChanged: (){},
                      inputFormatter: [],
                      errorTextActive: false,
                      focusNode: FocusNode(),
                      prefix: Text("Ok oh")),

              ],


          ),
        ),
      ),
      )
    ],);
  }
}
