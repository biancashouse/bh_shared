<!-- This file uses generated code. Visit https://pub.dev/packages/readme_helper for usage information. -->
# bh_shared

<!-- #include readme-intro.md -->
A collection of useful APIs and flutter widgets that are used in our other packages:

- flutter_callouts
- flutter_content

Hopefully, they may be useful for you in your apps.
<!-- // end of #include -->

<!-- #include readme-motivation.md -->
## Motivation

It's sensible to centralise your reusable source code into a separate library.
<!-- // end of #include -->

<!-- #include readme-features.md -->
## Features
- a local storage API (based on HydratedBloc package)
- home page provider - use a home page for web and a different home page for mobile
- a dynamic page routing API (based on go_router)
- some useful widgets
<!-- // end of #include -->

<!-- #include readme-quickstart.md -->
## Quickstart

**1.** Install or update package **bh_shared**:
```bash
flutter pub add bh_shared
```

- How to include in your apps
you can add the functionality of the API to your own dart classes using the *with* keyword.

```dart
class MyClass with BaseUseful, WidgetHelper, LocalStorage {}
```
Or, for your convenience, simply prefixany method with __BaseGlobal.__
<!-- // end of #include -->

<!-- #toc -->
## Table of Contents

[**Motivation**](#motivation)

[**Features**](#features)

[**Quickstart**](#quickstart)

[**Usage**](#usage)
  - [Local Storage API](#local-storage-api)
  - [Home Page Provider API](#home-page-provider-api)
  - [Routing Config Provider API](#routing-config-provider-api)
  - [Miscellaneous useful widgets and methods we found useful](#miscellaneous-useful-widgets-and-methods-we-found-useful)
<!-- // end of #toc -->

<!-- #include readme-usage.md -->
## Usage
### Local Storage API

Local storage refers to browser storage on web, and device storage on mobile.

```dart
  Future<void> localStorage_init() async {}

  dynamic localStorage_read(String name) {}

  Future<void> localStorage_write(String name, dynamic value) async {}

  void localStorage_clear() {}

  void localStorage_delete(String name) {}
```

### Home Page Provider API

This API allows you to have 2 version of your home page: one for web and one for mobile.
You supply both pages to the API and the appropriate one get used at runtime:

```dart
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
              title: 'Flutter Demo',
              home: HomePageProvider().getWebOrMobileHomePage(
                  HomePageWeb(), HomePageMobile(),
              ),
    );
  }
```

### Routing Config Provider API

Making use of the go_router package, you use this API in a similar way to the Home Page Provider.
You supply a go_router configuration for both web, and mobile.
At runtime, the appropriate one gets used:

```dart
GoRouter router = GoRouter.routingConfig(
    initialLocation: initialRoutePath,
    routingConfig: RoutingConfigProvider().getWebOrMobileRoutingConfig(
      widget.webRoutingConfig,
      widget.mobileRoutingConfig,
    ));
```


### Miscellaneous useful widgets and methods we found useful
...to be added...
<!-- // end of #include -->

# Issues & Feedback
Please file an [issue](https://github.com/biancashouse/bh_shared/issues) to send feedback or report a bug. Thank you!