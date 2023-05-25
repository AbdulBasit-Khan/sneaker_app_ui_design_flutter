import 'package:flutter/material.dart';
import 'package:flutter_nike_sneaker_app_ui/Models/Sneaker.dart';

import '../Screens/SneakerScreen.dart';

class SneakerContainer extends StatefulWidget {
 final Sneaker sneaker;
  const SneakerContainer({Key? key,required this.sneaker}) : super(key: key);

  @override
  State<SneakerContainer> createState() => _SneakerContainerState();
}

class _SneakerContainerState extends State<SneakerContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>SneakerScreen(
          sneaker:widget.sneaker
        )));
      },
      child: Container(
      height:250,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical:20),
      margin: EdgeInsets.only(bottom:10),
      decoration: BoxDecoration(
        color: Color(0xfff6f6f6),
        borderRadius: BorderRadius.circular(20)
 
      ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment:CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(),
            Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(widget.sneaker.image,
                    width: MediaQuery.of(context).size.width-150,
                    height: 150,

                  ),

                Text(widget.sneaker.name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,

                ),
                ),
                Text(widget.sneaker.price,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,

                  ),
                )


              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right:8.0),
              child: Icon(Icons.star_border),
            )
          ],
        ),
      ),
    );
  }
}
