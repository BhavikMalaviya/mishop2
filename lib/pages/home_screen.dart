import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mishop_app/Helper/app_color.dart';
import 'package:mishop_app/Helper/helper.dart';
import 'package:mishop_app/modal/product.dart';
import 'package:mishop_app/modal/special_product.dart';
import 'package:mishop_app/pages/category_screen.dart';
import 'package:mishop_app/pages/popular_product_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _selected = false;
  List<Product> productList = [
    Product(
        imagelink: 't-shirt',
        productname: "Nike Air Max 250",
        price: 50,
        isfavorite: true),
    Product(
        imagelink: 'football',
        productname: "Football Yellow",
        price: 30,
        isfavorite: false),
    Product(
        imagelink: 'cap',
        productname: "Baseball blue cap",
        price: 70,
        isfavorite: true)
  ];
  List<SpecialProduct> specialProduct = [
    SpecialProduct(
        imagelink: 'assets/images/homeApplience.png',
        numberOfbrands: 50,
        title: 'Fashion'),
    SpecialProduct(
        imagelink: 'assets/images/homeApplience.png',
        numberOfbrands: 50,
        title: 'Home Applience')
  ];

  List<String> sliderImages = [
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png'
  ];
  double _currentIndex = 0.0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Discover",
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 20, color: Colors.black),
        ),
        actions: [
          Helper().buildCircleIcon(imageName: "search"),
          SizedBox(
            width: 10,
          ),
          Stack(
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              Helper().buildCircleIcon(imageName: "shopping-bag"),
              Positioned(
                  top: 5,
                  right: -8,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(0xffF96C05),
                    child: Text(
                      "2",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ))
            ],
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              CarouselSlider(
                  items: sliderImages
                      .map((item) => Container(
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  item,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                  options: CarouselOptions(
                    height: 150,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index.toDouble();
                      });
                    },
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  )),
              DotsIndicator(
                dotsCount: sliderImages.length,
                position: _currentIndex.toDouble(),
                decorator: DotsDecorator(
                  spacing: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  color: Color(0xffFDC49B),
                  size: const Size.square(5.0),
                  activeColor: Color(0xffF96C05),
                  activeSize: const Size(18.0, 6.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Catagory",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryScreen())),
                      child: Text(
                        "View all",
                        style: TextStyle(
                            fontSize: 14, color: AppColors.textfieldcolor),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SvgPicture.asset(
                          "assets/Svg/mannequin.svg",
                          height: 60,
                          width: 60,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Fashion",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SvgPicture.asset(
                          "assets/Svg/mannequin.svg",
                          height: 60,
                          width: 60,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Electronic",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SvgPicture.asset(
                          "assets/Svg/baby-bottle.svg",
                          height: 60,
                          width: 60,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Baby",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SvgPicture.asset(
                          "assets/Svg/makeup-brushes.svg",
                          height: 60,
                          width: 60,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Makerup",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Product",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PopularProductScreen())),
                      child: Text(
                        "View all",
                        style: TextStyle(
                            fontSize: 14, color: AppColors.textfieldcolor),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: size.height * 0.3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return buildProductlist(
                        imageName: productList[index].imagelink,
                        productName: productList[index].productname,
                        width: size.width * 0.3,
                        price: productList[index].price,
                        favorite: productList[index].isfavorite);
                  },
                  itemCount: 3,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Special For You",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                          fontSize: 14, color: AppColors.textfieldcolor),
                    )
                  ],
                ),
              ),
              Container(
                height: size.height * 0.2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        width: size.width * 0.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(specialProduct[index].imagelink),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  specialProduct[index].title,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "${specialProduct[index].numberOfbrands} Brands",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProductlist(
      {double width,
      String imageName,
      String productName,
      double price,
      bool favorite}) {
    return Container(
      width: width,
      margin: EdgeInsets.only(left: 15, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: width,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xffF5F6F9),
              border: Border.all(color: Colors.grey[300]),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset('assets/images/${imageName}.png'),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
              width: 90,
              child: Text(
                productName,
                style: TextStyle(fontWeight: FontWeight.w500),
              )),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$${price.toString()}",
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.textfieldcolor,
                    fontWeight: FontWeight.w700),
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                child: favorite
                    ? GestureDetector(
                        onTap: () => favorite = !favorite,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xffFFE6E6),
                          child: Icon(
                            Icons.favorite,
                            size: 20,
                            color: Color(0xffFF4848),
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () => favorite = !favorite,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xffECF1FF),
                          child: Icon(
                            Icons.favorite,
                            size: 20,
                            color: Color(0xffC5D0EE),
                          ),
                        ),
                      ),
              )
            ],
          )
        ],
      ),
    );
  }
}
