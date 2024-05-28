# King Tide Challenge

This is the first version of Pokemon King Tide

## About this project

this version use `null safety` and `flutter_mobx` as state management.

for more info go to https://mobx.netlify.app/

you need to run

```shell
flutter pub run build_runner watch --delete-conflicting-outputs
```

Stay on watch
If you are making changes to the store and want to generate \*.g.dart files automatically, you can use the following command:

```shell
flutter pub run build_runner watch
```

## build an appbundle (DEVELOPMENT) for firebase app distribution

```shell
flutter clean
flutter pub get
flutter pub run build_runner build
flutter build appbundle
```

## build for iOS (DEVELOPMENT) for testflight

```shell
flutter clean
flutter pub get
flutter pub run build_runner build
flutter build ios
```
