import 'package:flutter/material.dart';
import 'package:indmoneykiteui/kit/sizeconfig.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:indmoneykiteui/provider/theme_provider.dart';
import 'package:provider/provider.dart';
class WatchList1 extends StatefulWidget {
  @override
  _WatchList1State createState() => _WatchList1State();
}

class _WatchList1State extends State<WatchList1> {
  TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Container(
            color: Theme.of(context).primaryColor,
            height: SizeConfig.blockSizeVertical*5,
          ),
          Positioned(
            top: SizeConfig.blockSizeVertical*2,
            left: SizeConfig.blockSizeHorizontal*4,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                boxShadow: [
                  BoxShadow(
                  blurRadius: 13.0,
                  color: Colors.black.withOpacity(.03),
                  offset: Offset(1.0, 7.0),
                )]
              ),
              width: SizeConfig.blockSizeHorizontal*92,
              height: SizeConfig.blockSizeVertical*6,

              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Icon(AntDesign.search1,color:Colors.grey ,size: 22,),
                    ),
                    Flexible(
                      flex: 3,
                      child: TextField(
                        controller: textEditingController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            fillColor: Colors.grey,
                            hintText: 'Search & add'
                        ),),),
                    Flexible(
                      flex: 1,
                      child: Text('2/50',style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey
                      ),),
                    ),
                    Flexible(
                      flex: 1,
                      child: Icon(Octicons.settings,color: Colors.grey,),
                    ),
                  ]),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(height: SizeConfig.blockSizeVertical*10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('INFY'),
                            Text('707.40',style: TextStyle(
                                color: Colors.green
                            ),)
                          ],
                        ),
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical*1,),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('NSE',style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13
                            ),),
                            Text('+1.95 (+0.28%)',style: TextStyle(
                                fontSize: 13
                            ),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('CIPLA'),
                            Text('628.35',style: TextStyle(
                                color: Colors.red
                            ),)
                          ],
                        ),
                      ),
                      SizedBox(height: SizeConfig.blockSizeVertical*1,),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('NSE',style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13
                            ),),
                            Text('-4.70 (-0.74%)',style: TextStyle(
                                fontSize: 13
                            ),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),


              ],
            ),
          )
        ],
      ),
    );
  }
}
