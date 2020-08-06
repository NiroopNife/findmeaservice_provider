//import 'package:flutter/material.dart';
//import 'package:multi_image_picker/multi_image_picker.dart';
//
//class ViewImages extends StatefulWidget {
//
//  final int _index;
//  final Asset _asset;
//
//  ViewImages(this._index, this._asset, {Key key}) : super(key : key);
//
//  @override
//  _ViewImagesState createState() => _ViewImagesState(this._index, this._asset);
//}
//
//class _ViewImagesState extends State<ViewImages> {
//
//  int _index = 0;
//  Asset _asset;
//  _ViewImagesState(this._index, this._asset);
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    _loadImage();
//  }
//
//  void _loadImage() async {
//    await this._asset.requestThumbnail(300, 300, quality: 50);
//    if(this.mounted){
//      setState(() {
//
//      });
//    }
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    if(null != this._asset.thumbData){
//      return Image.memory(this._asset.thumbData.buffer.asUint8List(), fit: BoxFit.cover, gaplessPlayback: true,);
//    }
//    return Text('${this._index}', style: Theme.of(context).textTheme.headline1,);
//  }
//}
