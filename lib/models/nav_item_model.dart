import 'rive_models.dart';


class NavItemModel {
  final String title;
  final RiveModel rive;

  NavItemModel({required this.title, required this.rive});
}

List<NavItemModel> bottomNavItems = [
  NavItemModel(
      title: "Chat",
      rive: RiveModel(
        src: "lib/assets/icons/animated_icon_set_-_1_color.riv",
        artboard: "CHAT",
        stateMachineName: "CHAT_Interactivity"),
  ),
  NavItemModel(
    title: "Bell",
    rive: RiveModel(
        src: "lib/assets/icons/animated_icon_set_-_1_color.riv",
        artboard: "BELL",
        stateMachineName: "BELL_Interactivity"),
  ),
  NavItemModel(
    title: "User",
    rive: RiveModel(
        src: "lib/assets/icons/animated_icon_set_-_1_color.riv",
        artboard: "USER",
        stateMachineName: "USER_Interactivity"),
  ),
];