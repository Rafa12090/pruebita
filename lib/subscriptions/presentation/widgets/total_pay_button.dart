import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class TotalPayButton extends StatelessWidget {
  const TotalPayButton({super.key});


  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      height: 100,
      padding: const EdgeInsets.symmetric( horizontal: 15 ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Total', style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold ) ),
              Text('', style: TextStyle( fontSize: 20 ))
            ],
          ),

          _BtnPay(  ),

        ],
      ),
    );
  }
}



class _BtnPay extends StatelessWidget {

  const _BtnPay(  );

  @override
  Widget build(BuildContext context) {
    return buildBotonTarjeta(context);
  }


  Widget buildBotonTarjeta(BuildContext context) {
    return MaterialButton(
      height: 45,
      minWidth: 170,
      shape: const StadiumBorder(),
      elevation: 0,
      color: Colors.black,
      child: const Row(
        children: [
          Icon(  FontAwesomeIcons.solidCreditCard, color: Colors.white ),
          Text('  Pagar', style: TextStyle( color: Colors.white, fontSize: 22 ) ),
        ],
      ),
      onPressed: () async {

      }
    );
  }

  
  Widget buildAppleAndGooglePay(BuildContext context) {
    return MaterialButton(
      height: 45,
      minWidth: 150,
      shape: const StadiumBorder(),
      elevation: 0,
      color: Colors.black,
      child: Row(
        children: [
          Icon( 
            Platform.isAndroid
            ? FontAwesomeIcons.google
            : FontAwesomeIcons.apple, 
            color: Colors.white 
          ),
          const Text(' Pay', style: TextStyle( color: Colors.white, fontSize: 22 ) ),
        ],
      ),
      onPressed: () async {
      }
    );
  }
}