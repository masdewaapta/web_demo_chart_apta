part of './pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void checkLogin() {
    getStringStorage(StorageKey.session).then((v) {
      if (v == "logged") {
        context.pushAndRemoveUntil("/main");
      }
    });
  }

  @override
  void initState() {
    super.initState();
    // checkLogin();
  }

  @override
  Widget build(BuildContext context) {
    Widget sectionTop() {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Apta Demo Website",
              style:
                  blackTextStyle.copyWith(fontSize: 32, fontWeight: semiBold),
              textScaler: context.textScale(32),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Masuk dengan email anda",
              style: blackTextStyle.copyWith(fontSize: 16, fontWeight: regular),
              textScaler: context.textScale(16),
            ),
          ],
        ),
      );
    }

    Widget sectionInput() {
      return Container(
        margin: const EdgeInsets.only(bottom: 5),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: 336,
            margin: const EdgeInsets.only(bottom: 15),
            child: TextFormField(
              controller: emailController,
              cursorColor: cBlue,
              style:
                  blackTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
              decoration: InputDecoration(
                filled: true,
                fillColor: cBackground,
                hintText: "alamat email",
                hintStyle:
                    greyTextStyle.copyWith(fontSize: 14, fontWeight: regular),
                contentPadding: const EdgeInsets.all(10),
                prefixIcon: Icon(
                  LucideIcons.mail,
                  size: 24,
                  color: cBlack,
                ),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: cRed, width: 1)),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: cBlue, width: 1)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: cBackground, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: cBlue, width: 1),
                ),
              ),
            ),
          ),
          Container(
            width: 336,
            margin: const EdgeInsets.only(bottom: 15),
            child: TextFormField(
              controller: passwordController,
              cursorColor: cBlue,
              style:
                  blackTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
              decoration: InputDecoration(
                filled: true,
                fillColor: cBackground,
                hintText: "password",
                hintStyle:
                    greyTextStyle.copyWith(fontSize: 14, fontWeight: regular),
                contentPadding: const EdgeInsets.all(10),
                prefixIcon: Icon(
                  LucideIcons.keyRound,
                  size: 24,
                  color: cBlack,
                ),
                suffixIcon: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    child: Icon(
                      LucideIcons.eyeOff,
                      size: 24,
                      color: cBlack,
                    ),
                  ),
                ),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: cRed, width: 1)),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: cBlue, width: 1)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: cBackground, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: cBlue, width: 1),
                ),
              ),
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                addStringStorage(StorageKey.session, "logged")
                    .then((v) => context.pushAndRemoveUntil("/main"));
              },
              child: Container(
                width: 336,
                height: 45,
                decoration: BoxDecoration(
                  color: cBlue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    "Masuk",
                    style: whiteTextStyle.copyWith(
                        fontSize: 18, fontWeight: semiBold),
                    textScaler: context.textScale(18),
                  ),
                ),
              ),
            ),
          )
        ]),
      );
    }

    return Scaffold(
      backgroundColor: cWhite,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            sectionTop(),
            sectionInput(),
          ],
        ),
      ),
    );
  }
}
