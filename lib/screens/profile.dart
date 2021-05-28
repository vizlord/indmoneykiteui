import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:indmoneykiteui/kit/sizeconfig.dart';
import 'package:indmoneykiteui/provider/theme_provider.dart';
import 'package:indmoneykiteui/widget/change_theme_button_widget.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
              //backgroundColor: Color(0xFFEEEEEE),
              backgroundColor: Theme.of(context).iconTheme.color,
              title: Text(
                'Account',
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0,bottom: 5.0),
                        child: Text(
                          'Vishal Raghunath Gore',
                          style: TextStyle(
                            fontSize: 23,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
          body: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Container(
                  color: Theme.of(context).iconTheme.color,
                  height: SizeConfig.blockSizeVertical * 5,
                ),
                Positioned(
                  top: SizeConfig.blockSizeVertical * 2,
                  left: SizeConfig.blockSizeHorizontal * 4,
                  child: Container(
                    decoration: BoxDecoration(color: Theme.of(context).iconTheme.color, boxShadow: [
                      BoxShadow(
                        blurRadius: 13.0,
                        color: Colors.black.withOpacity(.03),
                        offset: Offset(1.0, 7.0),
                      )
                    ]),
                    width: SizeConfig.blockSizeHorizontal * 92,
                    height: SizeConfig.blockSizeVertical * 12,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      '8509V',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 21),
                                    ),
                                  ),
                                ),
                                // SizedBox(
                                //   height: SizeConfig.blockSizeVertical * 1,
                                // ),
                                Text(
                                  'vishalgore94@gmail.com',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal * 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                    child: Container(
                                  width: 60,
                                  height: 60,
                                  child: Center(
                                      child: Text(
                                    'CR',
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.blue[200]),
                                  )),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue[50]),
                                )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: SizeConfig.blockSizeVertical * 15,
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 14.0),
                          child: ListTile(
                            title: Text('Funds'),
                            trailing: Text(
                              '\u20B9',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.grey),
                            ),
                          )),
                      Divider(
                        height: 1,
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 14.0),
                          child: ListTile(
                              title: Text('Profile'),
                              trailing: Icon(
                                Icons.person_outline,
                                color: Colors.grey,
                                size: 25,
                              ))),
                      Divider(
                        height: 1,
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 14.0),
                          child: ListTile(
                              title: Text('Settings'),
                              trailing: Icon(
                                Feather.settings,
                                color: Colors.grey,
                                size: 25,
                              ))),
                      Divider(
                        height: 1,
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 14.0),
                          child: ListTile(
                              title: Text('Support'),
                              trailing: Icon(
                                Feather.info,
                                color: Colors.grey,
                                size: 25,
                              ))),
                      Divider(
                        height: 1,
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 14.0),
                          child: ListTile(
                              title: Text('Invite Friends'),
                              trailing: Icon(
                                MaterialIcons.person_add,
                                color: Colors.grey,
                                size: 25,
                              ))),
                      Divider(
                        height: 1,
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 14.0),
                          child: ListTile(
                              title: Text('User Manual'),
                              trailing: Icon(
                                AntDesign.questioncircleo,
                                color: Colors.grey,
                                size: 25,
                              ))),
                      Divider(
                        height: 1,
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 14.0),
                          child: ListTile(
                              title: Text('Logout'),
                              trailing: Icon(
                                Feather.log_out,
                                color: Colors.grey,
                                size: 25,
                              ))),
                      Divider(
                        height: 1,
                      ),
                      ChangeThemeButtonWidget(),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 14.0),
                          child: ListTile(
                            title: Text(
                              'Version 3.0.21 Build 109',
                              style: TextStyle(color: Colors.grey),
                            ),
                          )),
                      Divider(
                        height: 1,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
