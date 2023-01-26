import 'package:basalt_assesment/model/imports/generalImport.dart';


class StockMenu extends StatefulWidget {
  const StockMenu({Key? key}) : super(key: key);

  @override
  State<StockMenu> createState() => _StockMenu();
}

class _StockMenu extends State<StockMenu> {
  @override
  Widget build(BuildContext context) {
    return screenUi(
      children: [
        AdaptivePositioned(
            Container(
              height: MediaQuery.of(context).size.width * 0.1,
              color: transparent,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GeneralTextDisplay("Basalt Technologies", red!, 1, 28,
                        FontWeight.w700, ""),
                    // TextField // SizedBox )
                  ],
                ),
              ),
            ),
            top: 20,
            left: 0),
        AdaptivePositioned(
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey[500]),
                    hintText: "Search",
                    prefix: const Icon(Icons.search),
                    fillColor: white,
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none), // BorderSide borderRadius:
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                  ),
                )),
          ),
          top: 50,
        ),
        Positioned(
          top: sS(context).cH(height: 110),
          bottom: 15,
          left: 10,
          right: 0,
          child: SingleChildScrollView(
              child: S(
            w: 375,
            h: 700,
            child: Stack(
              children: [
                AdaptivePositioned(
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                      height: 50,
                      child: ListTile(title: Text('Tesla')),
                    ),
                  ),
                  top: 10,
                ),
                AdaptivePositioned(
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                      height: 50,
                      child: ListTile(title: Text('Tesla')),
                    ),
                  ),
                  top: 20,
                ),
                AdaptivePositioned(
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                      height: 50,
                      child: ListTile(title: Text('Tesla')),
                    ),
                  ),
                  top: 50,
                ),
                AdaptivePositioned(
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                      height: 50,
                      child: ListTile(title: Text('Tesla')),
                    ),
                  ),
                  top: 70,
                ),
                AdaptivePositioned(
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                      height: 50,
                      child: ListTile(title: Text('Tesla')),
                    ),
                  ),
                  top: 100,
                ),
                AdaptivePositioned(
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                      height: 50,
                      child: ListTile(title: Text('Tesla')),
                    ),
                  ),
                  top: 120,
                ),
                AdaptivePositioned(
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                      height: 50,
                      child: ListTile(title: Text('Tesla')),
                    ),
                  ),
                  top: 140,
                ),
                AdaptivePositioned(
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                      height: 50,
                      child: ListTile(title: Text('Tesla')),
                    ),
                  ),
                  top: 160,
                ),
              ],
            ),
          )),
        )
      ],
      allowBackButton: false,
    );
  }
}
