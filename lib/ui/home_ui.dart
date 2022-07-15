import 'package:flutter/material.dart';

import '../widget/scroll_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with
    TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("My Rewards"),
              Text("Add Coupan"),
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: TabBar(
                      //labelPadding: EdgeInsets.only(left: 20, right: 20),
                      controller: _tabController,
                      //indicatorSize: TabBarIndicatorSize.label,
                      labelColor: Colors.blue.withOpacity(0.5),
                      unselectedLabelColor: Colors.black,
                      isScrollable: true,
                      tabs: [
                        Tab(
                          child:
                          Container(

                            margin: EdgeInsets.all(6),
                            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all( color: Colors.black
                                ),
                                color: Colors.white
                            ),
                            child: Text("All", style: TextStyle(
                              fontSize: 14,
                            ),),
                          ),
                        ),
                        Tab(
                          child:
                          Container(
                            height: 120,
                            margin: EdgeInsets.all(6),
                            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all( color: Colors.black
                                )
                            ),
                            child: Text("SuperCoin Zone", style: TextStyle(
                                fontSize: 14
                            ),),
                          ),
                        ),
                        Tab(
                          child:
                          Container(
                            height: 120,
                            margin: EdgeInsets.all(6),
                            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all( color: Colors.black
                                )
                            ),
                            child: Text("GameZone", style: TextStyle(
                                fontSize: 14
                            ),),
                          ),
                        ),
                        Tab(
                          child:
                          Container(
                            height: 120,
                            margin: EdgeInsets.all(6),
                            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all( color: Colors.black
                                )
                            ),
                            child: Text("VideosZone", style: TextStyle(
                                fontSize: 14
                            ),),
                          ),
                        ),
                      ],
                    ),
                  )),
              Container(
                //padding: EdgeInsets.only(left: 20),
                height: MediaQuery.of(context).size.height,
                width: double.maxFinite,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index ){
                          return

                            GestureDetector(
                              onTap: (){

                              },
                              child: ScrollWidget(),

                            );
                        }),
                    Tab(child: Center(child: Text("SuperCoin Zone")),),
                    Tab(child: Center(child: Text("Game Zone")),),
                    Tab(child: Center(child: Text("Videos Zone")),),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
