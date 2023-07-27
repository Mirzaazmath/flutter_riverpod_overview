# riverpod_overview

A new Flutter project.

## Getting Started


# result
<img src="https://github.com/Mirzaazmath/flutter_riverpod_overview/blob/StreamProviderCounterwithRiverpod/assets/result.gif" height="400">


# Different Types of Providers in Riverpod

# Provider


This is pretty much the most basic kind of Provider. It can hold any type of data but it isn't very complex. Here's a quick example:

This project is a starting point for a Flutter application.


# StateProvider

This is a step up from a regular Provider. It's not much more complex, but you can actually change its value from the outside. Here's an example:

#  StateNotifierProvider

StateNotifierProvider is probably as complex as things can get. I wrote another tutorial that showed how to create a counter with Riverpod and StateNotifierProvider. You can read it here.

# ChangeNotifierProvider

ChangeNotifierProvider was something that was used pretty widely in the original Provider package. In Riverpod it is kind of overshadowed by StateNotifierProvider, and probably for good reason because ChangeNotifier and ChangeNotifierProvider are locked to Flutter and can't be used in plain Dart apps. Even so, I still like ChangeNotifierProvider and I use it a lot to create View Models. The best way to describe it is probably 'a more basic StateNotifierProvider'.


# FutureProvider

FutureProvider is used to calculate/generate asynchronous values, like if you were getting data from a web API or a local database - something that isn't synchronous or instantaneous:



# StreamProvider


StreamProvider is used to pick up updates from a Stream, it's kind of like a FutureProvider but it doesn't execute once and end - it is continuous. There's a lot of good use cases for this, an example might be a chat app where a client app is constantly receiving or polling for new messages.



A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
