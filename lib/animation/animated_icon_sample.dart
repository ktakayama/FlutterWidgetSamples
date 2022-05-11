import 'package:flutter/material.dart';

class AnimatedIconSample extends StatefulWidget {
  const AnimatedIconSample({Key? key}) : super(key: key);

  @override
  State<AnimatedIconSample> createState() => _AnimatedIconSampleState();
}

class _AnimatedIconSampleState extends State<AnimatedIconSample>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var data = {
      'ellipsis_search': AnimatedIcons.ellipsis_search,
      'list_view': AnimatedIcons.list_view,
      'view_list': AnimatedIcons.view_list,
      'add_event': AnimatedIcons.add_event,
      'event_add': AnimatedIcons.event_add,
      'arrow_menu': AnimatedIcons.arrow_menu,
      'close_menu': AnimatedIcons.close_menu,
      'home_menu': AnimatedIcons.home_menu,
      'menu_arrow': AnimatedIcons.menu_arrow,
      'menu_close': AnimatedIcons.menu_close,
      'menu_home': AnimatedIcons.menu_home,
      'pause_play': AnimatedIcons.pause_play,
      'play_pause': AnimatedIcons.play_pause,
      'search_ellipsis': AnimatedIcons.search_ellipsis,
    };
    var icons = data.keys.map((key) {
      return Row(children: [
        AnimatedIcon(icon: data[key]!, progress: _animation, size: 80),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Text(key, textScaleFactor: 2),
        ),
      ]);
    }).toList();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
      child: ListView(
        children: icons,
      ),
    );
  }
}
