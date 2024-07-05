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