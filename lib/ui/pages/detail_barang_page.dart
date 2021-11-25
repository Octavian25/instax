part of 'pages.dart';

class DetailBarangPage extends StatelessWidget {
  const DetailBarangPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final barangModel = ModalRoute.of(context)!.settings.arguments as BarangModel;
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              children: [
                    HeaderHome(color: barangModel.color.toColor(), back: true,),
                Container(
                  width: 166.w,
                  height: 166.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(barangModel.path_image)
                    )
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  child: Row(
                    children: [
                      Text("Instax", style: semibold.copyWith(fontSize: 18.sp),),
                      Text(barangModel.nama_barang, style: semibold.copyWith(color: barangModel.color.toColor(), fontSize: 18.sp),),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text("Be real and fun with the INSTAX MINI 7+. Cool design, colorful and compact, this instant camera is fun and easy to use. Point and shoot and give your day some fun!", style: regular,),
                SizedBox(
                  height: 15.h,
                ),
                Text("Point & Shoot", style: semibold,),
                SizedBox(
                  height: 15.h,
                ),
                Text("The Mini 7+ is easy to use! Simply point and shoot! With its exposure control adjustment and 60mm fixed-focus lens, the Mini 7+ makes it easy for you to be creative and live in the moment.", style: regular,),
                SizedBox(
                  height: 15.h,
                ),
                Text("Mini But With Full-Size Memories", style: semibold,),
                SizedBox(
                  height: 15.h,
                ),
                Text("Pop it in your wallet, stick it to your wall – the INSTAX Mini film brings you instant 2 x 3 sized photos you can show and tell. Using professional high-quality film technology (as you’d expect from Fujifilm), your festival frolicking, sun worshipping, crowd surfing memories that you print will transport you right back into that moment.", style: regular,),
                SizedBox(
                  height: 15.h,
                ),
                Text("Mini Film", style: semibold,),
                SizedBox(
                  height: 15.h,
                ),
                Text("Mini moments with maximum impact. What’s your next mini moment?", style: regular,),
                SizedBox(
                  height: 15.h,
                ),
                Text("Plenty of Great Color Choices", style: semibold,),
                SizedBox(
                  height: 15.h,
                ),
                Text("Available in five awesome colors: Lavender, Seafoam Green, Coral, Light Pink & Light Blue", style: regular,),
                SizedBox(
                  height: 15.h,
                ),
                Text("The Mini 7+ Has Your Back!", style: semibold,),
                SizedBox(
                  height: 15.h,
                ),
                Text("Depending upon the weather conditions, you can easily control brightness to obtain a great picture", style: regular,),
                SizedBox(
                  height: 15.h,
                ),
                Text("Fun All The Time!", style: semibold,),
                SizedBox(
                  height: 15.h,
                ),
                Text("Live in the moment and enjoy your Mini 7+, and give your day some instant fun", style: regular,),
                SizedBox(
                  height: 65.h,
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50.h,
                width: 100.sw,
                color: white,
                child: Row(
                  children: [
                    SizedBox(
                      width: 15.w,
                    ),
                    Expanded(child: Text("\$"+barangModel.harga, style: semibold.copyWith(fontSize: 18.sp, fontWeight: FontWeight.bold),)),
                    Container(
                      width: 90.w,
                      height: 31.h,
                      color: Colors.transparent,
                      child: ElevatedButton(
                        onPressed: () => {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            primary: barangModel.color.toColor(),
                            onPrimary: white
                        ), child: Text("Buy Now", style: regular,),
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
