// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:trinity_lecture_app/presentation/pages/counter_example/counter_example_page.dart'
    as _i1;
import 'package:trinity_lecture_app/presentation/pages/dummy_ui/dummy_ui_page.dart'
    as _i2;
import 'package:trinity_lecture_app/presentation/pages/dummy_ui/second_dummy_ui_page.dart'
    as _i4;
import 'package:trinity_lecture_app/presentation/pages/main/main_page.dart'
    as _i3;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    CounterExampleRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CounterExamplePage(),
      );
    },
    DummyUIRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DummyUIPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MainPage(),
      );
    },
    SecondDummyUIRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SecondDummyUIPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CounterExamplePage]
class CounterExampleRoute extends _i5.PageRouteInfo<void> {
  const CounterExampleRoute({List<_i5.PageRouteInfo>? children})
      : super(
          CounterExampleRoute.name,
          initialChildren: children,
        );

  static const String name = 'CounterExampleRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DummyUIPage]
class DummyUIRoute extends _i5.PageRouteInfo<void> {
  const DummyUIRoute({List<_i5.PageRouteInfo>? children})
      : super(
          DummyUIRoute.name,
          initialChildren: children,
        );

  static const String name = 'DummyUIRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MainPage]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute({List<_i5.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SecondDummyUIPage]
class SecondDummyUIRoute extends _i5.PageRouteInfo<void> {
  const SecondDummyUIRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SecondDummyUIRoute.name,
          initialChildren: children,
        );

  static const String name = 'SecondDummyUIRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
