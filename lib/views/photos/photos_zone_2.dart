import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:uriel_dames/views/photos/photo_details_page.dart';
import 'package:uriel_dames/providers/photos_list.dart';

import 'package:delayed_display/delayed_display.dart';
class PhotosZone2 extends StatefulWidget {
  PhotosZone2({this.deviceHeight, this.deviceWidth, this.pagePadding});
  final double? deviceHeight;
  final double? deviceWidth;
  final double? pagePadding;
  @override
  _PhotosZone2State createState() => _PhotosZone2State();
}

class _PhotosZone2State extends State<PhotosZone2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white24,
        body: StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 12,
            itemCount: photosList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => PhotoDetailsPage(
                        imagePath: photosList[index],
                        deviceHeight: widget.deviceHeight,
                        deviceWidth: widget.deviceWidth,
                        pagePadding: widget.pagePadding,
                      ),
                    ),
                  );
                },
                onHover: (value) {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 4,
                    ),
                  ),
                  padding: EdgeInsets.all(4),
                  child: 
                  
                  DelayedDisplay(
          delay: Duration(milliseconds: 200),
           child:      
            Image.asset(
photosList[index],
 fit: BoxFit.cover,
                  ),
                  ),
          //       FadeInImage.assetNetwork(
          //   placeholder: 'assets/images/loading.gif',
          //   image: 'https://cdn.pixabay.com/photo/2020/02/04/16/00/cheetah-4818603_960_720.jpg',
          // ),
                  // FadeInImage.assetNetwork(
                  //   // placeholder: kTransparentImage,
                  //   image: photosList[index],
                  //   fit: BoxFit.cover,
                  // ),
                ),
              );
            },
            staggeredTileBuilder: (index) {
              return StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
            }),
      ),
    );
  }
}
