import 'package:flutter/material.dart';

class BottomSheetWidget extends StatefulWidget {
  final Function() onPressed;
  final String avatarUrl;

  const BottomSheetWidget(
      {Key? key, required this.onPressed, required this.avatarUrl})
      : super(key: key);

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: widget.onPressed,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: CircleAvatar(
            radius: 16,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff08182A),
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ), //BoxDecoration
            )),
      ),
    );
  }
}
