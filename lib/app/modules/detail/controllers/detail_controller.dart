import 'package:get/get.dart';
import 'package:manutd_profile/app/controllers/player_controller.dart';
import 'package:manutd_profile/app/data/models/player_model.dart';

class DetailController extends GetxController {
  final selectedPlayer = Get.arguments as Player;
  final PlayerController _playerController = Get.find<PlayerController>();

  void updateFavorite(bool state) {
    _playerController.updatePlayer(state, selectedPlayer.name ?? "Unknown");
  }
}
