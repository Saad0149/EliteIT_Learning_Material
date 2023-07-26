import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetResponsiveView<HomeController> {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Responsive Design'),
        ),
        body: Center(
          //child: ResponsiveDesignFirstWay(),
          //child: ResponsiveDesignSecondWay(),
          child: ResponsiveDesignThirdWay(),
        ));
  }
}

class ResponsiveDesignFirstWay extends GetResponsiveView<HomeController> {
  ResponsiveDesignFirstWay({super.key});

  @override
  Widget builder() {
    if (screen.isPhone) {
      return renderWidget(
          iconData: Icons.phone, color: Colors.blue, text: 'Phone');
    } else if (screen.isDesktop) {
      return renderWidget(
          iconData: Icons.desktop_windows, color: Colors.red, text: 'Desktop');
    } else if (screen.isTablet) {
      return renderWidget(
          iconData: Icons.tablet, color: Colors.green, text: 'Tablet');
    } else if (screen.isWatch) {
      return renderWidget(
          iconData: Icons.watch, color: Colors.orange, text: 'Watch');
    }
    return renderWidget(
        iconData: Icons.phone, color: Colors.blue, text: 'Phone');
  }

  renderWidget(
      {required IconData iconData,
      required Color color,
      required String text}) {
    return Column(
      children: [
        Icon(
          iconData,
          size: 100,
          color: color,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 40),
        )
      ],
    );
  }
}

class ResponsiveDesignSecondWay extends GetResponsiveView<HomeController> {
  ResponsiveDesignSecondWay({super.key}) : super(alwaysUseBuilder: false);

  @override
  Widget phone() =>
      renderWidget(iconData: Icons.phone, color: Colors.blue, text: 'Phone');

  @override
  Widget desktop() => renderWidget(
      iconData: Icons.desktop_windows, color: Colors.red, text: 'Desktop');

  @override
  Widget tablet() =>
      renderWidget(iconData: Icons.tablet, color: Colors.green, text: 'Tablet');

  @override
  Widget watch() =>
      renderWidget(iconData: Icons.watch, color: Colors.orange, text: 'Watch');

  renderWidget(
      {required IconData iconData,
      required Color color,
      required String text}) {
    return Column(
      children: [
        Icon(
          iconData,
          size: 100,
          color: color,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 40),
        )
      ],
    );
  }
}

class ResponsiveDesignThirdWay extends GetResponsiveView<HomeController> {
  ResponsiveDesignThirdWay({super.key})
      : super(
            settings: const ResponsiveScreenSettings(
          desktopChangePoint: 800,
          tabletChangePoint: 700,
          watchChangePoint: 600,
        ));

  @override
  Widget builder() => Column(
        children: [
          const Text('Width>=800 Then Desktop', style: TextStyle(fontSize: 35)),
          const SizedBox(
            height: 8,
          ),
          const Text('Width>=700 Then Tablet', style: TextStyle(fontSize: 35)),
          const SizedBox(
            height: 8,
          ),
          const Text('Width<=600 Then Watch', style: TextStyle(fontSize: 35)),
          const SizedBox(
            height: 8,
          ),
          const Text('Width>600 and Width<700 Then Mobile',
              style: TextStyle(fontSize: 35)),
          const SizedBox(
            height: 8,
          ),
          const SizedBox(
            height: 8,
          ),
          Text("Screen Type :${screen.screenType.toString()}",
              style: const TextStyle(fontSize: 35)),
          const SizedBox(
            height: 8,
          ),
          Text("Screen Width :${screen.width.toString()}",
              style: const TextStyle(fontSize: 35)),
        ],
      );
}
