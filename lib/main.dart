import 'package:coord_converter/features/presentation/converter/converter_bloc.dart';
import 'package:coord_converter/features/presentation/settings/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'core/di/injection.dart' as di;
import 'core/routes/routes.dart';

final GetIt vf = GetIt.instance;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di.vf<ConverterCubit>()),
        BlocProvider(create: (_) => di.vf<SettingsCubit>()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(450, 890),
        builder: (context, widget) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: Routes.routers,
          );
        },
      ),
    );
  }
}
