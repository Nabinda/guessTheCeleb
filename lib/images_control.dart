import 'package:guesstheceleb/images.dart';

class ImageControl {
  int imageNum = 0;
  List<Image> _images = [
    Image("image.jpg", "KBC"),
    Image("image2.jpg", "A"),
    Image("image3.JPG", "X")
  ];
  int imagesLength;
  String getImages(int index) {
    imageNum++;
    return _images[index].images;
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
}
