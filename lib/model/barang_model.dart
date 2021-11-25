class BarangModel {
  String color;
  String harga;
  String path_image;
  String nama_barang;

  BarangModel({required this.color, required this.harga, required this.path_image, required this.nama_barang});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['color'] = this.color;
    data['harga'] = this.harga;
    data['path_image'] = this.path_image;
    data['nama_barang'] = this.nama_barang;
    return data;
  }
}

List<BarangModel> mockBarang = [
  BarangModel(color: "70b1a1", harga: "49.90", path_image: "assets/InstaxMini7plus_Mint_R.png", nama_barang: " Mini Mint 7+"),
  BarangModel(color: "77a0c6", harga: "50.90", path_image: "assets/InstaxMini7plus_Blue_R.png", nama_barang: " Mini Blue 7+"),
  BarangModel(color: "b0463c", harga: "51.90", path_image: "assets/InstaxMini7plus_Choral_R.png", nama_barang: " Mini Choral 7+"),
  BarangModel(color: "855f8c", harga: "53.90", path_image: "assets/InstaxMini7plus_Lavender_R.png", nama_barang: " Mini Lavender 7+"),
  BarangModel(color: "F3D9DD", harga: "52.90", path_image: "assets/InstaxMini7plus_Pink_R.png", nama_barang: " Mini Pink 7+"),
];