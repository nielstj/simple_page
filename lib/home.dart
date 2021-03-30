import 'package:flutter/material.dart';
import 'package:tinycolor/tinycolor.dart';
import 'package:loop_page_view/loop_page_view.dart';
import 'package:simple_page/models/page_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final LoopPageController controller = LoopPageController();

  Widget _pageBuilder(BuildContext context, int index) {
    final pageData = pages.elementAt(index);
    final bgColor = pageData.color;
    final textColor = bgColor.isDark ? Colors.white : Colors.black;
    final title = pageData.title;

    return GestureDetector(
      onTap: () => controller.animateJumpToPage(
        index + 1,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      ),
      child: Container(
        color: bgColor,
        child: Center(
          child: Text(title,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .apply(color: textColor)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: LoopPageView.builder(
            controller: controller,
            itemCount: pages.length,
            itemBuilder: _pageBuilder,
          ),
        ),
      ),
    );
  }
}
