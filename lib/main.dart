import 'package:ecommerce/config/app_router.dart';
import 'package:ecommerce/screens/screens.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/cart/cart_bloc.dart';
import 'screens/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Bloc.observer = ();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CartBloc()..add(CartStarted())),
      ],
      child: MaterialApp(
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: SplashScreen.routeName,
        home: HomePage(),
      ),
    );
  }
}
