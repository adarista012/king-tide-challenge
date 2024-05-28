# King Tide Challenge

<h1 style="color:purple;">King Tide Challenge</h1>

This is the first version of Pokemon King Tide

## About this project

<h3 style="color:purple;">About this project</h3>

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

![ezgif com-speed](https://github.com/adarista012/king-tide-challenge/assets/74845162/901b0871-8711-4203-875d-2de7d253bbfb) ![ezgif com-speed](https://github.com/adarista012/king-tide-challenge/assets/74845162/e6e372a8-08c0-4125-bfa2-67f7ba756500)
