part  of 'widget.dart';


class HeaderHome extends StatelessWidget {
  final bool back;
  final Color color;
  const HeaderHome({Key? key, this.color = Colors.blue, this.back=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50.h,
      width: 100.sw,
      child: Row(
        children: [
          back ? GestureDetector(
            onTap: () => Navigator.pushNamed(context, "/home"),
            child: Container(
              width: 16.w,
              height: 16.h,
              child: Icon(Icons.arrow_back_ios, color: color,),
            ),
          ) : Container(),
          Expanded(
            child: Center(
              child: Container(
                width: 125.w,
                height: 21.h,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/fujifilm-banner.png")
                    )
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
