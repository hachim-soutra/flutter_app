import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/widgets/headerWithSearchBar.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String text = "test";
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBar(size: size),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
            child: Row(
              children: [
                Container(
                  height: 24,
                  child: Stack(
                    children: <Widget>[
                      Text(text,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          margin: EdgeInsets.only(right: KDefaultPadding / 4),
                          height: 7,
                          color: KPrimaryColor.withOpacity(0.2),
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: KPrimaryColor,
                  onPressed: () {},
                  child: Text(
                    "More",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
