import '../../data/repositories/auth_repositories_impl.dart';
import 'verification_page.dart';
import '../widgets/auth_textfield_widget.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  final TextEditingController _textfieldNameController =
      TextEditingController();
  final TextEditingController _textfieldEmailController =
      TextEditingController();
  final TextEditingController _textfieldPasswordController =
      TextEditingController();

  bool _showPassword = true;
  bool _isSubmitting = false;

  Future<void> _createAccount() async {
    try {
      setState(() {
        _isSubmitting = true;
      });
      await ref.read(authRepositoriesProvider).signUp(
            email: _textfieldEmailController.text,
            password: _textfieldPasswordController.text,
            username: _textfieldNameController.text,
          );
      if (mounted) {
        context.go(
          VERIFICATION_PAGE_ROUTE,
          extra: VerificationPageParams(
            email: _textfieldEmailController.text,
            password: _textfieldPasswordController.text,
            username: _textfieldNameController.text,
          ),
        );
      }
    } catch (e) {
      context.showAlert(e.toString());
    }
    setState(() {
      _isSubmitting = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.go(LOGIN_SCREEN_ROUTE),
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Create an account✨',
              style: ThemeTextGlobal.display2(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Welcome! Please enter your details',
              style: ThemeTextGlobal.title(context),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
          AuthTextfieldWidget(
            textfieldNameController: _textfieldNameController,
            padding: EdgeInsets.symmetric(horizontal: 16),
            labelText: 'Enter your name',
            hintText: '@username',
            textInputType: TextInputType.name,
            prefixIcon: Icon(Icons.person),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
          AuthTextfieldWidget(
            textfieldNameController: _textfieldEmailController,
            padding: EdgeInsets.symmetric(horizontal: 16),
            labelText: 'Enter your email',
            hintText: 'example@mail.com',
            textInputType: TextInputType.emailAddress,
            prefixIcon: Icon(Icons.mail),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
          AuthTextfieldWidget(
            textfieldNameController: _textfieldPasswordController,
            padding: EdgeInsets.symmetric(horizontal: 16),
            labelText: 'Enter your password',
            hintText: '*123#',
            textInputType: TextInputType.visiblePassword,
            obscureText: _showPassword,
            prefixIcon: Icon(Icons.lock),
            suffixIcon: IconButton(
              icon:
                  Icon(_showPassword ? Icons.visibility_off : Icons.visibility),
              onPressed: () {
                setState(() => _showPassword = !_showPassword);
              },
            ),
            validator: (value) => value == null || value.isEmpty
                ? 'Please enter your password'
                : value.length < 6
                    ? 'Password must be at least 6 characters'
                    : null,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: _isSubmitting
                    ? null
                    : () {
                        _createAccount();
                      },
                child: Text('Sign Up'),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Already have an account?'),
          TextButton(
            onPressed: () => context.go(LOGIN_SCREEN_ROUTE),
            child: Text('Log in'),
          )
        ],
      ),
    );
  }
}
