// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:trinity_lecture_app/presentation/pages/counter_example/counter_example_page.dart'
    as _i1;
import 'package:trinity_lecture_app/presentation/pages/dummy_ui/dummy_ui_page.dart'
    as _i2;
import 'package:trinity_lecture_app/presentation/pages/dummy_ui/second_dummy_ui_page.dart'
    as _i5;
import 'package:trinity_lecture_app/presentation/pages/input_validation/input_validation_page.dart'
    as _i3;
import 'package:trinity_lecture_app/presentation/pages/main/main_page.dart'
    as _i4;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    CounterExampleRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CounterExamplePage(),
      );
    },
    DummyUIRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DummyUIPage(),
      );
    },
    InputValidationRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.InputValidationPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MainPage(),
      );
    },
    SecondDummyUIRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SecondDummyUIPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CounterExamplePage]
class CounterExampleRoute extends _i6.PageRouteInfo<void> {
  const CounterExampleRoute({List<_i6.PageRouteInfo>? children})
      : super(
          CounterExampleRoute.name,
          initialChildren: children,
        );

  static const String name = 'CounterExampleRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DummyUIPage]
class DummyUIRoute extends _i6.PageRouteInfo<void> {
  const DummyUIRoute({List<_i6.PageRouteInfo>? children})
      : super(
          DummyUIRoute.name,
          initialChildren: children,
        );

  static const String name = 'DummyUIRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.InputValidationPage]
class InputValidationRoute extends _i6.PageRouteInfo<void> {
  const InputValidationRoute({List<_i6.PageRouteInfo>? children})
      : super(
          InputValidationRoute.name,
          initialChildren: children,
        );

  static const String name = 'InputValidationRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MainPage]
class MainRoute extends _i6.PageRouteInfo<void> {
  const MainRoute({List<_i6.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SecondDummyUIPage]
class SecondDummyUIRoute extends _i6.PageRouteInfo<void> {
  const SecondDummyUIRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SecondDummyUIRoute.name,
          initialChildren: children,
        );

  static const String name = 'SecondDummyUIRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
