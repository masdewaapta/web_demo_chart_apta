import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:provider/provider.dart';
import 'package:web_demo_apta/screen/pages/pages.dart';
import 'package:web_demo_apta/service/global_provider.dart';
import 'package:web_demo_apta/service/page_provider.dart';
import 'package:web_demo_apta/shared/theme.dart';
import 'package:web_demo_apta/utils/local_storage.dart';
import 'package:web_demo_apta/utils/utils.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<GlobalProvider>(
            create: (context) => GlobalProvider()),
        ChangeNotifierProvider<PageProvider>(
            create: (context) => PageProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: cBackground,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) {
            // Tambahkan penanganan untuk menentukan apakah harus ke halaman login atau home
            final isLoggedIn = getStringStorage(StorageKey.session);
            return isLoggedIn == "logged"
                ? const MainPage()
                : const LoginPage();
          },
          '/main': (context) => const MainPage(),
        },
      ),
    );
  }
}
