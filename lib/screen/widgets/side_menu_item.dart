part of './widgets.dart';

class SideMenuItem extends StatelessWidget {
  final int index;
  final IconData iconMenu;
  final String labelMenu;
  const SideMenuItem(
      {super.key,
      required this.index,
      required this.iconMenu,
      required this.labelMenu});

  @override
  Widget build(BuildContext context) {
    return Consumer2<GlobalProvider, PageProvider>(
        builder: (context, globalProvider, pageProvider, _) {
      return MouseRegion(
        cursor: SystemMouseCursors.click,
        child: globalProvider.flexContent > 6
            ? GestureDetector(
                onTap: () {
                  pageProvider.page = index;
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: pageProvider.page == index ? cGreyACtive : cWhite,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Icon(
                      iconMenu,
                      size: 24,
                      color: pageProvider.page == index ? cBlue : cGrey,
                    ),
                  ),
                ),
              )
            : GestureDetector(
                onTap: () {
                  pageProvider.page = index;
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: pageProvider.page == index ? cGreyACtive : cWhite,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        iconMenu,
                        size: 24,
                        color: pageProvider.page == index ? cBlue : cGrey,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        labelMenu,
                        style: customTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                            color: pageProvider.page == index ? cBlue : cGrey),
                        textScaler: context.textScale(16),
                      ),
                    ],
                  ),
                ),
              ),
      );
    });
  }
}
