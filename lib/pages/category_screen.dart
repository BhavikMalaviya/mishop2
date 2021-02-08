import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mishop_app/Helper/helper.dart';
import 'package:mishop_app/modal/product_group.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<Gropproduct> listOfgroup = [
    Gropproduct(image: '1', title: 'Fashion', colorCode: 0xffF1F3FE),
    Gropproduct(image: '2', title: 'Baby', colorCode: 0xffE8FFFE),
    Gropproduct(image: '3', title: 'Makeup', colorCode: 0xffFFE9F1),
    Gropproduct(image: '4', title: 'Electronic', colorCode: 0xffEFF5FF),
    Gropproduct(image: '5', title: 'Furniture', colorCode: 0xffFFF9ED),
    Gropproduct(image: '6', title: 'Sport', colorCode: 0xffFFE9DC),
    Gropproduct(image: '7', title: 'Health', colorCode: 0xffE9FBD3),
    Gropproduct(image: '8', title: 'Appliance', colorCode: 0xffFFE0D6)
  ];
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
                          "categories",
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
                        children: listOfgroup
                            .asMap()
                            .map((i, element) => MapEntry(
                                i,
                                buildGridlist(
                                    imageName: listOfgroup[i].image,
                                    colorCode: listOfgroup[i].colorCode,
                                    title: listOfgroup[i].title)))
                            .values
                            .toList(),
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

Widget buildGridlist({String imageName, int colorCode, String title}) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        border: Border.all(color: Colors.grey[200])),
    alignment: Alignment.center,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: Color(colorCode), borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Image.asset(
              'assets/images/G${imageName}.png',
              height: 60,
              width: 60,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        )
      ],
    ),
  );
}
