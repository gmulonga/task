import 'package:flutter/material.dart';
import 'package:task/views/auth/login_screen.dart';
import 'package:task/views/community_feed.dart';

class AppRoutes {
  static const String login = '/login';
  static const String communityFeed = '/communityFeed';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      case communityFeed:
        return MaterialPageRoute(
          builder: (_) => CommunityFeedScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Page not found')),
          ),
        );
    }
  }
}