import 'package:indmoneykiteui/kit/sizeconfig.dart';
import 'package:indmoneykiteui/provider/theme_provider.dart';
import 'package:indmoneykiteui/watchtabs/watchlist1.dart';
import 'package:indmoneykiteui/watchtabs/watchlist2.dart';
import 'package:indmoneykiteui/watchtabs/watchlist3.dart';
import 'package:indmoneykiteui/watchtabs/watchlist4.dart';
import 'package:indmoneykiteui/watchtabs/watchlist5.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:provider/provider.dart';
class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> with TickerProviderStateMixin{
  TabController tabController;
  TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {


    SizeConfig().init(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
            centerTitle: false,
            elevation: 0,
            backgroundColor: Theme.of(context).iconTheme.color,
            title: Text(
              'Marketwatch',
              style: TextStyle(
                  fontSize: 27,
                  color: Theme.of(context).backgroundColor,),
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
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
                    labelColor: Colors.blue,
                    unselectedLabelColor: Theme.of(context).unselectedWidgetColor,
                    labelPadding: EdgeInsets.symmetric(horizontal: 25),
                    tabs: <Widget>[
                      Tab(
                        text: 'Watchlist 1',
                      ),
                      Tab(
                        text: 'Watchlist 2',
                      ),
                      Tab(
                        text: 'Watchlist 3',
                      ),
                      Tab(
                        text: 'Watchlist 4',
                      ),
                      Tab(
                        text: 'Watchlist 5',
                      ),
                    ],
                  ),
                ],
              ),
            )),
        body: TabBarView(
          controller: tabController,
          children: <Widget>[
            WatchList1(),
            WatchList2(),
            WatchList3(),
            WatchList4(),
            WatchList5(),
          ],
        ),
      ),
    );

  }
}


