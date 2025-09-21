import 'package:flutter/material.dart';
import 'package:task/config/constants.dart';
import 'package:task/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String selectedLanguage = 'English (US)';

  final List<Map<String, String>> languages = [
    {'name': 'English', 'code': 'en'},
    {'name': 'Español (Spanish)', 'code': 'es'},
    {'name': 'Français (French)', 'code': 'fr'},
    {'name': 'Deutsch (German)', 'code': 'de'},
    {'name': 'Italiano (Italian)', 'code': 'it'},
    {'name': 'Português (Portuguese)', 'code': 'pt'},
    {'name': 'Русский (Russian)', 'code': 'ru'},
    {'name': '中文 (Chinese Simplified)', 'code': 'zh'},
    {'name': '繁體中文 (Chinese Traditional)', 'code': 'zh-TW'},
    {'name': '日本語 (Japanese)', 'code': 'ja'},
    {'name': '한국어 (Korean)', 'code': 'ko'},
    {'name': 'العربية (Arabic)', 'code': 'ar'},
    {'name': 'हिन्दी (Hindi)', 'code': 'hi'},
    {'name': 'বাংলা (Bengali)', 'code': 'bn'},
    {'name': 'Türkçe (Turkish)', 'code': 'tr'},
    {'name': 'ภาษาไทย (Thai)', 'code': 'th'},
    {'name': 'Tiếng Việt (Vietnamese)', 'code': 'vi'},
    {'name': 'Polski (Polish)', 'code': 'pl'},
    {'name': 'Nederlands (Dutch)', 'code': 'nl'},
    {'name': 'Ελληνικά (Greek)', 'code': 'el'},
    {'name': 'Svenska (Swedish)', 'code': 'sv'},
    {'name': 'Norsk (Norwegian)', 'code': 'no'},
    {'name': 'Dansk (Danish)', 'code': 'da'},
    {'name': 'Suomi (Finnish)', 'code': 'fi'},
    {'name': 'Magyar (Hungarian)', 'code': 'hu'},
    {'name': 'Čeština (Czech)', 'code': 'cs'},
    {'name': 'Slovenčina (Slovak)', 'code': 'sk'},
    {'name': 'Română (Romanian)', 'code': 'ro'},
    {'name': 'Українська (Ukrainian)', 'code': 'uk'},
  ];

  void _showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setModalState) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 12),
                    child: Container(
                      width: 52,
                      height: 4,
                      decoration: BoxDecoration(
                        color: kLightPurple,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                  // Header
                  Padding(
                    padding: const EdgeInsets.only(top: 23, right: 24, left: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Select your preferred language',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: kDeepPurple,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(
                            Icons.close,
                            color: kDeepPurple,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 23,),

                  const Divider(height: 1, color: kLightPurple),

                  Expanded(
                    child: ListView.builder(
                      itemCount: languages.length,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      itemBuilder: (context, index) {
                        final language = languages[index];
                        final isSelected = selectedLanguage.contains(language['name']!);

                        return ListTile(
                          title: Text(
                            language['name']!,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: kDeepPurple,
                            ),
                          ),
                          trailing: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: kDeepPurple,
                                width: 1,
                              ),
                            ),
                            child: isSelected
                                ? Center(
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: kDeepPurple,
                                ),
                              ),
                            )
                                : null,
                          ),
                          onTap: () {
                            setState(() {
                              selectedLanguage = language['name'] == 'English'
                                  ? 'English (US)'
                                  : language['name']!;
                            });
                            setModalState(() {});
                            Navigator.pop(context);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.png"),
                fit: BoxFit.cover,
                alignment: Alignment(0.55, 0.0),
              ),
            ),
          ),

          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.15),
                  Colors.black,
                ],
                stops: [0.2, 1.0],
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: _showLanguageBottomSheet,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                selectedLanguage,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(flex: 2),
                  const Text(
                    'Connect with\nyour community\nwherever you are',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomLoginButton(
                    label: "Continue with Apple ID",
                    icon: const Icon(Icons.apple, size: 16),
                    backgroundColor: kPurple,
                    onPressed: () {
                    },
                  ),

                  const SizedBox(height: 8),
                  CustomLoginButton(
                    label: "Continue with Google",
                    icon: const Text(
                      "G",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    backgroundColor: kBlue,
                    onPressed: () {
                      // Handle Google login
                    },
                  ),

                  const SizedBox(height: 8),

                  CustomLoginButton(
                    label: "Continue with E-mail",
                    icon: const Icon(Icons.email_outlined, size: 16),
                    onPressed: () {
                    },
                    outlined: true,
                    textColor: Colors.white,
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    'By signing up, you accept the Terms of Use and\nPrivacy Policy of how we process your data.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      height: 1.4,
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}