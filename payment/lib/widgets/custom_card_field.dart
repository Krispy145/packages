import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:theme/extensions/build_context.dart';
import 'package:utilities/sizes/spacers.dart';

class CustomCardField extends StatelessWidget {
  final String cardNumberKey;
  final String cardHolderNameKey;
  final String cardExpiryKey;
  final String cardCvcKey;

  const CustomCardField({
    super.key,
    required this.cardNumberKey,
    required this.cardHolderNameKey,
    required this.cardExpiryKey,
    required this.cardCvcKey,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Payment Method",
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Sizes.s.spacer(),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: context.colorScheme.surfaceContainerHighest.withValues(alpha: 178),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.credit_card, color: context.colorScheme.primary),
                  Sizes.s.spacer(axis: Axis.horizontal),
                  Text(
                    "Credit Card",
                    style: context.textTheme.titleMedium,
                  ),
                ],
              ),
              const Divider(height: 32),

              // Card Number
              ReactiveTextField<String>(
                formControlName: cardNumberKey,
                decoration: InputDecoration(
                  labelText: "Card Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  prefixIcon: const Icon(Icons.credit_card),
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const FaIcon(FontAwesomeIcons.ccVisa, size: 20),
                      Sizes.xs.spacer(axis: Axis.horizontal),
                      const FaIcon(FontAwesomeIcons.ccMastercard, size: 20),
                      Sizes.xs.spacer(axis: Axis.horizontal),
                      const FaIcon(FontAwesomeIcons.ccAmex, size: 20),
                      Sizes.xs.spacer(axis: Axis.horizontal),
                    ],
                  ),
                ),
                validationMessages: {
                  "required": (error) => "Card number is required",
                  "pattern": (error) => "Please enter a valid 16-digit card number",
                },
                keyboardType: TextInputType.number,
              ),
              Sizes.m.spacer(),

              // Card Holder
              ReactiveTextField<String>(
                formControlName: cardHolderNameKey,
                decoration: InputDecoration(
                  labelText: "Card Holder Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  prefixIcon: const Icon(Icons.person_outline),
                ),
                validationMessages: {
                  "required": (error) => "Card holder name is required",
                },
              ),
              Sizes.m.spacer(),

              // Expiry and CVC
              Row(
                children: [
                  Expanded(
                    child: ReactiveTextField<String>(
                      formControlName: cardExpiryKey,
                      decoration: InputDecoration(
                        labelText: "Expiry (MM/YY)",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      validationMessages: {
                        "required": (error) => "Expiry date is required",
                        "pattern": (error) => "Use format MM/YY",
                      },
                    ),
                  ),
                  Sizes.m.spacer(axis: Axis.horizontal),
                  Expanded(
                    child: ReactiveTextField<String>(
                      formControlName: cardCvcKey,
                      decoration: InputDecoration(
                        labelText: "CVC",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        prefixIcon: const Icon(Icons.lock_outline),
                      ),
                      validationMessages: {
                        "required": (error) => "CVC is required",
                        "pattern": (error) => "Enter a valid CVC",
                      },
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Sizes.m.spacer(),
      ],
    );
  }
}
