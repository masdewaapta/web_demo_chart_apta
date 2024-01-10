part of './pages.dart';

class SyncfusionChartPage extends StatefulWidget {
  const SyncfusionChartPage({super.key});

  @override
  State<SyncfusionChartPage> createState() => _SyncfusionChartPageState();
}

class _SyncfusionChartPageState extends State<SyncfusionChartPage> {
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
                      "Syncfusion Chart",
                      style: blackTextStyle.copyWith(
                          fontSize: 26, fontWeight: semiBold),
                      textScaler: context.textScale(26),
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
                child: Container(
                  width: context.width,
                  height: context.height,
                  margin: EdgeInsets.symmetric(
                      vertical: 22,
                      horizontal: globalProvider.flexContent != 6 ? 160 : 80),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: context.width,
                          height: context.height * 0.4,
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            color: cWhite,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const LineChartSyncfusion(),
                        ),
                        Container(
                          width: context.width,
                          height: context.height * 0.4,
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            color: cWhite,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const ColumnChartSynfusion(),
                        ),
                        Container(
                          width: context.width,
                          height: context.height * 0.4,
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            color: cWhite,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const BubbleChartSyncfusion(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
