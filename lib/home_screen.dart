import 'package:flutter/material.dart';
import 'package:monsoonapp/favourites.dart';
import 'package:monsoonapp/profile_screen.dart';
import 'package:monsoonapp/search_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double containerWidth = (MediaQuery.of(context).size.width - 48) / 3;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                SizedBox(height: 40),
                _buildSearchContainer(context),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildImageContainer(context, "assets/images/beach.png", containerWidth),
                    _buildImageContainer(context, "assets/images/mountain.png", containerWidth),
                    _buildImageContainer(context, "assets/images/beach.png", containerWidth),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildImageContainer(context, "assets/images/beach.png", containerWidth),
                    _buildImageContainer(context, "assets/images/mountain.png", containerWidth),
                    _buildImageContainer(context, "assets/images/beach.png", containerWidth),
                  ],
                ),
                SizedBox(height: 10),
                _buildImageContainer(context, "assets/images/monsoon.jpg", 327),
                SizedBox(height: 10),
                GestureDetector( // Wrap banner container with GestureDetector
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchScreen()),
                    );
                  },
                  child: Center(
                    child: Container(
                      width: 327,
                      height: 54,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Opacity(
                        opacity: 0.30,
                        child: Center(
                          child: Text(
                            'Advt. Banner here..!',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.75,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                _buildFourImagesContainer(context),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildImageContainer(context, "assets/images/beach.png", containerWidth),
                    _buildImageContainer(context, "assets/images/mountain.png", containerWidth),
                    _buildImageContainer(context, "assets/images/beach.png", containerWidth),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildImageContainer(context, "assets/images/beach.png", containerWidth),
                    _buildImageContainer(context, "assets/images/mountain.png", containerWidth),
                    _buildImageContainer(context, "assets/images/beach.png", containerWidth),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildImageContainer(context, "assets/images/beach.png", containerWidth),
                    _buildImageContainer(context, "assets/images/mountain.png", containerWidth),
                    _buildImageContainer(context, "assets/images/beach.png", containerWidth),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImageContainer(BuildContext context, String imagePath, double width, {Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 105,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  Widget _buildSearchContainer(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 32,
      height: 50,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 23, top: 17),
        child: Text(
          'Search here...',
          style: TextStyle(
            color: Colors.black.withOpacity(0.5),
            fontSize: 12,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
            height: 0,
            letterSpacing: 0.60,
          ),
        ),
      ),
    );
  }

  Widget _buildFourImagesContainer(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
              _buildImageContainer(context, "assets/images/home.png", 30),
          _buildImageContainer(context, "assets/images/search.png", 30, onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchScreen()),
            );
          }),
          _buildImageContainer(context, "assets/images/love.png", 30, onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Favourites()),
            );
          }),
   
          _buildImageContainer(context, "assets/images/account.png", 30, onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile()),
            );
          }),
        ],
      ),
    );
  }
}
