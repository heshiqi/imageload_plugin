import 'package:imageload/imageload.dart';
import 'package:imageload/src/controller/base_controller.dart';

class NetImageViewController extends BaseController{

  NetImageViewController(String url) : super(url);

  @override
  Future<int> createNativeTextureId(String url, int oldTextureId, double width, double height, double aspectRatio, int scaleType) {
    return Imageload.createNetImageTexture(url, oldTextureId,width, height, aspectRatio, scaleType);
  }
}
