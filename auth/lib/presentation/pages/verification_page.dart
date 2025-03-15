import '../../auth.dart';
import 'package:core/utils/buildcontext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VerificationPageParams {
  const VerificationPageParams({
    required this.email,
    required this.password,
    required this.username,
  });

  final String email;
  final String password;
  final String username;
}

class VerificationPage extends ConsumerStatefulWidget {
  const VerificationPage({super.key, required this.params});

  final VerificationPageParams params;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _VerificationPageState();
}

class _VerificationPageState extends ConsumerState<VerificationPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _textfieldVerificationController =
      TextEditingController();

  AutovalidateMode? _autovalidateMode;
  bool _isSubmitting = false;

  Future<void> _resendCode() async {
    try {
      setState(() {
        _isSubmitting = true;
      });

      await ref.read(authRepositoriesProvider).signUp(
            email: widget.params.email,
            password: widget.params.password,
            username: widget.params.username,
          );

      if (mounted) {
        context.showAlert('Code resent');
      }
    } catch (e) {
      context.showAlert(e.toString());
    }
    setState(() {
      _isSubmitting = false;
    });
  }

  Future<void> _verifyCode() async {
    try {
      setState(() {
        _isSubmitting = true;
      });

      await ref.read(authRepositoriesProvider).verifyCode(
            email: widget.params.email,
            code: _textfieldVerificationController.text,
          );
      if (mounted) {
        context.showAlert('Successfully signed up');
      }
    } catch (e) {
      setState(() {
        _isSubmitting = false;
      });
      context.showAlert(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        autovalidateMode: _autovalidateMode,
        child: Column(
          children: [
            Text(
                'Enter the verification code sent to your email address\n${widget.params.email}'),
            TextFormField(
              controller: _textfieldVerificationController,
              readOnly: _isSubmitting,
            ),
            AuthTextfieldWidget(
              textfieldNameController: _textfieldVerificationController,
              padding: EdgeInsets.symmetric(horizontal: 16),
              labelText: 'Verification code',
              hintText: 'xxxxxx',
              textInputType: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Missing the verification code';
                }

                return null;
              },
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  _resendCode();
                },
                child: Text('Resend code'),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {
                  _verifyCode();
                },
                child: Text('Submit'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
