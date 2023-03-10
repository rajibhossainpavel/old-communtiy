import 'dart:core';

import 'package:flutter/material.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/extension/int_extension.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';
import 'package:oshiruco_app/model/user_information/user_information.dart';
import 'package:oshiruco_app/router.dart';
import 'package:oshiruco_app/widget/component/friend/friend_media_component.dart';

class FriendTile extends StatelessWidget {
  const FriendTile({required UserInformation user, Key? key})
      : _user = user,
        super(key: key);

  final UserInformation _user;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => routemaster.push('/friends/detail/${_user.uuid}'),
      child: Container(
        width: width,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: FriendMediaComponent.fromUserInformation(
            user: _user,
            key: ValueKey(_user.uuid),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 20,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                _user.nickname,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                                softWrap: false,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'おしるこ年齢 (${_user.age.toOshirucoAge()}歳)',
                                    style: OshirucoTextStyles.mediumWhite,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    _user.gender,
                                    style: OshirucoTextStyles.mediumWhite,
                                  ),
                                  const SizedBox(width: 4),
                                  Flexible(
                                    child: Text(
                                      _user.livePlace,
                                      style: OshirucoTextStyles.mediumWhite,
                                      softWrap: false,
                                      overflow: TextOverflow.fade,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Assets.icons.likeWhite.image(),
                            // 一覧の挨拶ボタンは何もしない
                            // IconButton(
                            //   icon: Assets.icons.likeWhite.image(),
                            //   onPressed: () => print(''),
                            // ),
                            Text(
                              _user.liked.toString(),
                              style: OshirucoTextStyles.largeWhite,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
