import 'package:get/get.dart';
import 'package:manutd_profile/app/controllers/player_controller.dart';
import 'package:manutd_profile/app/data/models/player_model.dart';

class HomeController extends GetxController {
  final PlayerController _playerController = Get.find<PlayerController>();

  List<Player> getAllPlayer() => _playerController.getAllPlayer();

  List<Player> getGoalkeepers() => _playerController
      .getAllPlayer()
      .where((player) => player.positionName == "Goalkeeper")
      .toList();

  List<Player> getDefenders() => _playerController
      .getAllPlayer()
      .where((player) => player.positionName == "Defender")
      .toList();

  List<Player> getMidfielders() => _playerController
      .getAllPlayer()
      .where((player) => player.positionName == "Midfielder")
      .toList();

  List<Player> getForwards() => _playerController
      .getAllPlayer()
      .where((player) => player.positionName == "Forward")
      .toList();
}
