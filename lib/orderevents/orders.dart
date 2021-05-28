
import 'package:flutter/material.dart';
import 'package:indmoneykiteui/kit/sizeconfig.dart';
import 'package:indmoneykiteui/orderevents/pending.dart';
import 'package:indmoneykiteui/provider/theme_provider.dart';
import 'package:provider/provider.dart';

import 'executed.dart';
import 'gtt.dart';


class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> with TickerProviderStateMixin{
  TabController tabController;
  TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            centerTitle: false,
            elevation: 0,
            backgroundColor: Theme.of(context).iconTheme.color,
            title: Text(
              'Orders',
              style: TextStyle(
                  fontSize: 27,
                  color: Theme.of(context).backgroundColor ),
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
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
                    labelColor: Colors.blue,
                    unselectedLabelColor: Theme.of(context).unselectedWidgetColor ,
                    labelPadding: EdgeInsets.symmetric(horizontal: 40),
                    tabs: <Widget>[
                      Tab(
                        text: 'Pending',
                      ),
                      Tab(
                        text: 'Executed',
                      ),
                      Tab(
                        text: 'GTT',
                      ),
                    ],
                  ),


                ],
              ),
            )),
        body: TabBarView(

          controller: tabController,
          children: <Widget>[
            Pending(),
            Executed(),
            GTT()
          ],
        ),
      ),
    );

  }
}
