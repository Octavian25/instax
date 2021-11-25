part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController search = TextEditingController();
  String searchResult = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: ListView(
          children: [
           HeaderHome(color: Colors.black, back: false,),
            SizedBox(
              height: 16.h,
            ),
            Container(
              height: 42.h,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: BoxDecoration(
                color: gray,
                borderRadius: BorderRadius.circular(15)
              ),
              child:Row(
                children: [
                  Container(
                    width: 28.w,
                    height: 28.w,
                    child: Icon(Icons.search_rounded, color: background,),
                  ),
                  SizedBox(
                    width: 18.w,
                  ),
                  Expanded(child: TextFormField(
                    controller: search,
                    onChanged: (e) => {
                     setState(() {
                    searchResult = e;
                     })
                    },
                    style: regular.copyWith(color: background, fontSize: 14.sp),
                    decoration: InputDecoration.collapsed(
                      hintText: "Search",
                      hintStyle: regular.copyWith(color: background, fontSize: 14.sp)
                    ),
                  ))
                ],
              )
            ),
            SizedBox(height: 19.h,),
            Text("Best Product !", style: semibold.copyWith(fontSize: 18.sp),),
            Container(
              child: Column(
                children: mockBarang.where((element) => element.nama_barang.toLowerCase().contains(search.text.toLowerCase())).map((e) => Container(
                  height: 114.h,
                  margin: EdgeInsets.only(top: 10.h),

                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 80.h,
                            width: 270.w,
                            padding: EdgeInsets.only(left: 15.w),
                            decoration: BoxDecoration(
                            color: e.color.toColor(),
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Limited Edition", style: regular,),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Container(child: Row(
                                  children: [
                                    Text("Instax", style: regular,),
                                    Text(e.nama_barang, style: semibold,),
                                  ],
                                ),),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 109.w,
                                        height: 25.h,
                                        color: Colors.transparent,
                                        child: ElevatedButton(
                                          onPressed: () => {
                                            Navigator.pushNamed(context, "/detailBarang", arguments: e)
                                          },
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)
                                            ),
                                            primary: white,
                                            onPrimary: e.color.toColor()
                                          ), child: Text("Buy", style: regular,),
                                        ),
                                      ),
                                      SizedBox(width: 10.w,),
                                      Expanded(child: Text("\$ " + e.harga, style: semibold.copyWith(fontSize: 18.sp),),)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 216.w,
                          ),
                          Container(
                            width: 111.w,
                            height: 114.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(e.path_image),
                                    fit: BoxFit.contain
                                )
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
