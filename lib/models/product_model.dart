class ProductModel {
  String id;
  String title;
  String subtitle;
  String img;
  String categoryId;
  int price;

  ProductModel.of(
      this.id, this.title, this.subtitle, this.img, this.categoryId, this.price);
}
