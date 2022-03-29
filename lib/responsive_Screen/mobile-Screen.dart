import 'package:flutter/material.dart';
import 'package:responsive_dedign/Home_Page.dart';
class MobaileScreen extends StatefulWidget {
  const MobaileScreen({Key? key}) : super(key: key);

  @override
  State<MobaileScreen> createState() => _MobaileScreenState();
}

class _MobaileScreenState extends State<MobaileScreen> {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
