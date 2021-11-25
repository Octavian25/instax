part of 'pages.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3) , () => Navigator.pushNamed(context, "/home"),);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Center(
        child: Container(
          width: 253.w,
          height: 70.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/fujifilm.png")
            )
          ),
        ),
      ),
    );
  }
}
