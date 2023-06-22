class CategoriesModel {
  String? categoryId;
  String? categoryName;
  String? categoryNameAr;
  String? categoryImage;
  String? categoryDatetime;

  CategoriesModel(
      {this.categoryId,
      this.categoryName,
      this.categoryNameAr,
      this.categoryImage,
      this.categoryDatetime});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'];
    categoryName = json['category_name'];
    categoryNameAr = json['category_name_ar'];
    categoryImage = json['category_image'];
    categoryDatetime = json['category_datetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['category_id'] = categoryId;
    data['category_name'] = categoryName;
    data['category_name_ar'] = categoryNameAr;
    data['category_image'] = categoryImage;
    data['category_datetime'] = categoryDatetime;
    return data;
  }
}
