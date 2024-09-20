import 'package:coord_converter/features/presentation/converter_screen.dart';
import 'package:go_router/go_router.dart';

class Routes {
  Routes._();

  static final routers = GoRouter(
    initialLocation: ConverterScreen.routeName,
    routes: [
      GoRoute(
        path: ConverterScreen.routeName,
        name: ConverterScreen.routeName,
        builder: (_, __) {
          return const ConverterScreen();
        },
      ),
    ],
  );
}