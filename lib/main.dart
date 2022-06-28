import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadi_systems_task/cubits/app_cubit/app_cubit.dart';
import 'package:shadi_systems_task/cubits/app_cubit/bloc_observer.dart';
import 'package:shadi_systems_task/cubits/authentication_cubit/app_cubit.dart';
import 'package:shadi_systems_task/cubits/home_cubit/home_cubit.dart';
import 'package:shadi_systems_task/cubits/setting_cubit/Setting_cubit.dart';
import 'package:shadi_systems_task/modules/layout_screen.dart';
import 'package:shadi_systems_task/shared/styles/themes.dart';

import 'shared/tools/shared_preference/shared_preference_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SharedPreferenceHelper.init();

  BlocOverrides.runZoned(
    () {
      runApp(MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
  SharedPreferenceHelper.sharedKeysDispose();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => AppCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => AuthenticationCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => HomeCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => SettingCubit(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (cnxt, w) => MaterialApp(
          builder: (context, widget) {
            ScreenUtil.init(context);
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!,
            );
          },
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: ThemeMode.light,
          debugShowCheckedModeBanner: false,
          home: LayoutScreen(),
        ),
      ),
    );
  }
}
