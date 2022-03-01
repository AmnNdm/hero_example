class Images {
  static const cat = "assetimages/1.jpg";
  static const trump = "assetimages/2.jpg";
  static const adore = "assetimages/3.jpg";
  static const done = "assetimages/meme.jpg";
  static const sad = "assetimages/4.jpg";
}

class ImagesModel {
  ImagesModel({required String path, required String name}) {
    this.path = path;
    this.name = name;
  }

  late String path;
  late String name;
}

List<ImagesModel> imagesList = [
  ImagesModel(name: 'adore', path: Images.adore),
  ImagesModel(name: 'cat', path: Images.cat),
  ImagesModel(name: 'done', path: Images.done),
  ImagesModel(name: 'sad', path: Images.sad),
  ImagesModel(name: 'trump', path: Images.trump),
];
