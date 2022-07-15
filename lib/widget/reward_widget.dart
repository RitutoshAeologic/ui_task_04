import 'package:flutter/material.dart';

class RewardWidget extends StatelessWidget {
  const RewardWidget({Key? key,
    required this.title1,
    required this.title2,
    required this.img}
      ) :
        super(key: key);
 final String title1;
 final String title2;
 final Image img;
  @override
  Widget build(BuildContext context) {
    return
      Container(
      height: 240,
     // margin: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width*0.45,
      padding: EdgeInsets.only(left: 15,right:15 ,top: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)
        ),
        color: Colors.white,
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            child: img,
            //Image.asset("assets/flip_icon.jpg"),
          ),
          SizedBox(height: 5,),
          Text(title1),
          SizedBox(height: 5,),
          Text(title2),
          SizedBox(height: MediaQuery.of(context).size.width*0.08,),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text("T&C"),
          )
        ],
      ),
    );
  }
}
