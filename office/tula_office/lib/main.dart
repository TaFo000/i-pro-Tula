import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double dx = 0.75, dy = -0.75;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Row(
              children: [
                SizedBox(
                    width: 347,
                    child: Column(
                        children: [
                          Container(
                              color: const Color(0xffEFF1F4),
                              padding: const EdgeInsets.only(
                                  top: 33.92,
                                  left: 35,
                                  right: 36,
                                  bottom: 49.69
                              ),
                              child: Row(
                                  children: [
                                    Image.asset("images/logo.png"),
                                    const SizedBox(width: 10.34),
                                    RichText(
                                        text: const TextSpan(
                                            text: "STAR",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 36,
                                                color: Color(0xff1D2A71)
                                            ),
                                            children: [
                                              TextSpan(
                                                  text: 'PLACE',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w300,
                                                      fontSize: 36,
                                                      color: Color(0xff1D2A71)
                                                  )
                                              )
                                            ]
                                        )
                                    )
                                  ]
                              )
                          ),
                          Container(
                              color: const Color(0xffEFF1F4),
                              padding: const EdgeInsets.only(
                                  left: 36,
                                  right: 17,
                                  top: 22,
                                  bottom: 21
                              ),
                              child: Row(
                                  children: [
                                    Image.asset("images/virtual_office.png"),
                                    const SizedBox(width: 16),
                                    const Text(
                                        "Виртуальный офис",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Color(0xff1D2A71)
                                        )
                                    ),
                                    const Spacer(),
                                    Container(
                                        height: 50,
                                        width: 2,
                                        color: const Color(0xff1D2A71)
                                    )
                                  ]
                              )
                          ),
                          officeTile(
                              "calendar",
                              "Календарь",
                              const Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Color.fromRGBO(48, 48, 48, 0.6)
                              )
                          ),
                          officeTile(
                              "workspace",
                              "Рабочее пространство",
                              Container()
                          ),
                          officeTile(
                              "task_manager",
                              "Менеджер задач",
                              Container(
                                  height: 24,
                                  width: 24,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: Color(0xffEC675A),
                                      shape: BoxShape.circle
                                  ),
                                  child: const Text(
                                      "31",
                                      style: TextStyle(
                                          color: Colors.white
                                      )
                                  )
                              )
                          ),
                          officeTile(
                              "workspace",
                              "Видео-конференция",
                              Container()
                          ),
                          officeTile(
                              "workspace",
                              "Виртуальный помощник",
                              Container()
                          ),
                          officeTile(
                              "workspace",
                              "Профиль",
                              Container()
                          ),
                          officeTile(
                              "workspace",
                              "Настройки",
                              Container()
                          )
                        ]
                    )
                ),
                Container(
                  color: const Color(0xffDEE0E7),
                  padding: const EdgeInsets.only(
                    top: 45,
                    left: 55,
                    right: 35
                  ),
                  child: Column(
                      children: [
                        SizedBox(
                            width: 1088,
                            child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                            "Главная / Виртуальный офис",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: Color(0xff9CA7C9)
                                            )
                                        ),
                                        Text(
                                            "Виртуальный офис",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 34,
                                                color: Color(0xff1D2A71)
                                            )
                                        )
                                      ]
                                  ),
                                  const Spacer(),
                                  Container(
                                      width: 387,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                          borderRadius: BorderRadius.circular(36)
                                      ),
                                      padding: const EdgeInsets.only(
                                          top: 8,
                                          left: 12,
                                          right: 14,
                                          bottom: 8
                                      ),
                                      child: Row(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                    color: const Color(0xffF4F7FE),
                                                    borderRadius: BorderRadius.circular(36)
                                                ),
                                                padding: const EdgeInsets.all(11),
                                                child: Row(
                                                    children: [
                                                      Image.asset("images/search.png"),
                                                      const SizedBox(width: 11),
                                                      const Text(
                                                          "Поиск",
                                                          style: TextStyle(
                                                              fontWeight: FontWeight.w400,
                                                              fontSize: 14,
                                                              color: Color(0xff8F9BBA)
                                                          )
                                                      )
                                                    ]
                                                )
                                            ),
                                            const Spacer(),
                                            Image.asset("images/notifications.png"),
                                            const SizedBox(width: 20.96),
                                            Image.asset("images/moon.png"),
                                            const SizedBox(width: 22.96),
                                            Image.asset("images/info.png"),
                                            const SizedBox(width: 19),
                                            Image.asset("images/avatar.png"),
                                          ]
                                      )
                                  )
                                ]
                            )
                        ),
                        const SizedBox(height: 21),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Stack(
                                children: [
                                  Image.asset("images/office.png"),
                                  SizedBox(
                                    height: 856,
                                    width: 1132,
                                    child: AnimatedBuilder(
                                        animation: ValueNotifier(1.0),
                                        builder: (context, child) => Align(
                                            alignment: Alignment(dx, dy),
                                            child: child
                                        ),
                                        child: GestureDetector(
                                            onPanUpdate: (details) => setState(() {
                                              dx = (dx + details.delta.dx / 1132 * 4);
                                              dy = (dy + details.delta.dy / 856 * 4);
                                            }),
                                            child: Image.asset("images/Егор Смурыгин.png")
                                        )
                                    )
                                  )
                                ]
                              ),
                              const SizedBox(width: 24),
                              Container(
                                  width: 327,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(19),
                                        topRight: Radius.circular(19)
                                      )
                                  ),
                                  child: Column(
                                      children: [
                                        Container(
                                            width: 327,
                                            decoration: BoxDecoration(
                                                color: const Color(0xffEFF1F4),
                                                borderRadius: BorderRadius.circular(19)
                                            ),
                                            padding: const EdgeInsets.only(
                                                top: 21,
                                                left: 40,
                                                right: 23,
                                                bottom: 21
                                            ),
                                            child: Row(
                                                children: const [
                                                  Text(
                                                      "Офис lambda()",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 24,
                                                          color: Color(0xff1D2A71)
                                                      )
                                                  ),
                                                  Spacer(),
                                                  Icon(
                                                      Icons.keyboard_arrow_down,
                                                      color: Color.fromRGBO(48, 48, 48, 0.6)
                                                  )
                                                ]
                                            )
                                        ),
                                        ExpansionTile(
                                            title: const Text(
                                                "Product-manager",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 18,
                                                    color: Color(0xff1D2A71)
                                                )
                                            ),
                                            children: [
                                              expansionTileChildren("Роман Ваниш", ),
                                              expansionTileChildren("Денис Титов"),
                                            ]
                                        ),
                                        ExpansionTile(
                                            title: const Text(
                                                "Designer",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 18,
                                                    color: Color(0xff1D2A71)
                                                )
                                            ),
                                            children: [
                                              expansionTileChildren("Mark Tukaev"),
                                              expansionTileChildren("Ed Karpovich", icon: "no_camera"),
                                              expansionTileChildren("Valerii Ryubin", icon: "no_microphone")
                                            ]
                                        ),
                                        const ExpansionTile(
                                            title: Text(
                                                "SMM",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 18,
                                                    color: Color(0xff1D2A71)
                                                )
                                            ),
                                            children: []
                                        ),
                                        ExpansionTile(
                                            title: const Text(
                                                "Developers",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 18,
                                                    color: Color(0xff1D2A71)
                                                )
                                            ),
                                            children: [
                                              expansionTileChildren("Roman Korner"),
                                              expansionTileChildren("Roman Korner")
                                            ]
                                        ),
                                        Container(
                                            height: 96,
                                            width: 327,
                                            color: const Color(0xffEFF1F4),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 21,
                                                vertical: 19
                                            ),
                                            child: Row(
                                                children: [
                                                  Image.asset("images/avatar2.png"),
                                                  const SizedBox(width: 16),
                                                  Column(
                                                      children: const [
                                                        Text(
                                                            "Денис Титов",
                                                            style: TextStyle(
                                                                fontWeight: FontWeight.w400,
                                                                fontSize: 16,
                                                                color: Color(0xff1D2A71)
                                                            )
                                                        ),
                                                        SizedBox(height: 6),
                                                        Text(
                                                            "Выбрать статус",
                                                            style: TextStyle(
                                                                fontWeight: FontWeight.w400,
                                                                fontSize: 14,
                                                                color: Color.fromRGBO(29, 42, 13, 0.6)
                                                            )
                                                        )
                                                      ]
                                                  )
                                                ]
                                            )
                                        ),
                                        Container(
                                          height: 2,
                                          width: 327,
                                          color: Colors.white
                                        ),
                                        Container(
                                          height: 72,
                                          width: 327,
                                          color: const Color(0xffEFF1F4),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Image.asset("images/microphone.png"),
                                              Image.asset("images/headphone.png"),
                                              Image.asset("images/camera.png"),
                                              Image.asset("images/settings.png")
                                            ]
                                          )
                                        )
                                      ]
                                  )
                              )
                            ]
                        )
                      ]
                  )
                )
              ]
          )
      )
    );
  }

  Padding officeTile(String icon, name, Widget widget) => Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 30,
      horizontal: 36
    ),
    child: Row(
        children: [
          Image.asset("images/$icon.png"),
          const SizedBox(width: 16),
          Text(
              name,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff1D2A71)
              )
          ),
          const Spacer(),
          widget
        ]
    )
  );

  Padding expansionTileChildren(String name, {icon}) => Padding(
    padding: const EdgeInsets.only(
      top: 8,
        left: 40,
      right: 31,
      bottom: 8
    ),
    child: Row(
        children: [
          Image.asset("images/$name.png"),
          const SizedBox(width: 16),
          Text(
              name,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Color(0xff1D2A71)
              )
          ),
          const Spacer(),
          if (icon != null) Image.asset("images/$icon.png")
        ]
    ),
  );
}
