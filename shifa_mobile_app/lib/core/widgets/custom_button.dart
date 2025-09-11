import 'package:shifa_mobile_app/core/exports.dart';

class CustomButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final String? text;
  final double? fontSize;
  final Function()? onTap;
  final FontWeight? fontWeight;
  final Color? textColor;
  final double? size;

  const CustomButton({
    super.key,
    this.height = 48,
    this.width,
    this.size,
    this.color,
    this.onTap,
    this.text,
    this.fontSize,
    this.fontWeight,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height, 
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: color,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(5.0),
          splashColor: Colors.white.withOpacity(0.3),
          highlightColor: Colors.white.withOpacity(0.1),
          child: Center(
            child: AppText(
              text: "$text",
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
