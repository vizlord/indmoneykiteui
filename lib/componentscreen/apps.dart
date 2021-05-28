import 'package:indmoneykiteui/kit/sizeconfig.dart';
import 'package:flutter/material.dart';
import 'explore.dart';
import 'myapps.dart';

class Apps extends StatefulWidget {
  @override
  _AppsState createState() => _AppsState();
}

class _AppsState extends State<Apps> with TickerProviderStateMixin{
  TabController tabController;
  TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            centerTitle: false,
            elevation: 0,
            backgroundColor: Theme.of(context).iconTheme.color,
            title: Text(
              'Apps',
              style: TextStyle(fontSize: 27, color: Theme.of(context).backgroundColor),
            ),
            actions: <Widget>[
              Icon(
                Icons.keyboard_arrow_down,
                size: 45,
                color: Theme.of(context).backgroundColor,
              )
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(35.0),
              child: Column(
                children: <Widget>[
                  TabBar(
                    controller: tabController,
                    isScrollable: true,
                    indicatorColor: Colors.blue,
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 30),
                    labelColor: Colors.blue,
                    unselectedLabelColor: Theme.of(context).unselectedWidgetColor,
                    labelPadding: EdgeInsets.symmetric(horizontal: 70),
                    tabs: <Widget>[
                      Tab(
                        text: 'Explore',
                      ),
                      Tab(
                        text: 'My apps',
                      ),

                    ],
                  ),


                ],
              ),
            )),
        body: TabBarView(

          controller: tabController,
          children: <Widget>[
            Explore(),
            MyApps()
          ],
        ),
      ),
    );

  }
}
