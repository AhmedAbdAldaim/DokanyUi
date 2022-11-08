import 'package:dokany/config/app_route.dart';
import 'package:flutter/material.dart';
import 'package:dokany/core/app_mediaquery.dart';

class ProductsDeptScreen extends StatelessWidget {
  const ProductsDeptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('دكان'),
        ),
        backgroundColor: Colors.grey[200],
        body: Padding(
          padding: EdgeInsets.all(context.width * 0.03),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: context.width * 0.02,
                  crossAxisSpacing: context.width * 0.02,
                  childAspectRatio: context.width / (context.height / 1.6)),
              itemCount: 10,
              itemBuilder: (ctx, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.product_screen);
                  },
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            flex: 6,
                            child: Image.asset('assets/images/back.jpg')),
                        Expanded(
                          flex: 1,
                          child: Text('عروض دكاني الحصرية',
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: context.width * 0.03)),
                        ),
                        Expanded(
                          flex: 3,
                          child: Center(
                            child: Text(
                                '  الفواكه والخضروات والعروض دكاني الحصرية',
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.black,
                                    fontSize: context.width * 0.03)),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
