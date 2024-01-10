part of './widgets.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: context.height,
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 21),
        decoration: BoxDecoration(color: cWhite),
        child: Stack(
          children: [
            Consumer2<GlobalProvider, PageProvider>(
                builder: (context, globalProvider, pageProvider, _) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: globalProvider.flexContent != 6
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.spaceBetween,
                    children: [
                      globalProvider.flexContent > 6
                          ? const SizedBox()
                          : Image.asset(
                              'assets/logo.png',
                              width: 40,
                              height: 40,
                            ),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            if (globalProvider.flexContent != 6) {
                              globalProvider.flexContent = 6;
                              globalProvider.height = 75;
                            } else {
                              globalProvider.flexContent = 20;
                              globalProvider.height = 50;
                            }
                          },
                          child: Icon(
                            LucideIcons.alignLeft,
                            size: 24,
                            color: cBlack,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  const SideMenuItem(
                      index: 0,
                      iconMenu: LucideIcons.layoutDashboard,
                      labelMenu: "Dashboard"),
                  const SideMenuItem(
                      index: 1,
                      iconMenu: LucideIcons.barChartBig,
                      labelMenu: "Syncfusin Chart"),
                ],
              );
            }),
            Positioned(
              bottom: 0,
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Consumer<GlobalProvider>(
                    builder: (context, globalProvider, _) {
                  return GestureDetector(
                    onTap: () {
                      if (globalProvider.height != 75 &&
                          globalProvider.flexContent == 6) {
                        globalProvider.height = 75;
                      } else if (globalProvider.flexContent == 20 &&
                          globalProvider.height == 250) {
                        globalProvider.height = 50;
                      } else if (globalProvider.flexContent != 6) {
                        globalProvider.height = 250;
                      } else {
                        globalProvider.height = 250;
                      }
                    },
                    child: globalProvider.flexContent != 6
                        ? AnimatedContainer(
                            duration: const Duration(milliseconds: 800),
                            curve: Curves.fastOutSlowIn,
                            height: globalProvider.height,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: cBackground,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage('assets/dumyProfile.png'),
                                  ),
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          )
                        : AnimatedContainer(
                            duration: const Duration(milliseconds: 800),
                            curve: Curves.fastOutSlowIn,
                            height: globalProvider.height,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: cBackground,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 42,
                                  height: 42,
                                  margin: const EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/dumyProfile.png'),
                                      ),
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                SizedBox(
                                  width: 150,
                                  height: 42,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Aptaworks",
                                        style: customTextStyle.copyWith(
                                            fontSize: 16,
                                            fontWeight: semiBold,
                                            color: cGrey2),
                                        textScaler: context.textScale(16),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        "Admin",
                                        style: customTextStyle.copyWith(
                                            fontSize: 12,
                                            fontWeight: regular,
                                            color: cGrey2),
                                        textScaler: context.textScale(16),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
