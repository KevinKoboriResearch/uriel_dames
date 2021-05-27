import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:uriel_dames/views/photos/photo_details_page.dart';
class PhotosZone2 extends StatefulWidget {
  PhotosZone2({this.deviceHeight, this.deviceWidth, this.pagePadding});
  final double? deviceHeight;
  final double? deviceWidth;
  final double? pagePadding;
  @override
  _PhotosZone2State createState() => _PhotosZone2State();
}

class _PhotosZone2State extends State<PhotosZone2> {
  List<String> imagesList = [
    'assets/images/photos/1.jpg',
    'assets/images/photos/2.jpg',
    'assets/images/photos/3.jpg',
    'assets/images/photos/4.jpg',
    'assets/images/photos/5.jpg',
    'assets/images/photos/6.jpg',
    'assets/images/photos/7.jpg',
    'assets/images/photos/8.jpg',
    'assets/images/photos/9.jpg',
    'assets/images/photos/10.jpg',
    'assets/images/photos/1.jpg',
    'assets/images/photos/12.jpg',
    'assets/images/photos/13.jpg',
    'assets/images/photos/14.jpg',
    'assets/images/photos/15.jpg',
    'assets/images/photos/16.jpg',
    'assets/images/photos/17.jpg',
    'assets/images/photos/18.jpg',
    'assets/images/photos/19.jpg',
    'assets/images/photos/20.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white24,
        body: StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 12,
            itemCount: imagesList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => PhotoDetailsPage(
                        imagePath: imagesList[index],
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
                  child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: imagesList[index],
                      fit: BoxFit.cover,
                 
                  ),
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
