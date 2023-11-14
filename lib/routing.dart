import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sutt_app_task/screens/screen1.dart';
import 'package:sutt_app_task/screens/screen2.dart';
import 'package:sutt_app_task/screens/screen3.dart';

GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Screen1();
      },
    ),
    GoRoute(
      path: '/city',
      builder: (BuildContext context, GoRouterState state) {
        return const Screen3();
      },
    ),
    GoRoute(
      path: '/country',
      builder: (BuildContext context, GoRouterState state) {
        return const Screen2();
      },
    ),
  ],
);
