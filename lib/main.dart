import 'package:basalt_assesment/model/imports/generalImport.dart';


Future main() async {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // this is to remove the status bar in android
// this is to ensure the app does not go on landscape when phone is rotated
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Basalt Assignment',
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      home:

          HomePage(),
    );
  }
}
