import 'package:basalt_assesment/model/imports/generalImport.dart';


class BaseUi extends StatelessWidget {
  final List<Widget> children;
  final bool? allowBackButton;
  final bool? safeTop;
  final Function? onRefreshFunction;
  final PreferredSizeWidget? appBar;
  const BaseUi(
      {Key? key,
      this.allowBackButton,
      required this.children,
      this.safeTop,
      this.appBar,
      this.onRefreshFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BaseModel>.reactive(
        viewModelBuilder: () => BaseModel(),
        onModelReady: (model) async {},
        disposeViewModel: false,
        builder: (context, model, child) => WillPopScope(
            onWillPop: () async {
              return allowBackButton ?? true;
            },
            child: KeyboardDismisser(
              gestures: const [
                GestureType.onTap,
                // GestureType.onPanUpdateDownDirection
              ],
              child: RefreshIndicator(
                displacement: 100,
                backgroundColor: blue,
                color: black,
                strokeWidth: 3,
                triggerMode: RefreshIndicatorTriggerMode.onEdge,
                onRefresh: () async {
                  if (onRefreshFunction != null) {
                    return onRefreshFunction!();
                  }
                },
                child: Scaffold(
                  body: SafeArea(
                    bottom: false,
                    top: safeTop ?? false,
                    child:  Container(
                      decoration:  BoxDecoration(
                          color: hexColor("263238"),
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                            image: AssetImage('images/basalt_background.png'))
                      ),
                            width: double.infinity,
                            height: double.infinity,

                            child: Stack(
                              children: children,
                            ),
                          ),
                  ),
                  // appBar: appBar,
                ),
              ),
            )));
  }
}
