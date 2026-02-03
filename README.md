# pofo_web

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



for publishing 

flutter clean
flutter pub get 

flutter build web --base-href /sulavkarki7.github.io/ --release

flutter build web --base-href /// --release
echo "www.sulavkarki7.com.np" > build/web/CNAME

cd build/web
git init
git add .
git commit -m 'first'
git branch -M main
git remote add origin https://github.com/sulavkarki7/sulavkarki7.github.io.git
git push -u --force origin main

cd ../..