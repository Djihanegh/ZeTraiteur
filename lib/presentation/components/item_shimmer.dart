import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:ze_traiteur/presentation/utils/size_config.dart';

class PostListItemShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Center(
        child: Container(
           decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
      width: SizeConfig.screenWidth! * 0.6,
      height: SizeConfig.screenHeight! * 0.28,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(20),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[200]!,
        highlightColor: Colors.grey[100]!,
        //child: Padding(
        //padding: const EdgeInsets.symmetric(horizontal: 19),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // _header(),
            _body(),
          ],
        ),
        //),
      ),
    ));
  }

  Padding _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Row(
        children: <Widget>[
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 8,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 50,
                  height: 8,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding _body() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 150,
            height: 8,
            color: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 180,
            height: 8,
            color: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 150,
            height: 8,
            color: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 150,
            height: 8,
            color: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 180,
            height: 8,
            color: Colors.white,
          ),
            SizedBox(
            height: 10,
          ),
            Container(
            width: 150,
            height: 8,
            color: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
         
        ],
      ),
    );
  }
}
