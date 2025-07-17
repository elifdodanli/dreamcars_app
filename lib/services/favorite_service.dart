import 'package:hive/hive.dart';

class FavoriteService {
  static final Box<String> _box = Hive.box<String>('favoriteCars');

  static List<String> getFavorites() {
    return _box.values.toList();
  }

  static bool isFavorite(String carName) {
    return _box.containsKey(carName);
  }

  static void toggleFavorite(String carName) {
    if (isFavorite(carName)) {
      _box.delete(carName);
    } else {
      _box.put(carName, carName); // Anahtar ve değer aynı olabilir
    }
  }
}
