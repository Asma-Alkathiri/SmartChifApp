part of 'theme_cubit.dart';

@immutable
class ThemeState {
  final ThemeData customTheme;

  const ThemeState(this.customTheme);
}

final class ThemeInitial extends ThemeState {
  const ThemeInitial(super.customTheme);
}
