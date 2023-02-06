import 'package:flutter/material.dart';
import 'package:flutter_toggle_button/state_value.dart';

class Button extends StatelessWidget {
  final double? width, height;
  final EdgeInsetsGeometry? margin, padding;
  final String text;
  final double? textSize;
  final FontWeight? textStyle;
  final Color? primary;
  final Color? secondary;
  final StateValue<Color>? colorState;
  final StateValue<Color>? backgroundState;
  final double borderRadius;
  final bool enabled;
  final Function()? onClick;
  final IconData? icon;
  final double iconSize;
  final EdgeInsetsGeometry? iconPadding;

  const Button({
    super.key,
    required this.text,
    this.textSize = 16,
    this.textStyle,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.primary,
    this.secondary,
    this.colorState,
    this.backgroundState,
    this.borderRadius = 8,
    this.enabled = true,
    this.onClick,
    this.icon,
    this.iconSize = 18,
    this.iconPadding,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = (colorState ??
            StateValue(
              activeValue: secondary ?? Colors.white,
              inactiveValue: Colors.grey.shade400,
            ))
        .detect(enabled);

    final background = (backgroundState ??
            StateValue(
              activeValue: primary ?? theme.primaryColor,
              inactiveValue: Colors.grey.shade200,
            ))
        .detect(enabled);

    return Material(
      color: background,
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(borderRadius),
      child: InkWell(
        onTap: enabled ? onClick : null,
        child: AbsorbPointer(
          child: Container(
            margin: margin,
            width: width,
            height: padding == null ? height : null,
            padding: height == null
                ? padding ??
                    const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    )
                : null,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: color,
                    fontSize: textSize ?? 14,
                    fontWeight: textStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
