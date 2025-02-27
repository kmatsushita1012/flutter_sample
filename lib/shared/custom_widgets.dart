import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TextEditingNotifier extends StateNotifier<String> {
  TextEditingNotifier([super.value = ''])
      : _controller = TextEditingController(text: value);

  final TextEditingController _controller;
  TextEditingController get controller => _controller;

  void update() {
    state = _controller.text;
  }

  void clear() {
    _controller.clear();
  }
}

enum TextEditingUpdateType { onSubmitted, onChanged, never }

class NotifierTextField extends TextField {
  NotifierTextField({
    required this.notifier,
    TextEditingUpdateType updateType = TextEditingUpdateType.onSubmitted,
    super.key,
    super.focusNode,
    super.decoration,
    super.keyboardType,
    super.textInputAction,
    super.textCapitalization,
    super.style,
    super.strutStyle,
    super.textAlign,
    super.textAlignVertical,
    super.textDirection,
    super.readOnly,
    super.showCursor,
    super.autofocus,
    super.obscureText,
    super.autocorrect,
    super.smartDashesType,
    super.smartQuotesType,
    super.enableSuggestions,
    super.maxLines,
    super.minLines,
    super.expands,
    super.maxLength,
    super.maxLengthEnforcement,
    super.onEditingComplete,
    void Function(String)? onSubmitted,
    super.inputFormatters,
    super.enabled,
    super.cursorWidth,
    super.cursorHeight,
    super.cursorRadius,
    super.cursorColor,
    super.selectionHeightStyle,
    super.selectionWidthStyle,
    super.keyboardAppearance,
    super.scrollPadding,
    super.dragStartBehavior,
    super.enableInteractiveSelection = true,
    super.selectionControls,
    super.onTap,
    void Function(String)? onChanged,
    super.onTapOutside,
    super.mouseCursor,
    super.buildCounter,
    super.scrollController,
    super.scrollPhysics,
    super.autofillHints = null,
    super.contentInsertionConfiguration,
    super.clipBehavior,
    super.restorationId,
    super.stylusHandwritingEnabled,
    super.enableIMEPersonalizedLearning,
  }) : super(
          controller: notifier.controller,
          onSubmitted: (text) {
            if (updateType == TextEditingUpdateType.onSubmitted) {
              notifier.update();
            }
            if (onSubmitted != null) {
              onSubmitted(text);
            }
          },
          onChanged: (text) {
            if (updateType == TextEditingUpdateType.onChanged) {
              notifier.update();
            }
            if (onChanged != null) {
              onChanged(text);
            }
          },
        );
  final TextEditingNotifier notifier;
}

class NotifierSubmitButton extends ElevatedButton {
  NotifierSubmitButton({
    required this.notifier,
    void Function()? onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.style,
    super.focusNode,
    super.autofocus = false,
    super.clipBehavior,
    super.statesController,
    super.child,
  }) : super(
          onPressed: () {
            notifier.update();
            if (onPressed != null) {
              onPressed();
            }
          },
        );

  final TextEditingNotifier notifier;
}
