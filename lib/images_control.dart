import 'package:guesstheceleb/images.dart';

class ImageControl {
  int imageNum = 0;
  List<Image> _images = [
    Image("image1.jpg", "THOR"),
    Image("image2.jpg", "LOKI"),
    Image("image3.jpg", "SCARLETT WITCH"),
    Image("image4.jpg", "IRON MAN"),
    Image("image5.jpg", "BLACK WIDOW"),
  ];
  int imagesLength;
  String getImages(int index) {
    imageNum++;
    return _images[index].images;
  }

  int currentImage() {
    return imageNum;
  }

  String getResult(int index) {
    return _images[index].answer;
  }

  int imageNumber() {
    return _images.length;
  }

  bool isFinished() {
    if (imageNum < _images.length)
      return false;
    else
      return true;
  }

  void resetNumber() {
    imageNum = 0;
  }
}
