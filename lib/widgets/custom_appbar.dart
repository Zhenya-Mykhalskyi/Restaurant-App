import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(this.leftIcon, this.rightIcon, {this.leftCallback});

  final IconData? leftIcon;
  final IconData? rightIcon;
  final Function? leftCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + 10,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: leftCallback != null ? () => leftCallback!() : null,
            child: _buildIcon(icon: leftIcon),
          ),
          _buildIcon(icon: rightIcon)
        ],
      ),
    );
  }
}

class _buildIcon extends StatelessWidget {
  const _buildIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Icon(icon),
    );
  }
}
