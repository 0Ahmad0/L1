import 'package:flutter/material.dart';
import '../const/const.dart';

class BuildTextFiled extends StatefulWidget {
   BuildTextFiled({
    Key key,
    @required this.size, this.text, this.icon, this.isBorder = true,
  }) : super(key: key);

  final Size size;
  final String text;
  final IconData icon;
   bool isBorder;

  @override
  _BuildTextFiledState createState() => _BuildTextFiledState();
}

class _BuildTextFiledState extends State<BuildTextFiled> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: widget.size.width *0.05
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
          color: widget.isBorder?KTextColor:KColor1
          ),
        ),
      ),
      child: TextFormField(
        textInputAction: TextInputAction.next,
        onTap: (){
          setState(() {
            widget.isBorder = !widget.isBorder;
          });
        },
        style: TextStyle(
            color: widget.isBorder?KTextColor:KColor1
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.text,
          hintStyle: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: widget.size.width * 0.045,
              color: KTextColor,
              fontWeight: FontWeight.w300,
              letterSpacing: 0.8),
          suffixIcon: Icon(widget.icon,color: widget.isBorder?KTextColor:KColor1,),
        ),
      ),
    );
  }
}
