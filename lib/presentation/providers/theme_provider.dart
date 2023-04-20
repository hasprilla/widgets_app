import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/theme/app_theme.dart';

// Listado de colores inmutable
final colorsListProvider = Provider((ref) => colorList);

// Un simple boolean
final isDarkmodeProvider = StateProvider<bool>((ref) => false);

// Un simple int
final selectedColorProvider = StateProvider<int>((ref) => 0);

// Un objeto de tipo AppTheme (Custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

class ThemeNotifier extends StateNotifier<AppTheme> {
  //STATE = Estado = new AppTeheme();
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() =>
      state = state.copyWith(isDarkMode: !state.isDarkMode);

  void changeColorIndex(int colorIndex) =>
      state = state.copyWith(selectedColor: colorIndex);
}
