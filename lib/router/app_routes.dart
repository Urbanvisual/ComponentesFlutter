import 'package:fl_components/models/models.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const InitialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(
    //     route: 'home',
    //     name: 'Home Screen',
    //     screen: const HomeScreen(),
    //     icon: Icons.add_business_sharp),
    MenuOption(
        route: 'Listview1',
        name: 'Listview tipo 1',
        screen: const Listview1Screen(),
        icon: Icons.access_time_rounded),
    MenuOption(
        route: 'Listview2',
        name: 'Listview tipo 2',
        screen: const Listview2Screen(),
        icon: Icons.accessibility_new_sharp),
    MenuOption(
        route: 'alert',
        name: 'Alertas',
        screen: const AlertScreen(),
        icon: Icons.add_alert),
    MenuOption(
        route: 'card',
        name: 'Tarjetas - cards',
        screen: const CardScreen(),
        icon: Icons.credit_card),
    MenuOption(
        route: 'Avatar',
        name: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOption(
        route: 'Animated',
        name: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_outline_rounded),
    MenuOption(
        route: 'Imputs',
        name: 'Text Imputs',
        screen: const InputsScreen(),
        icon: Icons.input_rounded),
    MenuOption(
        route: 'slider',
        name: 'slider and Checks',
        screen: const SliderScreen(),
        icon: Icons.sanitizer_outlined),
    MenuOption(
        route: 'lisviewbuilder',
        name: 'infiniteScroll & Pull to refresh',
        screen: const ListviewBulderScreen(),
        icon: Icons.build_circle_outlined)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext contex) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
