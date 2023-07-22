import 'package:search/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreen extends StatefulWidget {
  final String name, image;
  DetailsScreen(this.name, this.image);

  @override
  _DetailsScreen createState() => _DetailsScreen();
}

class _DetailsScreen extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightColor,
      bottomNavigationBar: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: Container(
          height: 58.0,
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 32.0),
          decoration: BoxDecoration(
            color: kOrangeColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(28.0),
              topRight: Radius.circular(28.0),
            ),
          ),
          child: Text("Back",
              style: GoogleFonts.solway(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: kLightColor,
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: 64.0,
            left: 28.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 28.0),
                  decoration: BoxDecoration(
                    color: kOrangeColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.star,
                      color: kLightColor,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                child: Text(
                  widget.name,
                  style: GoogleFonts.solway(
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 24.0),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "\$",
                      style: GoogleFonts.solway(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: kOrangeColor,
                      ),
                    ),
                    TextSpan(
                      text: "250.25",
                      style: GoogleFonts.solway(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: kOrangeColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 3.6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Calories",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey,
                              fontFamily: "Solway",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            "120 Calories",
                            style: GoogleFonts.solway(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 36.0),
                          Text(
                            "Time",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey,
                              fontFamily: "Solway",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 16.0),
                          Text(
                            "10 mins",
                            style: GoogleFonts.solway(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 36.0),
                          Text(
                            "Total Penyajian",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey,
                              fontFamily: "Solway",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 16.0),
                          Text(
                            "10 penyajian",
                            style: GoogleFonts.solway(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      widget.image,
                      height: 250.0,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.0),
              Text(
                "Deskripsi",
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: "Solway",
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.only(
                  right: 28.0,
                  bottom: 28.0,
                ),
                child: Text(
                  "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
                  style: GoogleFonts.solway(
                    fontSize: 18.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
