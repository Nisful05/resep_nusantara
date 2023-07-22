import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:search/DetailsScreen.dart';
import 'package:search/constant.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen();

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List freshList = [
    {"image": "assets/images/mie.jpg", "name": "Mie Telur"},
    {"image": "assets/images/mie.jpg", "name": "Mie Telur"},
    {"image": "assets/images/mie.jpg", "name": "Mie Telur"},
    {"image": "assets/images/mie.jpg", "name": "Mie Telur"},
  ];

  List DessertList = [
    {"image": "assets/images/putu.jng", "name": "Putu Ayu"},
    {"image": "assets/images/putu.jng", "name": "Putu Ayu"},
    {"image": "assets/images/putu.jng", "name": "Putu Ayu"},
    {"image": "assets/images/putu.jng", "name": "Putu Ayu"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightColor,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: 64.0,
            left: 16.0,
            right: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap:() => print("Menu"),
                    child: SvgPicture.asset(
                      "assets/icons/menu.svg",
                      height: 32.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => print("help-circle"),
                    child: SvgPicture.asset(
                      "assets/icons/help-circle.svg",
                      height: 32.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.0),
              Text(
                    "Masakan Nusantara",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                  ),
              SizedBox(height: 12.0),
              Text(
                "Mau masak apa hari ini ? ",
                style: GoogleFonts.solway(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 205, 103, 0),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 6.0,
                        horizontal: 8.0,
                      ),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: TextField(
                        cursorColor: kDarkColor,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                              size: 34.0,
                            ),
                            hintText: "Ayo cari resep",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 20.0,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  GestureDetector(
                    onTap:() => print("Filter"),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 18.0,
                        horizontal: 18.0,
                      ),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/sliders.svg",
                        height: 22.0,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Resep Populer Hari Ini",
                    style: GoogleFonts.lobster(
                      fontSize: 25.0,
                    ),
                  ),
                  GestureDetector(
                    onTap:() => print("Lihat Semua"),
                    child: Text(
                      "Lihat Semua",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: kOrangeColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Container(
                height: 240,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: freshList.length,
                   itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(freshList[index]["name"], freshList[index]["image"]),
                          ),
                        ),
                        child: Container(
                          height: 240.0,
                          width: 200.0,
                          margin: EdgeInsets.only(right: 32.0),
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Stack(
                            clipBehavior: Clip.none, children: [
                              Positioned(
                                top: 16.0,
                                left: 16.0,
                                child: Icon (
                                  Icons.favorite_border,
                                  color: Colors.grey,
                              ),
                            ),
                            Positioned(
                              top: 16.0,
                              right: 10.0,
                              child: Image.asset(
                                "assets/images/mie.jpg",
                          height: 125.0,
                          width: 125.0,
                        ),
                      ),
                      Positioned(
                        top: 110.0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0),
                            child: Column(
                              crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mie Aceh",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: kBlueColor,
                                      fontWeight: FontWeight.bold),
                                      ),
                                    SizedBox(height: 10.0),
                                    Row(
                                        children: List.generate(
                                          5,
                                          ((index) => Icon(
                                                Icons.star,
                                                color: kOrangeColor,
                                                size: 16.0,
                                              )),
                                        ),
                                      ),
                                      SizedBox(height: 6.0),
                                      Text(
                                        "NAD",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: kOrangeColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.access_time,
                                                color: Colors.grey,
                                                size: 14.0,
                                              ),
                                              SizedBox(width: 8.0),
                                              Text(
                                                "25 mins",
                                                style: TextStyle(
                                                    fontSize: 12.0,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 30.0, width: 30.0),
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                "assets/icons/bell.svg",
                                                height: 14.0,
                                                color: Colors.grey,
                                              ),
                                              SizedBox(height: 5.0, width: 5.0),
                                              Text(
                                                "1 Serving",
                                                style: TextStyle(
                                                    fontSize: 12.0,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                ],
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
            ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Jajanan Pasar ",
                    style: GoogleFonts.lobster(
                      fontSize: 25.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => print("Lihat Semua jajanan Pasar"),
                    child: Text(
                      "Lihat Semua",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: kOrangeColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: DessertList.length,
                padding: EdgeInsets.zero,
                itemBuilder:(context, index) {
                  return GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(DessertList[index]["name"], DessertList[index]["image"]),
                        ),
                      ),
                      child: Container (
                  height: 120.0,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 12.0,
                  ),
                  margin: EdgeInsets.only(
                    bottom: 16.0,
                  ),
                   decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(20.0)),
                    child: Row (
                      children: [
                        Image.asset(
                          "assets/images/putu.jpg",
                          height: 180.0,
                          width: 120.0,
                          fit: BoxFit.contain,
                        ),
                        Expanded(
                          child: Padding(
                            padding: 
                              const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Putu Ayu",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: kBlueColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 6.0),
                                Text(DessertList[index]["name"],
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 18.0,
                                  )),
                                Row(
                                    children: [
                                      Row(
                                        children: List.generate(
                                          5,
                                          (index) => Icon(
                                            Icons.star,
                                            color: kOrangeColor,
                                            size: 16.0,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 6.0),
                                        
                                    ],
                                ),
                                        SizedBox(height: 6.0),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.access_time,
                                                  color: Colors.grey,
                                                  size: 10.0,
                                                 ),
                                                SizedBox(width: 8.0),
                                                Text(
                                                  "30 mins",
                                                  style: TextStyle(
                                                    fontSize: 10.0,
                                                    color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 20.0),
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/icons/bell.svg",
                                              height: 12.0,
                                              color: Colors.grey,
                                            ),
                                        SizedBox(width: 8.0),
                                        Text(
                                          "30 buah ",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ), 
                              ],
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 24.0,
                              width: 35.0,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ), 
              
                ),
                  );
                },
              
              ),

            ],
          ),
        ),
      ),
    );
  }
}
