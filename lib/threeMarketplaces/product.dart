
class Product{
  String name;

  String image;
  
  Product(this.name,  this.image);
}

class Category{
  String description;
  var products;
  
  Category(this.description,this.products);
}

class CategoryList{

  static final Category corporateSignage= new Category("corporate signage description here", [corporateSignage_product1, corporateSignage_product2, corporateSignage_product3]);
  static final Product corporateSignage_product1= Product("Corporate signage product 1",'assets/images/rawr.png');
  static final Product corporateSignage_product2= Product("Corporate signage product 2", 'assets/images/rawr.png');
  static final Product corporateSignage_product3= Product("Corporate signage product 3", 'assets/images/rawr.png');



  static final Category lifestyleNovelty= new Category("lifestyle novelty description here", [lifestyleNovelty_product1, lifestyleNovelty_product2, lifestyleNovelty_product3]);
  static final Product lifestyleNovelty_product1= Product("lifestyle novelty product 1", 'assets/images/rawr.png');
  static final Product lifestyleNovelty_product2= Product("lifestyle novelty product 2", 'assets/images/rawr.png');
  static final Product lifestyleNovelty_product3= Product("lifestyle novelty product 3", 'assets/images/rawr.png');


  static final Category corporateBranding= new Category("Corportate branding description here", [corporateBranding_product1, corporateBranding_product2, corporateBranding_product3]);
  static final Product corporateBranding_product1= Product("Bookmark", 'assets/images/bookmark.png');
  static final Product corporateBranding_product2= Product("Keychain", 'assets/images/key_chain.jpg');
  static final Product corporateBranding_product3= Product("Tie Clip", 'assets/images/tieclip.jpg');

  
}

/*
class CorporateSignage {
  CorporateSignage({
    this.name ='assets/images/rawr.png',
    this.price = 0.0,
    this.description ='assets/images/rawr.png',
    this.imagePath='assets/images/rawr.png',
});

  String name;
  double price;
  String description;
  String imagePath;

  static List<CorporateSignage> corporateSignageList=<CorporateSignage>[
    CorporateSignage(


    ),
  ];

}

*/
