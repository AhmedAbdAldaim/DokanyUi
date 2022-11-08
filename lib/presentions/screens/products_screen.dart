import 'dart:io';

import 'package:dokany/core/widget_components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dokany/core/app_mediaquery.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});
  List<String> list = [
    'الكل',
    'خضروات',
    'فواكه',
    ' بهارات و توابل',
    'فواكه مجمده',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: list.length,
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(context.height * 0.12),
                  child: AppBar(
                    title: FittedBox(
                        child: Text(
                      'فواكه وخضروات',
                      style: TextStyle(
                          color: Colors.white, fontSize: context.width * 0.03),
                    )),
                    bottom: TabBar(
                        onTap: (va) {
                          print(va);
                        },
                        indicatorColor: Colors.amber,
                        isScrollable: true,
                        tabs: list.map((e) {
                          return Tab(
                            child: FittedBox(
                                child: Text(
                              e,
                              style: TextStyle(
                                  color: Colors.grey[100],
                                  fontSize: context.width * 0.03),
                            )),
                          );
                        }).toList()),
                  ),
                ),
                body: ListView.separated(
                    itemBuilder: (ctx, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: context.height * 0.1,
                          child: Row(
                            children: [
                              Card(
                                elevation: 2,
                                child: Image.asset(
                                  'assets/images/back.jpg',
                                  width: context.width * 0.3,
                                  fit: BoxFit.cover,
                                  height: context.height * 0.1,
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    height: context.height * 0.01,
                                  ),
                                  defaultText(
                                      title: 'طماطم',
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontsize: context.width * 0.02),
                                  Spacer(),
                                  defaultText(
                                      title: '1 كجم',
                                      color: Colors.red.shade900,
                                      fontsize: context.width * 0.03),
                                  SizedBox(
                                    height: context.height * 0.01,
                                  ),
                                  defaultText(
                                      title: '3000 جنيه',
                                      color: Colors.red.shade900,
                                      fontWeight: FontWeight.bold,
                                      fontsize: context.width * 0.03),
                                ],
                              ),
                              Spacer(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    size: context.width * 0.06,
                                    color: Colors.red.shade900,
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: CircleAvatar(
                                              radius: context.width * 0.03,
                                              child: Icon(
                                                Icons.add,
                                              ))),
                                      Text('0'),
                                      IconButton(
                                          onPressed: () {},
                                          icon: CircleAvatar(
                                              radius: context.width * 0.03,
                                              child: Icon(Icons.remove))),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context,index)=> SizedBox(height: 10,),
                    itemCount: 20))));
  }
}
