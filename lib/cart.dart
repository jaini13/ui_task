import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Cart extends StatelessWidget {
   Cart({super.key});
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        actions: [
          Icon(Icons.favorite_border),
          SizedBox(width: 15,),
          Icon(Icons.share),
          SizedBox(width: 10,),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 380,
                    child:PageView(
                      controller: controller,
                      children: [
                        Image.asset('images/serum-removebg-preview.png'),
                        Image.asset('images/serum-removebg-preview.png'),
                        Image.asset('images/serum-removebg-preview.png'),
                        Image.asset('images/serum-removebg-preview.png'),
                      ],
                    )
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      child:  SmoothPageIndicator(
                        controller: controller,
                        count: 4,
                        effect: const WormEffect(
                          activeDotColor: Colors.black54,
                          dotHeight: 7,
                          dotColor: Colors.grey,
                          dotWidth: 7,
                          type: WormType.thinUnderground,
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Rose Gold ',style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20
                      ),),
                      Text('Dropper Serum ',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20
                      ),),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text('\$ 79.99',style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,

                      ),),
                      Text('150 ml',style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,

                      ),),
                    ],
                  )

                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.star,color: Color(0xffe8b53e),),
                  SizedBox(width: 4,),
                  Text('4.9',style: TextStyle(
                    fontWeight: FontWeight.w500
                  ),),
                  Text('(28.6 k)',style: TextStyle(
                    color: Colors.grey
                  ),),
                ],
              ),
              SizedBox(height: 25,),
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Product Details ',style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15
                    ),),
                    Spacer(),
                    Icon(Icons.arrow_drop_up_outlined)
                  ],
                ),
                SizedBox(height: 20,),
                Text('A lightweight moisturising serum packed with the\n'
                    'finest botanical oils and extracts to brighten, repair\n'
                    ' and nourish your skin. The glimmering blend is loaded'
                    ' with Vitamins C, A and E along with antioxidant-rich Rosehip,'
                    ' Pomegranate, Frankincense, Saffron, and Calendula oils infused with 24k Gold Flakes.\n'
                  ,
                style: TextStyle(
                  color: Colors.grey
                ),)

              ],),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(child: Text('Buy Now',style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
