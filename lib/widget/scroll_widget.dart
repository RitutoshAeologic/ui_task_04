import 'package:flutter/material.dart';
import 'package:ui_task_04/widget/reward_widget.dart';

class ScrollWidget extends StatelessWidget {
  const ScrollWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
       scrollDirection: Axis.vertical,
        child:
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: CustomScrollView(
            primary: true,
            scrollDirection: Axis.vertical,
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(20),
                sliver: SliverGrid.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    RewardWidget(title1: "Title One", title2: "Title 2",
                      img: Image.asset("assets/flip_icon.jpg"),),
                    RewardWidget(title1: "Title One", title2: "Title 2",
                      img: Image.asset("assets/flip_icon.jpg"),),
                    RewardWidget(title1: "Title One", title2: "Title 2",
                      img: Image.asset("assets/flip_icon.jpg"),),
                    RewardWidget(title1: "Title One", title2: "Title 2",
                      img: Image.asset("assets/flip_icon.jpg"),),
                    RewardWidget(title1: "Title One", title2: "Title 2",
                      img: Image.asset("assets/flip_icon.jpg"),),
                    RewardWidget(title1: "Title One", title2: "Title 2",
                      img: Image.asset("assets/flip_icon.jpg"),),
                    RewardWidget(title1: "Title One", title2: "Title 2",
                      img: Image.asset("assets/flip_icon.jpg"),),
                    RewardWidget(title1: "Title One", title2: "Title 2",
                      img: Image.asset("assets/flip_icon.jpg"),),
                    RewardWidget(title1: "Title One", title2: "Title 2",
                      img: Image.asset("assets/flip_icon.jpg"),),
                    RewardWidget(title1: "Title One", title2: "Title 2",
                      img: Image.asset("assets/flip_icon.jpg"),),
                    RewardWidget(title1: "Title One", title2: "Title 2",
                      img: Image.asset("assets/flip_icon.jpg"),),
                    RewardWidget(title1: "Title One", title2: "Title 2",
                      img: Image.asset("assets/flip_icon.jpg"),),
                  ],
                ),
              ),
            ],
          ),
        )
      );
  }
}
