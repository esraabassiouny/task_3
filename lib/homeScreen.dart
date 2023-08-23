import 'package:flutter/material.dart';
import 'package:task3/offers.dart';
import 'package:task3/orders.dart';
import 'package:task3/profile.dart';
import 'package:task3/vouchers.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index=0;
  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade200,
        leading: Padding(
          padding: const EdgeInsets.only(
              left: 10.0,
              top: 10,
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/task3.jpg'),
            radius: 10,
          ),
        ),
        title: Expanded(child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello',style: TextStyle(
                color: Colors.amber.shade600,
                fontWeight: FontWeight.w500,
              ),
              ),
              Text('Esraa Bassiouny',style: TextStyle(
              color: Colors.black,
                fontWeight: FontWeight.bold
              ),
              ),
            ],
          ),
        ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
             padding: const EdgeInsets.all(10.0),
             child: Stack(
               alignment: Alignment.centerRight,
               children :[
               Container(
                 decoration: BoxDecoration(
                   boxShadow: [
                     BoxShadow(
                       blurRadius: 15,
                       color:Colors.grey.shade400.withOpacity(0.4),
                     ),
                   ],
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(20),
                 ),
                 height: 45,
                  width: double.infinity,
                  child:Center(
                    child: Text('Talabat',style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.w800,
                      fontSize: 25,
                    ),
                    ),
                  ),
               ),
                 CircleAvatar(
                    backgroundColor: Colors.deepOrange,
                     child: Icon(Icons.search_rounded,size: 35,),
                   radius: 25,
                 ),
               ],
             ),
           ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 15,
                      color:Colors.deepOrange.withOpacity(0.3),
                    ),
                  ],
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(20),
                ),
               height: 157,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Talabat mart',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),),
                            SizedBox(
                              height:3,
                            ),
                            Text('20 mins delivery',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            ),
                            SizedBox(
                              height:3 ,
                            ),
                            Container(
                              width: 200,
                              child: Text('The fastest way to get your groceries , Order Now .',style: TextStyle(
                              color: Colors.white,
                              ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(
                              height:5 ,
                            ),
                            Container(
                              width: 110,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextButton(
                                  onPressed: (){},
                                  child: Text('Shop now',style:TextStyle(
                                  color: Colors.deepOrange,
                                    fontWeight: FontWeight.bold,
                                  ) ,
                                  ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          color: Colors.deepOrange,
                          child: Image.asset('assets/c1.png')),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Categories',style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    Container(
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                         Image.asset('assets/_pizza.jpg',fit: BoxFit.cover,
                         height: 110,
                         width: 110,),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0,
                              bottom: 3.0,
                            ),
                            child: Text('Food',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image.asset('assets/Groceries.jpeg',fit: BoxFit.cover,
                            height: 110,
                            width: 110,),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
                              bottom: 3.0,
                            ),
                            child: Text('Groceries',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image.asset('assets/coffee.jpeg',fit: BoxFit.cover,
                            height: 110,
                            width: 110,),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
                              bottom: 3.0,
                            ),
                            child: Text('Coffee',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Image.asset('assets/pick up.jpg',fit: BoxFit.cover,
                            height: 110,
                            width: 110,),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
                              bottom: 3.0,
                            ),
                            child: Text('Pickup',style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Offers',style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/kfc.jpg',
                fit: BoxFit.cover,
                height: 200,
                width: 400,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:
      BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(
          color: Colors.red,
        ),
        showUnselectedLabels: true,
        fixedColor: Colors.deepOrange,
        currentIndex: index,
        onTap: (newindex){
          index=newindex!;
          setState(() {
            if(index==1){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Orders();
          }));
        }else if(index==2){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Vouchers();
              }));
            }
            else if(index==3){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Offers();
              }));
            }
            else if(index==4){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Profile();
              }));
            }
          });
          },
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_sharp),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Vouchers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_outlined),
            label: 'Offers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
