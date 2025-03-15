import '../../data/repositories/auth_repositories_impl.dart';
import '../widgets/auth_textfield_widget.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final TextEditingController _textfieldEmailController =
      TextEditingController();
  final TextEditingController _textfieldPasswordController =
      TextEditingController();

  bool _showPassword = true;
  bool? _enableRemember = true;
  bool _isSubmitting = false;

  Future<void> _login() async {
    try {
      setState(() {
        _isSubmitting = true;
      });

      await ref.read(authRepositoriesProvider).logIn(
            email: _textfieldEmailController.text,
            password: _textfieldPasswordController.text,
          );
      if (mounted) {
        context.go(HOME_PAGE_ROUTE);
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Log in✨',
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
              icon: Icon(
                _showPassword ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: () {
                setState(() => _showPassword = !_showPassword);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
          ),
          Row(
            children: [
              const SizedBox(width: 10),
              Checkbox(
                tristate: false,
                value: _enableRemember,
                onChanged: (bool? newValue) {
                  setState(() {
                    _enableRemember = newValue;
                  });
                },
              ),
              const Text('Remember me for 7 days'),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: _isSubmitting ? null : () => _login(),
                child: Text('Log In'),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Dont have an account?'),
          TextButton(
            onPressed: () => context.go(SIGN_UP_PAGE_ROUTE),
            child: Text('Sign up'),
          )
        ],
      ),
    );
  }
}
