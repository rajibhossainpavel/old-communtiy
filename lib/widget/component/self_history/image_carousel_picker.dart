import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/client/image_picker/image_picker.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/self_history/photo/photo.dart';
import 'package:oshiruco_app/widget/component/oshiruco_network_image.dart';

class ImageCarouselPicker extends StatelessWidget {
  const ImageCarouselPicker({
    required bool isSelectable,
    required Function(int) onPageChanged,
    required List<Photo> photos,
    required Function(int, String) onImageSelected,
    Key? key,
  })  : _isSelectable = isSelectable,
        _photos = photos,
        _onPageChanged = onPageChanged,
        _onImageSelected = onImageSelected,
        super(key: key);

  final bool _isSelectable;

  final List<Photo> _photos;

  final Function(int) _onPageChanged;

  final Function(int, String) _onImageSelected;

  Future<String> _onPressedChoosePhoto(BuildContext context) async {
    final result = await showModalActionSheet<ImageSource>(
      context: context,
      title: '画像選択',
      actions: [
        const SheetAction(label: 'カメラ', key: ImageSource.camera),
        const SheetAction(label: 'ギャラリー', key: ImageSource.gallery)
      ],
    );
    if (result == null) {
      return '';
    }
    final pickedFile =
        await pickImageOrRequestPermission(context, result, lowQuality: false);
    final path = pickedFile?.path ?? '';
    return path;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: width * 0.7,
      width: width,
      child: PageView.builder(
        onPageChanged: _onPageChanged,
        itemBuilder: (context, index) {
          return index != _photos.length
              ? _imageItem(
                  context,
                  index: index,
                  photoPath: _photos[index].photoPath,
                )
              : _newImageItem(
                  context,
                  index: index,
                );
        },
        itemCount: _photos.length + (_isSelectable ? 1 : 0),
      ),
    );
  }

  Widget _imageItem(
    BuildContext context, {
    required int index,
    required String photoPath,
  }) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        OshirucoNetworkImage(
          photoPath,
          type: OshirucoImageType.selfHistory,
          width: width,
          height: width * 0.7,
          fit: BoxFit.cover,
        ),
        if (_isSelectable)
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 64,
              vertical: 32,
            ),
            child: SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () async {
                  final path = await _onPressedChoosePhoto(context);
                  // WIP implement here.
                  await _onImageSelected(index, path);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Assets.icons.member.image(
                      color: OshirucoColors.darkGreen,
                      height: 24,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      '写真を撮り直す',
                      style: OshirucoTextStyles.smallDarkGreen,
                    ),
                  ],
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  side: const BorderSide(
                    color: OshirucoColors.green,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _newImageItem(
    BuildContext context, {
    required int index,
  }) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Assets.images.emptyOshiruco.image(
          width: width,
          height: width * 0.7,
          fit: BoxFit.cover,
        ),
        if (_isSelectable)
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 64,
              vertical: 32,
            ),
            child: SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () async {
                  final path = await _onPressedChoosePhoto(context);
                  // WIP implement here.
                  await _onImageSelected(index, path);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Assets.icons.member.image(
                      color: OshirucoColors.darkGreen,
                      height: 24,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      '写真を選ぶ',
                      style: OshirucoTextStyles.smallDarkGreen,
                    ),
                  ],
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  side: const BorderSide(
                    color: OshirucoColors.green,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
