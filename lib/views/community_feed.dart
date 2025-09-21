import 'package:flutter/material.dart';
import 'package:task/config/constants.dart';
import 'package:flutter/cupertino.dart';

class CommunityFeedScreen extends StatefulWidget {
  const CommunityFeedScreen({super.key});

  @override
  State<CommunityFeedScreen> createState() => _CommunityFeedScreenState();
}

class _CommunityFeedScreenState extends State<CommunityFeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image_1.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.7),
                  ],
                ),
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Stack(
                    children: [
                      /// Main Column content
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          Row(
                            children: [
                              const Text(
                                'Ekwale People',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Icon(
                                Icons.verified_rounded,
                                color: kBlue,
                                size: 24,
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              SizedBox(
                                width: 16,
                                height: 16,
                                child: Image.asset(
                                  "assets/flag.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                'Nigerian',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                '•',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Icon(
                                Icons.group,
                                color: Colors.white,
                                size: 16,
                              ),
                              const SizedBox(width: 4),
                              const Text(
                                'Local',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              // Profile avatars
                              SizedBox(
                                width: 100,
                                height: 24,
                                child: Stack(
                                  children: [
                                    for (int i = 1; i <= 5; i++)
                                      Positioned(
                                        left: (i - 1) * 18,
                                        child: Container(
                                          width: 24,
                                          height: 24,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: AssetImage("assets/person_$i.png"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                '170 members',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const Spacer(),
                              // Action Buttons
                              Row(
                                children: [
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.3),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.person_add_alt,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.3),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.info_outline,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Container(
                                    width: 32,
                                    height: 32,
                                    decoration: const BoxDecoration(
                                      color: kPurple,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.share,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),

                      Positioned(
                        right: 0,
                        top: 0,
                        child: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                        'Feed',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: kDeepPurple,
                        ),
                      ),
                        SizedBox(width: 5,),
                        Icon(CupertinoIcons.chevron_down, size: 15,)
                      ]
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      'Media',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color:  kPurple.withOpacity(0.2),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      'Events',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: kPurple.withOpacity(0.2),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 2,
            color: kLightPurple.withOpacity(0.3),
          ),

          Expanded(
            child: Container(
              color: kWhite,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      color: kWhite,
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Post Header
                          Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: const DecorationImage(
                                    image: AssetImage("assets/image_3.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          'Anthony',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: kDeepPurple,
                                          ),
                                        ),
                                        const SizedBox(width: 4),
                                        const Icon(
                                          Icons.verified_rounded,
                                          color: kBlue,
                                          size: 12,
                                        ),
                                        const SizedBox(width: 6),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 6,
                                            vertical: 2,
                                          ),
                                          decoration: BoxDecoration(
                                            color: kLightPurple,
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                          child: const Text(
                                            'Admin',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: kDeepPurple,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'Just now',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: kDeepPurple,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(
                                Icons.more_horiz,
                                color: kDeepPurple,
                                size: 24,
                              ),
                            ],
                          ),

                          const SizedBox(height: 12),

                          // Post Text
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                height: 1.4,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Congratulations to @Adekoya for the new whip. Who\'s available for a quick spin around the city in my Benzo!!',
                                  style: TextStyle(
                                    color: kDeepPurple,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 12),

                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                image: AssetImage("assets/image_2.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(
                              children: [
                                // Video Duration
                                Positioned(
                                  bottom: 8,
                                  left: 8,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 6,
                                      vertical: 2,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: const Text(
                                      '0:59',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                // Sound Toggle
                                Positioned(
                                  bottom: 8,
                                  right: 8,
                                  child: Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.3),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.volume_off,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 12),

                          // Action Buttons
                          Row(
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.favorite_border,
                                    color: kDeepPurple,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 6),
                                  const Text(
                                    'Like',
                                    style: TextStyle(
                                      color: kDeepPurple,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 24),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.chat_bubble_outline,
                                    color: kDeepPurple,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 6),
                                  const Text(
                                    'Comment',
                                    style: TextStyle(
                                      color: kDeepPurple,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  Transform.rotate(
                                    angle: -0.5,
                                    child: const Icon(
                                      Icons.send,
                                      color: kDeepPurple,
                                      size: 20,
                                    ),
                                  ),
                                  const SizedBox(width: 6),
                                  const Text(
                                    'Share',
                                    style: TextStyle(
                                      color: kDeepPurple,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 2,
                      color: kLightPurple.withOpacity(0.5),
                    ),

                    Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          // Avatar/Profile Image
                          Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/image_3.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),

                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 5,),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: kPurple.withOpacity(0.1)),
                              ),
                              child: Row(
                                children: [
                                  // Left icon inside circle
                                  Container(
                                    padding: const EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: kPurple.withOpacity(0.1)),
                                    ),
                                    child: Icon(
                                      Icons.broken_image_outlined,
                                      size: 20,
                                      color: kPurple.withOpacity(0.4),
                                    ),
                                  ),
                                  const SizedBox(width: 12),

                                  // Real input field
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Write something...",
                                        border: InputBorder.none, // remove default underline
                                        hintStyle: TextStyle(
                                          color: kPurple.withOpacity(0.4),
                                          fontSize: 15,
                                        ),
                                      ),
                                      style: const TextStyle(
                                        color: Colors.black, // typed text color
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          const SizedBox(width: 8),

                          Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              color: kLightPurple,
                              shape: BoxShape.circle,
                            ),
                            child: Transform.rotate(
                              angle: -0.5,
                              child: const Icon(
                                Icons.send,
                                color: kWhite,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      height: 2,
                      color: kLightPurple.withOpacity(0.5),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}