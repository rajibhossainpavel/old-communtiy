import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';

class CarouselNavigator extends StatelessWidget {
  const CarouselNavigator({
    required bool isEditable,
    required int itemCount,
    required int selectedIndex,
    required bool isDeleteEnable,
    required VoidCallback? onTapRemoveImage,
    Key? key,
  })  : _isEditable = isEditable,
        _itemCount = itemCount,
        _selectedIndex = selectedIndex,
        _isDeleteEnable = isDeleteEnable,
        _onTapRemoveImage = onTapRemoveImage,
        super(key: key);

  final bool _isEditable;

  final int _itemCount;

  final int _selectedIndex;

  final bool _isDeleteEnable;

  final VoidCallback? _onTapRemoveImage;

  @override
  Widget build(BuildContext context) {
    final children = List.generate(
      _itemCount,
      (index) => _dot(index == _selectedIndex),
    );
    return SizedBox(
      height: 20,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children,
          ),
          if (_isDeleteEnable && _isEditable)
            GestureDetector(
              onTap: _onTapRemoveImage,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Assets.icons.deleteEnable.image(height: 20),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      '削除',
                      style: OshirucoTextStyles.smallDarkGreen,
                    ),
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }

  Widget _dot(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
          color: isSelected ? OshirucoColors.green : OshirucoColors.grey,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
