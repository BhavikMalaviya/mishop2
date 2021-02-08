import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mishop_app/Helper/helper.dart';
import 'package:mishop_app/modal/popular_product.dart';
import 'package:mishop_app/modal/product_group.dart';

class PopularProductScreen extends StatefulWidget {
  @override
  _PopularProductScreenState createState() => _PopularProductScreenState();
}

class _PopularProductScreenState extends State<PopularProductScreen> {
  // List<PopularProduct> listOfgroup = [
  //   PopularProduct(),
  //   PopularProduct(image: '2', title: 'Baby', colorCode: 0xffE8FFFE),
  //   PopularProduct(image: '3', title: 'Makeup', colorCode: 0xffFFE9F1),
  //   PopularProduct(image: '4', title: 'Electronic', colorCode: 0xffEFF5FF),
  //   PopularProduct(image: '5', title: 'Furniture', colorCode: 0xffFFF9ED),
  //   PopularProduct(image: '6', title: 'Sport', colorCode: 0xffFFE9DC),
  //   PopularProduct(image: '7', title: 'Health', colorCode: 0xffE9FBD3),
  //   PopularProduct(image: '8', title: 'Appliance', colorCode: 0xffFFE0D6)
  // ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              child: Column(
                children: [
                  Helper().heightBox(size.height * 0.05),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: SvgPicture.asset(
                            'assets/Svg/arrow.svg',
                            height: 15,
                            width: 20,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Popular Product",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Helper().heightBox(size.height * 0.07),
                  Container(
                    height: size.height * 0.9,
                    padding: EdgeInsets.only(
                        left: 15, top: 30, right: 15, bottom: 40),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2, spreadRadius: 1, color: Colors.grey)
                      ],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      alignment: Alignment.center,
                      child: GridView.count(
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15,
                        crossAxisCount: 2,
                        children: [buildGridlist(size.width)],
                        // children: listOfgroup
                        //     .asMap()
                        //     .map((i, element) => MapEntry(
                        //         i,
                        //         buildGridlist(
                        //             imageName: listOfgroup[i].image,
                        //             colorCode: listOfgroup[i].colorCode,
                        //             title: listOfgroup[i].title)))
                        //     .values
                        //     .toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 85,
                right: 20,
                left: 250,
                child: Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 15, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2, spreadRadius: 1, color: Colors.grey)
                      ],
                      color: Color(0xff00A8FF),
                      borderRadius: BorderRadius.circular(50)),
                  width: 300,
                  height: 50,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/Svg/search.svg",
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Search",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

Widget buildGridlist(double width) {
  return Column(
    children: [
      Container(
        width: width * 0.5 - 30,
        height: 150,
        decoration: BoxDecoration(
            color: Color(0xffF5F6F9),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey[200])),
        child: Image.asset("assets/images/t-shirt.png"),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        children: [
          Container(
            child: Text(
              "Nike Air Max 250",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          )
        ],
      )
    ],
  );
}
