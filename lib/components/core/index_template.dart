//import '../../components/core/organisms/article_body.dart';
import '../../components/core/organisms/footer.dart';
//import '../../components/core/organisms/image_header.dart';
//import '../../components/core/organisms/side_info_body.dart';
import 'package:flutter/material.dart';

class IndexTemplate extends StatefulWidget {
  const IndexTemplate({Key? key, this.data}) : super(key: key);
  final Map? data;

  @override
  _IndexTemplateState createState() => _IndexTemplateState();
}

class _IndexTemplateState extends State<IndexTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data!['title']),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(
                top: 0,
                bottom: 30,
                right: 0,
                left: 0,
              ),
              child: FooterOrganisms(data: widget.data!['footer']),
            ),
          ],
        ),
      ),
    );
  }
}
