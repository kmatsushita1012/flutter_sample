import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TextEditingNotifier extends StateNotifier<String> {
  TextEditingNotifier(super.value)
      : _controller = TextEditingController(text: value);

  final TextEditingController _controller;
  TextEditingController get controller => _controller;

  void submit() {
    state = _controller.text;
  }
}

class NotifierTextField extends TextField {
  NotifierTextField({
    required this.notifier,
    bool updateNotifierOnSubmit = true,
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
    super.onChanged,
    super.onEditingComplete,
    ValueChanged<String>? onSubmitted,
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
            if (updateNotifierOnSubmit) {
              notifier.submit();
            }
            if (onSubmitted != null) {
              onSubmitted(text);
            }
          },
        );
  final TextEditingNotifier notifier;
}

class NotifierSubmitButton extends ElevatedButton {
  NotifierSubmitButton({
    required this.notifier,
    super.child,
    super.key,
    void Function()? onPressed,
    super.onLongPress,
    super.style,
    super.focusNode,
    super.autofocus = false,
    super.clipBehavior = Clip.none,
  }) : super(
          onPressed: () {
            notifier.submit();
            if (onPressed != null) {
              onPressed();
            }
          },
        );

  final TextEditingNotifier notifier;
}
