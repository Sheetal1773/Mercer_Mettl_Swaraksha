import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Import Flutter Bloc package
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/app_export.dart';
import 'presentation/android_large_eight_screen/bloc/android_large_eight_bloc.dart';
import 'presentation/android_large_eleven_page/bloc/android_large_eleven_bloc.dart';
import 'presentation/android_large_nine_screen/bloc/android_large_nine_bloc.dart';
import 'presentation/android_large_seven_screen/bloc/android_large_seven_bloc.dart';
import 'presentation/android_large_ten_screen/android_large_ten_screen.dart';
import 'presentation/android_large_ten_screen/bloc/android_large_ten_bloc.dart';
import 'presentation/android_large_twelve_screen/bloc/android_large_twelve_bloc.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Future.wait([
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]),
    PrefUtils().init()
  ]).then((value) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      // Use MultiBlocProvider to handle multiple BLoCs
      providers: [
        BlocProvider<ThemeBloc>(
          // Provide the ThemeBloc
          create: (context) => ThemeBloc(
            ThemeState(
              themeType: PrefUtils().getThemeData(),
            ),
          ),
        ),

        BlocProvider<AndroidLargeTenBloc>(
          create: (context) => AndroidLargeTenBloc(
            AndroidLargeTenState(/*... initial state ...*/),
          ),
        ),
        BlocProvider<AndroidLargeEightBloc>(
          create: (context) => AndroidLargeEightBloc(
            AndroidLargeEightState(/*... initial state ...*/),
          ),
        ),

        BlocProvider<AndroidLargeNineBloc>(
          create: (context) => AndroidLargeNineBloc(
            AndroidLargeNineState(/*... initial state ...*/),
          ),
        ),
        BlocProvider<AndroidLargeTwelveBloc>(
          create: (context) => AndroidLargeTwelveBloc(
            AndroidLargeTwelveState(/*... initial state ...*/),
          ),
        ),
        BlocProvider<AndroidLargeElevenBloc>(
          create: (context) => AndroidLargeElevenBloc(
            AndroidLargeElevenState(/*... initial state ...*/),
          ),
        ),
        // Add other BlocProviders as needed for your other BLoCs
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            theme: theme,
            title: 'sheetal_kanojia_s_application4',
            navigatorKey: NavigatorService.navigatorKey,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: [
              AppLocalizationDelegate(),
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: [
              Locale(
                'en',
                '',
              ),
            ],
            initialRoute: AppRoutes.initialRoute,
            routes: AppRoutes.routes,
          );
        },
      ),
    );
  }
}
