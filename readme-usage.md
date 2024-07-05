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

