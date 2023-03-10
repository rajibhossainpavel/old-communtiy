import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:oshiruco_app/widget/component/oshiruco_network_image.dart';

class ImageCarousel extends StatelessWidget {
  const ImageCarousel(this._images,
      {required ValueNotifier<int> page, Key? key})
      : _page = page,
        super(key: key);

  final List<String> _images;

  final ValueNotifier<int> _page;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width,
      child: PageView.builder(
        onPageChanged: (index) => _page.value = index,
        itemBuilder: (context, index) {
          final image = _images[index];
          return OshirucoNetworkImage(image, type: OshirucoImageType.user);
        },
        itemCount: _images.length,
      ),
    );
  }
}

class ImageCarouselPosition extends HookWidget {
  const ImageCarouselPosition(this._length, {required int position, Key? key})
      : _position = position,
        super(key: key);

  final int _position;

  final int _length;

  @override
  Widget build(BuildContext context) {
    final children = List.generate(
      _length,
      (index) => _dot(index == _position),
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: children,
    );
  }

  Widget _dot(bool selected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
            color: selected ? Colors.white : Colors.black,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.black,
            )),
      ),
    );
  }
}
