import 'package:flutter/material.dart';
import 'package:futurehire/data.dart';


class DetailPage extends StatefulWidget {
  final Details item;

  const DetailPage({required this.item});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hello!"),
      ),
    );
  }
}
