import 'package:basalt_assesment/model/imports/generalImport.dart';
import 'package:basalt_assesment/view/pages/homeScreen/homePage.dart';
import 'package:basalt_assesment/view/pages/stockMarket/stockMenu.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    switch (settings.name) {
      case '/':
        return materialPage(settings, const HomePage());
      case '/homePage':
        return materialPage(settings, const HomePage());
      case '/allStock':
        return materialPage(settings, const StockMenu());
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('No page Route'),
        ),
        body: const Center(
          child: Text(
              'The page you tab either had no page route or the route is incorrect'),
        ),
      );
    });
  }
}
