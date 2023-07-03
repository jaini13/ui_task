import 'package:flutter/material.dart';
import 'package:select_card/select_card.dart';
import 'cart.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;
  bool selected = false;
  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;
  bool selected4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.black,),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border,color: Colors.black,),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,),label: ''),

        ],
      ),

      backgroundColor: Color(0xfffefcfb),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Hey ',style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                    ),),
                    SizedBox(height: 5,),
                    Text('Harleen',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                    ),)
                  ],),
                  Spacer(),
                  Icon(Icons.search,size: 30,)

                ],
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 25,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap:()
                          {
                            setState(() {
                              selected = !selected;
                              selected1 = false;
                              selected2 = false;
                              selected3 = false;
                              selected4 = false;
                            });
                          },
                        child: AnimatedDefaultTextStyle(
                          duration: Duration(milliseconds: 2),
                          style: selected?TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            color: Colors.black
                          ):TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black

                          ),
                          child: Text('All',),
                        ),
                      ),
                      SizedBox(width: 30,),
                      GestureDetector(
                        onTap:()
                        {
                          setState(() {
                            selected1 = !selected1;
                            selected = false;

                            selected2 = false;
                            selected3 = false;
                            selected4 = false;
                          });
                        },
                        child: AnimatedDefaultTextStyle(
                          duration: Duration(milliseconds: 2),
                          style: selected1?TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black
                          ):TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black

                          ),
                          child: Text('Skincare',),
                        ),
                      ),
                      SizedBox(width: 30,),
                      GestureDetector(
                        onTap:()
                        {
                          setState(() {
                            selected2 = !selected2;
                            selected = false;
                            selected1 = false;

                            selected3 = false;
                            selected4 = false;

                          });
                        },
                        child: AnimatedDefaultTextStyle(
                          duration: Duration(milliseconds: 2),
                          style: selected2?TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black
                          ):TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black

                          ),
                          child: Text('Makeup',),
                        ),
                      ),

                      SizedBox(width: 30,),
                      GestureDetector(
                        onTap:()
                        {
                          setState(() {
                            selected3 = !selected3;
                            selected = false;
                            selected1 = false;
                            selected2 = false;

                            selected4 = false;
                          });
                        },
                        child: AnimatedDefaultTextStyle(
                          duration: Duration(milliseconds: 2),
                          style: selected3?TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black
                          ):TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black

                          ),
                          child: Text('Body',),
                        ),
                      ),

                      SizedBox(width: 30,),
                      GestureDetector(
                        onTap:()
                        {
                          setState(() {
                            selected4 = !selected4;
                            selected1 = false;
                            selected2 = false;
                            selected3 = false;
                          });
                        },
                        child: AnimatedDefaultTextStyle(
                          duration: Duration(milliseconds: 2),
                          style: selected4?TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black
                          ):TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black

                          ),
                          child: Text('Hygine',),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 320,
                      width: 235,
                      decoration: BoxDecoration(
                        color: Color(0xffbf9984),
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: Stack(
                          children: [
                            Positioned(
                              top:20,
                                left: 15,
                                child: Text('Glutes Firming',
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20
                                ),)),
                        Positioned(
                          bottom: 60,
                          left: 15,
                          right: 45,
                          child: SizedBox(
                            height: 200,
                              child: Image.asset('images/port-single-1-img-5-removebg-preview.png',fit: BoxFit.cover,)),
                        ),
                            Positioned(
                              bottom: 20,
                              left: 20,
                              right: 20,
                              child: Row(
                                children: [
                                 Column(
                                   children: [
                                     Text('\$ 49.99',style: TextStyle(color: Colors.black38,
                                     fontSize: 20),)
                                   ],
                                 ),
                                  Spacer(),
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    child: IconButton(
                                    icon: Icon(Icons.add,color: Colors.white,),
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                                        return Cart();
                                      },));

                                  },),)
                                ],

                              ),
                            )
                      ]),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 320,
                      width: 235,
                      decoration: BoxDecoration(
                        color: Color(0xffF5F5F5),
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: Stack(
                          children: [
                            Positioned(
                              top:20,
                                left: 15,
                                child: Text('Lakeme Primer(9 to 5)',
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20
                                ),)),
                        Positioned(
                          bottom: 60,
                          left: 15,
                          right: 45,
                          child: SizedBox(
                            height: 200,
                              child: Image.asset('images/lakeme.png',fit: BoxFit.cover,)),
                        ),
                            Positioned(
                              bottom: 20,
                              left: 20,
                              right: 20,
                              child: Row(
                                children: [
                                 Column(
                                   children: [
                                     Text('\$ 49.99',style: TextStyle(color: Colors.black38,
                                     fontSize: 20),)
                                   ],
                                 ),
                                  Spacer(),
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    child: IconButton(
                                    icon: Icon(Icons.add,color: Colors.white,),
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                                        return Cart();
                                      },));

                                  },),)
                                ],

                              ),
                            )
                      ]),
                    ),
                    SizedBox(width: 10,),

                    Container(
                      height: 320,
                      width: 235,
                      decoration: BoxDecoration(
                        color: Color(0xffF7E6C4),
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: Stack(
                          children: [
                            Positioned(
                              top:20,
                                left: 15,
                                child: Text('Maybelline New York Kajal',
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17
                                ),)),
                        Positioned(
                          bottom: 60,
                          left: 15,
                          right: 45,
                          child: SizedBox(
                            height: 200,
                              child: Image.asset('images/kajal.png',fit: BoxFit.cover,)),
                        ),
                            Positioned(
                              bottom: 20,
                              left: 20,
                              right: 20,
                              child: Row(
                                children: [
                                 Column(
                                   children: [
                                     Text('\$ 49.99',style: TextStyle(color: Colors.black38,
                                     fontSize: 20),)
                                   ],
                                 ),
                                  Spacer(),
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    child: IconButton(
                                    icon: Icon(Icons.add,color: Colors.white,),
                                    onPressed: () {

                                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                                        return Cart();
                                      },));
                                  },),)
                                ],

                              ),
                            )
                      ]),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text('Popular',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
              ),),
                  Spacer(),
                  TextButton(onPressed: () {

                  }, child: Text('See all',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                  ),))
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 270,
                     width: 200,
                      child:
                          Card(
                            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            elevation: 1,
                              color: Color(0xffffffff),
                              child: Stack(
                              children: [
                                Positioned(
                                    top: 10,
                                    right: 10,
                                    child: Icon(Icons.favorite_border)),
                                Center(child: Image.asset('images/serum-removebg-preview.png',)),
                                Positioned(
                                  bottom: 10,
                                    left: 10,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Essential Organ Oil',
                                        style: TextStyle(
                                          fontSize:15,
                                          fontWeight: FontWeight.w600
                                        ),),
                                        Text('\$ 25.63',style: TextStyle(
                                            fontSize:15,
                                            fontWeight: FontWeight.w400,
                                          color: Colors.grey
                                        ),)
                                      ],
                                    )
                                )
                              ],
                            ),
                          )
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 270,
                     width: 200,
                      child:
                          Card(
                            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            elevation: 1,
                              color: Color(0xffffffff),
                              child: Stack(
                              children: [
                                Positioned(
                                    top: 10,
                                    right: 10,
                                    child: Icon(Icons.favorite_border)),
                                Center(child: Image.asset('images/serum-removebg-preview.png',)),
                                Positioned(
                                  bottom: 10,
                                    left: 10,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Essential Organ Oil',
                                        style: TextStyle(
                                          fontSize:15,
                                          fontWeight: FontWeight.w600
                                        ),),
                                        Text('\$ 25.63',style: TextStyle(
                                            fontSize:15,
                                            fontWeight: FontWeight.w400,
                                          color: Colors.grey
                                        ),)
                                      ],
                                    )
                                )
                              ],
                            ),
                          )
                    ),
                    SizedBox(width: 10,),

                    Container(
                      height: 270,
                     width: 200,
                      child:
                          Card(
                            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            elevation: 1,
                              color: Color(0xffffffff),
                              child: Stack(
                              children: [
                                Positioned(
                                    top: 10,
                                    right: 10,
                                    child: Icon(Icons.favorite_border)),
                                Center(child: Image.asset('images/serum-removebg-preview.png',)),
                                Positioned(
                                  bottom: 10,
                                    left: 10,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Essential Organ Oil',
                                        style: TextStyle(
                                          fontSize:15,
                                          fontWeight: FontWeight.w600
                                        ),),
                                        Text('\$ 25.63',style: TextStyle(
                                            fontSize:15,
                                            fontWeight: FontWeight.w400,
                                          color: Colors.grey
                                        ),)
                                      ],
                                    )
                                )
                              ],
                            ),
                          )
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
