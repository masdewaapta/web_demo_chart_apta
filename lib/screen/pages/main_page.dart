part of './pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const SyncfusionChartPage();
        default:
          return const HomePage();
      }
    }

    return Consumer<PageProvider>(builder: (context, pageProvider, _) {
      return Scaffold(
        body: Row(
          children: [
            const SideMenu(),
            buildContent(pageProvider.page),
          ],
        ),
      );
    });
  }
}
