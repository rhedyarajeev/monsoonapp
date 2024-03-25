import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD9D9D9),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
            child: Container(
              width: 372,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.all(19),
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
            ),
          ),
          const SizedBox(height: 20), 
          Expanded( 
            child: Align(
              alignment: Alignment.topLeft, 
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20), 
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/beach.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10), 
                    Container(
                      width: 120,
                      height: 120,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/mountain.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width:10), 
                    Container(
                      width: 120,
                      height: 120,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/beach.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
                   const SizedBox(height:1), 
          Expanded( 
            child: Align(
              alignment: Alignment.topLeft, 
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 10), 
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/beach.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10), 
                    Container(
                      width: 120,
                      height: 120,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/mountain.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width:10), 
                    Container(
                      width: 120,
                      height: 120,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/beach.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
            const SizedBox(height:5),
            Expanded( 
            child: Align(
              alignment: Alignment.center, 
              child: Padding(
                padding: const  EdgeInsets.only(left:40,right: 30 ), 
                child: Row(
                  children: [
                    Container(
                      width: 327,
                      height: 138,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/monsoon.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ]
            ),
          ),
      ),
         ),
         const SizedBox(height:10), 
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 10), 
                  child: Row(
                    children: [
                   Container(
                   width: 372,
                   height: 54,
                   decoration: ShapeDecoration(
                   color: Colors.white,
                   shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                 ),
                    ),
                child: const Padding(
                padding:  EdgeInsets.all(19),
                child:Opacity(
               opacity: 0.30,
               child: Text(
              'Advt. Banner here..!',
              style: TextStyle(
              color: Colors.black,
               fontSize: 15,
               fontFamily: 'Montserrat',
               fontWeight: FontWeight.w600,
               height: 0,
             letterSpacing: 0.75,
           ),
          ),
         )
                   ),
                   ),
                ]
              ),
          ),
        ]
      ),
    );
  }
}
