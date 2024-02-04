import 'package:fefufit_uikit/fefufit_uikit.dart';
import 'package:fefufit_uikit/src/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FFTextField extends StatelessWidget {
  const FFTextField({
    super.key,
    required this.hint,
    this.isRequired = false,
    this.isObscure = false,
    required this.controller,
    this.formatters,
    this.validator,
    this.insideHint,
    this.autofillHints,
    this.textInputAction,
    this.padding = const EdgeInsets.symmetric(vertical: ffPaddingSmall),
  });

  final EdgeInsets padding;
  final String hint;
  final String? insideHint;
  final bool isRequired;
  final bool isObscure;
  final TextEditingController controller;
  final List<TextInputFormatter>? formatters;
  final String? Function(String?)? validator;
  final List<String>? autofillHints;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: ffPaddingSmall,
              horizontal: ffPaddingMedium,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(hint),
                const SizedBox(width: ffPaddingSmall),
                if (isRequired)
                  const Text(
                    '*',
                    style: TextStyle(color: Colors.red),
                  )
              ],
            ),
          ),
          TextFormField(
            controller: controller,
            obscureText: isObscure,
            validator: validator,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            inputFormatters: formatters,
            autofillHints: autofillHints,
            textInputAction: textInputAction,
            decoration: InputDecoration(
              hintText: insideHint,
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(
                vertical: ffPaddingSmall * 2.5,
                horizontal: ffPaddingSmall * 2,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(ffBorderRadiusMedium),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: context.ffTheme.color.mainLineColor),
                borderRadius: BorderRadius.circular(ffBorderRadiusMedium),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: context.ffTheme.color.mainControllColor, width: 2),
                borderRadius: BorderRadius.circular(ffBorderRadiusMedium),
              ),
            ),
          )
        ],
      ),
    );
  }

  // factory FFTextField.EmailOrPhone({
  //   required Key? key,
  //   required BuildContext context,
  //   required TextEditingController controller,
  //   bool isRequired = false,
  // }) {
  //   return FFTextField(
  //     key: key,
  //     hint: t.aut,
  //     insideHint: context.ffLanguage.emailOrPhoneHint,
  //     controller: controller,
  //     isRequired: isRequired,
  //     validator: (value) {
  //       if (value == null || value.isEmpty) {
  //         return context.ffLanguage.emailOrPhoneEmpty;
  //       }
  //       if (!value.isEmail && !value.isPhoneNumber) {
  //         return context.ffLanguage.emailOrPhoneInvalid;
  //       }
  //       return null;
  //     },
  //     autofillHints: [AutofillHints.email, AutofillHints.telephoneNumber],
  //     textInputAction: TextInputAction.next,
  //   );
  // }
}
