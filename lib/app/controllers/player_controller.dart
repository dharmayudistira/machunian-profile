import 'package:get/get.dart';
import 'package:manutd_profile/app/data/models/player_model.dart';
import 'package:manutd_profile/app/data/providers/player_provider.dart';

class PlayerController extends GetxController {
  final _listPlayer = List<Player>.empty().obs;

  @override
  void onInit() {
    super.onInit();
    _listPlayer.clear();
    _listPlayer.addAll(PlayerProvider().fetchPlayers());
  }

  List<Player> getAllPlayer() => _listPlayer;

  void updatePlayer(bool state, String name) {
    _listPlayer[_listPlayer.indexWhere((element) => element.name == name)]
        .isFavorite = state;
  }
}
