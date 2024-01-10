part of './pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<GlobalProvider>(builder: (context, globalProvider, _) {
      return Expanded(
        flex: globalProvider.flexContent,
        child: SizedBox(
          height: context.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: context.width,
                height: 85,
                padding:
                    const EdgeInsets.symmetric(vertical: 26, horizontal: 22),
                margin: const EdgeInsets.only(bottom: 1),
                color: cWhite,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Dashboard",
                      style: blackTextStyle.copyWith(
                          fontSize: 32, fontWeight: semiBold),
                      textScaler: context.textScale(32),
                    ),
                  ],
                ),
              ),
              Container(
                width: context.width,
                height: 68,
                padding:
                    const EdgeInsets.symmetric(vertical: 26, horizontal: 22),
                margin: const EdgeInsets.only(bottom: 2),
                color: cWhite,
              ),
              Expanded(
                child: Consumer<GlobalProvider>(
                    builder: (context, globalProvider, _) {
                  return Container(
                    width: context.width,
                    height: context.height,
                    margin: EdgeInsets.symmetric(
                        vertical: 22,
                        horizontal: globalProvider.flexContent != 6 ? 160 : 80),
                    child: SingleChildScrollView(
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    height: context.height * 0.2,
                                    decoration: BoxDecoration(
                                      color: cWhite,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: context.width * 0.01,
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    height: context.height * 0.2,
                                    decoration: BoxDecoration(
                                      color: cWhite,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: context.width * 0.01,
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    height: context.height * 0.2,
                                    decoration: BoxDecoration(
                                      color: cWhite,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: context.width * 0.01,
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    height: context.height * 0.2,
                                    decoration: BoxDecoration(
                                      color: cWhite,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            // NOTE : Contoh Chart
                            // NOTE : 1. MRX CHART - CHART BAR
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    height: context.height * 0.4,
                                    padding: const EdgeInsets.all(14),
                                    decoration: BoxDecoration(
                                      color: cWhite,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Chart(
                                      layers: layersBarChart(),
                                      padding: const EdgeInsets.symmetric(
                                              horizontal: 12.0)
                                          .copyWith(
                                        bottom: 12.0,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: context.width * 0.01,
                                ),
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    height: context.height * 0.4,
                                    padding: const EdgeInsets.all(14),
                                    decoration: BoxDecoration(
                                      color: cWhite,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Chart(
                                      layers: layersBarChart(),
                                      padding: const EdgeInsets.symmetric(
                                              horizontal: 12.0)
                                          .copyWith(
                                        bottom: 12.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            // NOTE : 2. MRX CHART - CANDLE CHART
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    height: context.height * 0.4,
                                    padding: const EdgeInsets.all(14),
                                    decoration: BoxDecoration(
                                      color: cWhite,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Chart(
                                      layers: layersCandleChart(),
                                      padding: const EdgeInsets.symmetric(
                                              horizontal: 12.0)
                                          .copyWith(
                                        bottom: 12.0,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: context.width * 0.01,
                                ),
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    height: context.height * 0.4,
                                    padding: const EdgeInsets.all(14),
                                    decoration: BoxDecoration(
                                      color: cWhite,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Chart(
                                      layers: layersCandleChart(),
                                      padding: const EdgeInsets.symmetric(
                                              horizontal: 12.0)
                                          .copyWith(
                                        bottom: 12.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            // NOTE : 3. MRX CHART - GROUP BAR CHART
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    height: context.height * 0.4,
                                    padding: const EdgeInsets.all(14),
                                    decoration: BoxDecoration(
                                      color: cWhite,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Chart(
                                      layers: layersGroupBarChart(),
                                      padding: const EdgeInsets.symmetric(
                                              horizontal: 12.0)
                                          .copyWith(
                                        bottom: 12.0,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: context.width * 0.01,
                                ),
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    height: context.height * 0.4,
                                    padding: const EdgeInsets.all(14),
                                    decoration: BoxDecoration(
                                      color: cWhite,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Chart(
                                      layers: layersGroupBarChart(),
                                      padding: const EdgeInsets.symmetric(
                                              horizontal: 12.0)
                                          .copyWith(
                                        bottom: 12.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            // NOTE : 4. MRX CHART - LINE CHART
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    height: context.height * 0.4,
                                    padding: const EdgeInsets.all(14),
                                    decoration: BoxDecoration(
                                      color: cWhite,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Chart(
                                      layers: layersLineChart(),
                                      padding: const EdgeInsets.symmetric(
                                              horizontal: 12.0)
                                          .copyWith(
                                        bottom: 12.0,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: context.width * 0.01,
                                ),
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    height: context.height * 0.4,
                                    padding: const EdgeInsets.all(14),
                                    decoration: BoxDecoration(
                                      color: cWhite,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Chart(
                                      layers: layersLineChart(),
                                      padding: const EdgeInsets.symmetric(
                                              horizontal: 12.0)
                                          .copyWith(
                                        bottom: 12.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            // NOTE : 5. MRX CHART - PIE CHART
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    height: context.height * 0.4,
                                    padding: const EdgeInsets.all(14),
                                    decoration: BoxDecoration(
                                      color: cWhite,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Chart(
                                      layers: layersPieChart(),
                                      padding: const EdgeInsets.symmetric(
                                              horizontal: 12.0)
                                          .copyWith(
                                        bottom: 12.0,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: context.width * 0.01,
                                ),
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    height: context.height * 0.4,
                                    padding: const EdgeInsets.all(14),
                                    decoration: BoxDecoration(
                                      color: cWhite,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Chart(
                                      layers: layersPieChart(),
                                      padding: const EdgeInsets.symmetric(
                                              horizontal: 12.0)
                                          .copyWith(
                                        bottom: 12.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      );
    });
  }
}
