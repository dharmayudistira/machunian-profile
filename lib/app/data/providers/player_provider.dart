import 'package:get/get.dart';
import 'package:manutd_profile/app/utils/player_generator.dart';

import '../models/player_model.dart';

class PlayerProvider extends GetConnect {
  List<Player> fetchPlayers() => PlayerGenerator().generatePlayers();
}
