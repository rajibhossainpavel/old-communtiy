import 'package:flutter/material.dart';
import 'package:oshiruco_app/application/oshiruco_colors.dart';
import 'package:oshiruco_app/application/oshiruco_text_styles.dart';
import 'package:oshiruco_app/model/enum/filter_type.dart';
import 'package:oshiruco_app/widget/component/dialog/dialog_sigle_selector.dart';

class FilterTile extends StatelessWidget {
  const FilterTile({
    required FilterType type,
    required Function(FilterType, bool) onChangedSelect,
    required Function(FilterType, String) onUpdate,
    required bool checked,
    required String selectedValue,
    bool needPoint = true,
    bool topBorder = false,
    bool disabled = false,
    Key? key,
  })  : _type = type,
        _onChangedSelect = onChangedSelect,
        _onUpdate = onUpdate,
        _checked = checked,
        _needPoint = needPoint,
        _topBorder = topBorder,
        _disabled = disabled,
        _selectedValue = selectedValue,
        super(key: key);

  final FilterType _type;

  final Function(FilterType, bool) _onChangedSelect;
  final Function(FilterType, String) _onUpdate;

  final bool _needPoint;
  final bool _topBorder;
  final bool _checked;
  final bool _disabled;
  final String _selectedValue;

  @override
  Widget build(BuildContext context) {
    final title = _type.getTitle();

    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: _topBorder
              ? const BorderSide(color: OshirucoColors.divider)
              : BorderSide.none,
          bottom: const BorderSide(color: OshirucoColors.divider),
        ),
      ),
      child: Row(
        children: [
          if (_needPoint)
            Checkbox(
              value: _checked,
              activeColor: OshirucoColors.green,
              onChanged: _disabled
                  ? null
                  : (value) => _onChangedSelect(_type, value ?? false),
            ),
          Expanded(
            child: InkWell(
              onTap: _disabled
                  ? null
                  : () async {
                      final res = await showSingleSelectorDialog(
                        context: context,
                        title: title,
                        items: _type.getSelection(),
                      );
                      if (res?.isNotEmpty ?? false) {
                        _onUpdate(_type, res!);
                      }
                    },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: _disabled
                        ? OshirucoTextStyles.smallGrey
                        : OshirucoTextStyles.small,
                  ),
                  Text(
                    _selectedValue.isEmpty ? '選択してください' : _selectedValue,
                    style: _selectedValue.isEmpty
                        ? OshirucoTextStyles.smallGrey
                        : OshirucoTextStyles.small,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
