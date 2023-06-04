import 'package:flutter/material.dart';


class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  final double boxwidth;
  final double fontsize;
  final double hintfontsize;


  const TextFieldInput(
      {Key? key,
      required this.textEditingController,
      this.isPass = false,
      required this.hintText,
      required this.textInputType,
      this.boxwidth = 10,
      this.fontsize = 20,
      this.hintfontsize =20,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
    );

    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(border: InputBorder.none,
          hintText: hintText,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: boxwidth),
          prefixIcon: Icon(Icons.currency_rupee,size: 40,),

      hintStyle: TextStyle(fontSize: hintfontsize,),

      ),
      keyboardType: textInputType,
      obscureText: isPass,
      style: TextStyle(fontSize: fontsize),



    );
  }
}
class TextString extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  final double hi;
  final double fh;
  final double hs;


  const TextString(
      {Key? key,
        required this.textEditingController,
        this.isPass = false,
        required this.hintText,
        required this.textInputType,
        this.hi = 10,
        this.fh = 20,
        this.hs =20,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
    );

    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(border: InputBorder.none,
        hintText: hintText,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: hi),

        hintStyle: TextStyle(fontSize: hs,),

      ),
      keyboardType: textInputType,
      obscureText: isPass,
      style: TextStyle(fontSize: fh),



    );
  }
}

