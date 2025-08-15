import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageBar extends StatelessWidget {
  const ImageBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Widget"),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          child:CachedNetworkImage(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtHkyzfCVf5kBuZDYsT7Ql-N_nBPrE7_PZlg&s',
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
          
          ),
          ),

         ),
        );


  }
}
