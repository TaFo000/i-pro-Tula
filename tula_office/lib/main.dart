import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(const MyApp()));
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
  List<String> names = [
    "Граф Монте-кристо",
    "Отцы и Дети",
    "Морфий",
    "Война и мир",
    "Мёртвые души",
    "Обыкновенная история",
    "Бесприданница"
  ];

  List<String> authors = [
    "Александр Дюма",
    "Иван Тургенев",
    "Михаил Булгаков",
    "Лев Толстой",
    "Николай Гоголь",
    "Иван Гончаров",
    "Александр Островский"
  ];

  double dx = 0.5,
      dy = -0.75;

  bool isOffice = true, isOfficeDelayed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                                                        fontWeight: FontWeight
                                                            .w300,
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
                            GestureDetector(
                                onTap: () {
                                  setState(() => isOffice = false);
                                  Future.delayed(const Duration(seconds: 1))
                                      .then((value) =>
                                      setState(() =>
                                      isOfficeDelayed = false));
                                },
                                child: isOffice
                                    ? Container(
                                    color: const Color(0xffEFF1F4),
                                    padding: const EdgeInsets.only(
                                        left: 36,
                                        right: 17,
                                        top: 22,
                                        bottom: 21
                                    ),
                                    child: Row(
                                        children: [
                                          Image.asset(
                                              "images/virtual_office.png"),
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
                                )
                                : officeTile(
                                    "virtual_office",
                                    "Виртуальный офис",
                                    Container()
                                )
                            ),
                            const SizedBox(height: 20),
                            ExpansionTile(
                                leading: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Image.asset("images/calendar.png")
                                ),
                                title: const Text(
                                    "Календарь",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Color(0xff1D2A71)
                                    )
                                ),
                                children: [
                                  SizedBox(
                                      height: 500,
                                      width: 347,
                                      child: TableCalendar(
                                        firstDay: DateTime.utc(2010, 10, 16),
                                        lastDay: DateTime.utc(2030, 3, 14),
                                        focusedDay: DateTime.now(),
                                        locale: "ru",
                                      )
                                  )
                                ]
                            ),
                            const SizedBox(height: 10),
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
                            const SizedBox(height: 10),
                            ExpansionTile(
                                leading: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Image.asset(
                                        "images/virtual_helper.png")
                                ),
                                title: const Text(
                                    "Виртуальный помощник",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Color(0xff1D2A71)
                                    )
                                ),
                                children: [
                                  Container(
                                      width: 347,
                                      padding: const EdgeInsets.only(
                                          top: 35,
                                          left: 28,
                                          right: 16,
                                          bottom: 20
                                      ),
                                      child: Column(
                                          children: [
                                            Image.asset("images/90.png"),
                                            const SizedBox(height: 33),
                                            const Text(
                                                "Вы выполнили 90 процентов задач на день!",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 24,
                                                    color: Color(0xff1D2A71)
                                                )
                                            ),
                                            const SizedBox(height: 84),
                                            Container(
                                                height: 36,
                                                width: 208,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    color: const Color(
                                                        0xff4224FC),
                                                    borderRadius: BorderRadius
                                                        .circular(7)
                                                ),
                                                child: const Text(
                                                    "Далее",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight
                                                            .w400,
                                                        fontSize: 14,
                                                        color: Colors.white
                                                    )
                                                )
                                            )
                                          ]
                                      )
                                  )
                                ]
                            ),
                            const SizedBox(height: 10),
                            GestureDetector(
                                onTap: () {
                                  setState(() => isOffice = false);
                                  Future.delayed(const Duration(seconds: 1))
                                      .then((value) =>
                                      setState(() =>
                                      isOfficeDelayed = false));
                                },
                                child: isOffice
                                    ? officeTile(
                                    "bookshelf",
                                    "Книжная полка",
                                    Container()
                                )
                                    : Container(
                                    color: const Color(0xffEFF1F4),
                                    padding: const EdgeInsets.only(
                                        left: 36,
                                        right: 17,
                                        top: 22,
                                        bottom: 21
                                    ),
                                    child: Row(
                                        children: [
                                          Image.asset("images/bookshelf.png"),
                                          const SizedBox(width: 16),
                                          const Text(
                                              "Книжная полка",
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
                                )
                            ),
                            officeTile(
                                "workspace",
                                "Настройки",
                                Container()
                            ),
                            const SizedBox(height: 56),
                            Container(
                              width: 347,
                              color: const Color(0xffEFF1F4),
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(
                                top: 15,
                                bottom: 15.87
                              ),
                              child: Column(
                                children: const [
                                  Text(
                                    "16:27",
                                    style: TextStyle(
                                      color: Color(0xff1D2A71)
                                    ),
                                  ),
                                  SizedBox(height: 5.87),
                                  Text(
                                    "22 апреля 2022",
                                    style: TextStyle(
                                      color: Color.fromRGBO(29, 42, 113, 0.8)
                                    )
                                  )
                                ]
                              )
                            )
                          ]
                      )
                  ),
                  Container(
                      height: 1080,
                      width: 1579,
                      color: const Color(0xffDEE0E7),
                      padding: const EdgeInsets.only(
                          top: 45,
                          left: 55,
                          right: 35
                      ),
                      child: Stack(
                          children: [
                            Positioned(
                                top: 52,
                                right: 35,
                                child: Container(
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
                                                  color: const Color(
                                                      0xffF4F7FE),
                                                  borderRadius: BorderRadius
                                                      .circular(36)
                                              ),
                                              padding: const EdgeInsets.all(11),
                                              child: Row(
                                                  children: [
                                                    Image.asset(
                                                        "images/search.png"),
                                                    const SizedBox(width: 11),
                                                    const Text(
                                                        "Поиск",
                                                        style: TextStyle(
                                                            fontWeight: FontWeight
                                                                .w400,
                                                            fontSize: 14,
                                                            color: Color(
                                                                0xff8F9BBA)
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
                            ),
                            AnimatedPositioned(
                                left: 69,
                                top: isOffice ? 45 : 2000,
                                duration: const Duration(seconds: 1),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
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
                                )
                            ),
                            AnimatedPositioned(
                                left: 69,
                                top: isOfficeDelayed ? 2000 : 45,
                                duration: const Duration(seconds: 1),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: const [
                                      Text(
                                          "Главная / Книжная полка",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Color(0xff9CA7C9)
                                          )
                                      ),
                                      Text(
                                          "Книжная полка",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 34,
                                              color: Color(0xff1D2A71)
                                          )
                                      )
                                    ]
                                )
                            ),
                            AnimatedPositioned(
                                top: isOffice ? 171 : 2000,
                                duration: const Duration(seconds: 1),
                                child: Stack(
                                    children: [
                                      Image.asset("images/office.png"),
                                      SizedBox(
                                          height: 856,
                                          width: 1132,
                                          child: AnimatedBuilder(
                                              animation: ValueNotifier(1.0),
                                              builder: (context, child) =>
                                                  Align(
                                                      alignment: Alignment(
                                                          dx, dy),
                                                      child: child
                                                  ),
                                              child: GestureDetector(
                                                  onPanUpdate: (details) =>
                                                      setState(() {
                                                        dx = (dx +
                                                            details.delta.dx /
                                                                1132 * 4);
                                                        dy = (dy +
                                                            details.delta.dy /
                                                                856 * 4);
                                                      }),
                                                  child: Image.asset(
                                                      "images/Егор Смурыгин.png")
                                              )
                                          )
                                      )
                                    ]
                                )
                            ),
                            AnimatedPositioned(
                                top: isOfficeDelayed ? 2000 : 134,
                                left: 40,
                                duration: const Duration(seconds: 1),
                                child: Container(
                                    height: 918,
                                    width: 260,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(16)
                                    ),
                                    padding: const EdgeInsets.only(
                                        top: 25,
                                        left: 24,
                                        bottom: 40
                                    ),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          shelfHeader("Бизнес-книги"),
                                          const SizedBox(height: 12),
                                          shelfTile("Менеджмент"),
                                          const SizedBox(height: 10),
                                          shelfTile("Работа с клиентами"),
                                          const SizedBox(height: 10),
                                          shelfTile("Стартапы и создание бизнеса"),
                                          const SizedBox(height: 10),
                                          shelfTile("Переговоры"),
                                          const SizedBox(height: 10),
                                          shelfTile("Ораторское искусство / риторика"),
                                          const SizedBox(height: 10),
                                          more(7),
                                          const SizedBox(height: 30),
                                          shelfHeader("Спорт, здоровье, красота"),
                                          const SizedBox(height: 12),
                                          shelfTile("Медицина и здоровье"),
                                          const SizedBox(height: 12),
                                          shelfTile("Спорт"),
                                          const SizedBox(height: 12),
                                          shelfTile("Красота"),
                                          const SizedBox(height: 30),
                                          shelfHeader("Знания и навыки"),
                                          const SizedBox(height: 12),
                                          shelfTile("Хобби, досуг"),
                                          const SizedBox(height: 12),
                                          shelfTile("Научно-популярная литература"),
                                          const SizedBox(height: 12),
                                          shelfTile("Учебная и научная литерутару"),
                                          const SizedBox(height: 12),
                                          shelfTile("Компьютрная литература"),
                                          const SizedBox(height: 10),
                                          more(7),
                                          const SizedBox(height: 30),
                                          shelfHeader("Серьёзное чтение"),
                                          const SizedBox(height: 12),
                                          shelfTile("Современная просьба"),
                                          const SizedBox(height: 12),
                                          shelfTile("Классическая литература"),
                                          const SizedBox(height: 12),
                                          shelfTile("Пьесы, драматургия"),
                                          const SizedBox(height: 12),
                                          shelfTile("Стихия, поэзия"),
                                          const SizedBox(height: 10),
                                          more(2),
                                          const SizedBox(height: 30),
                                          shelfHeader("Психология, мотивация"),
                                          const SizedBox(height: 12),
                                          shelfTile("Современная проза"),
                                          const SizedBox(height: 12),
                                          shelfTile("Классическая литература"),
                                          const SizedBox(height: 12),
                                          shelfTile("Пьесы, драматургия"),
                                          const SizedBox(height: 12),
                                          shelfTile("Стихия, поэзия"),
                                          const SizedBox(height: 10),
                                          more(4)
                                        ]
                                    )
                                )
                            ),
                            AnimatedPositioned(
                                top: isOfficeDelayed ? 2250 : 134,
                                left: 340,
                                duration: const Duration(seconds: 1),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          padding: const EdgeInsets.only(
                                              top: 11,
                                              left: 21,
                                              right: 15.5,
                                              bottom: 11
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(16)
                                          ),
                                          child: Row(
                                              children: const [
                                                Text(
                                                    "Сортировать по:",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w300,
                                                        fontSize: 14,
                                                        color: Color(0xff9CA7C9)
                                                    )
                                                ),
                                                SizedBox(width: 10),
                                                Text(
                                                    "Сначала популярные",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 14,
                                                        color: Color(0xff9CA7C9)
                                                    )
                                                ),
                                                SizedBox(width: 42),
                                                Icon(
                                                    Icons.keyboard_arrow_down,
                                                    color: Color(0xff9CA7C9)
                                                )
                                              ]
                                          )
                                      ),
                                      const SizedBox(height: 20),
                                      allBooks(),
                                      const SizedBox(height: 20),
                                      allBooks()
                                    ]
                                )
                            ),
                            AnimatedPositioned(
                                right: 35,
                                bottom: isOffice ? 0 : -1000,
                                duration: const Duration(seconds: 1),
                                child: Container(
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
                                                  color: const Color(
                                                      0xffEFF1F4),
                                                  borderRadius: BorderRadius
                                                      .circular(19)
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
                                                            fontWeight: FontWeight
                                                                .w500,
                                                            fontSize: 24,
                                                            color: Color(
                                                                0xff1D2A71)
                                                        )
                                                    ),
                                                    Spacer(),
                                                    Icon(
                                                        Icons
                                                            .keyboard_arrow_down,
                                                        color: Color.fromRGBO(
                                                            48, 48, 48, 0.6)
                                                    )
                                                  ]
                                              )
                                          ),
                                          ExpansionTile(
                                              title: const Text(
                                                  "Product-manager",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w500,
                                                      fontSize: 18,
                                                      color: Color(0xff1D2A71)
                                                  )
                                              ),
                                              children: [
                                                expansionTileChildren(
                                                  "Роман Ваниш",),
                                                expansionTileChildren(
                                                    "Денис Титов"),
                                              ]
                                          ),
                                          ExpansionTile(
                                              title: const Text(
                                                  "Designer",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w500,
                                                      fontSize: 18,
                                                      color: Color(0xff1D2A71)
                                                  )
                                              ),
                                              children: [
                                                expansionTileChildren(
                                                    "Mark Tukaev"),
                                                expansionTileChildren(
                                                    "Ed Karpovich",
                                                    icon: "no_camera"),
                                                expansionTileChildren(
                                                    "Valerii Ryubin",
                                                    icon: "no_microphone")
                                              ]
                                          ),
                                          const ExpansionTile(
                                              title: Text(
                                                  "SMM",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w500,
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
                                                      fontWeight: FontWeight
                                                          .w500,
                                                      fontSize: 18,
                                                      color: Color(0xff1D2A71)
                                                  )
                                              ),
                                              children: [
                                                expansionTileChildren(
                                                    "Roman Korner"),
                                                expansionTileChildren(
                                                    "Roman Korner")
                                              ]
                                          ),
                                          Container(
                                              height: 96,
                                              width: 327,
                                              color: const Color(0xffEFF1F4),
                                              padding: const EdgeInsets
                                                  .symmetric(
                                                  horizontal: 21,
                                                  vertical: 19
                                              ),
                                              child: Row(
                                                  children: [
                                                    Image.asset(
                                                        "images/avatar2.png"),
                                                    const SizedBox(width: 16),
                                                    Column(
                                                        children: const [
                                                          Text(
                                                              "Денис Титов",
                                                              style: TextStyle(
                                                                  fontWeight: FontWeight
                                                                      .w400,
                                                                  fontSize: 16,
                                                                  color: Color(
                                                                      0xff1D2A71)
                                                              )
                                                          ),
                                                          SizedBox(height: 6),
                                                          Text(
                                                              "Выбрать статус",
                                                              style: TextStyle(
                                                                  fontWeight: FontWeight
                                                                      .w400,
                                                                  fontSize: 14,
                                                                  color: Color
                                                                      .fromRGBO(
                                                                      29, 42,
                                                                      13, 0.6)
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
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .spaceEvenly,
                                                  children: [
                                                    Image.asset(
                                                        "images/microphone.png"),
                                                    Image.asset(
                                                        "images/headphone.png"),
                                                    Image.asset(
                                                        "images/camera.png"),
                                                    Image.asset(
                                                        "images/settings.png")
                                                  ]
                                              )
                                          )
                                        ]
                                    )
                                )
                            )
                          ]
                      )
                  )
                ]
            )
        )
    );
  }

  Padding officeTile(String icon, name, Widget widget) =>
      Padding(
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

  Padding expansionTileChildren(String name, {icon}) =>
      Padding(
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
          )
      );

  Text shelfHeader(String text) => Text(
      text,
      style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: Color(0xff18191B)
      )
  );

  Text shelfTile(String text) => Text(
    text,
    style: const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: Color(0xff4A548D)
    )
  );

  Text more(int count) => Text(
    "Ещё $count",
    style: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: Color(0xff6B6CF2)
    )
  );

  Container allBooks() => Container(
      height: 427,
      width: 1198,
      padding: const EdgeInsets.only(
          top: 30,
          left: 23
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
                children: const [
                  Text(
                      "Все книги",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Color(0xff1D2A71)
                      )
                  ),
                  Spacer(),
                  Text(
                      "Все книги",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff4224FC)
                      )
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xff4224FC),
                  ),
                  SizedBox(width: 95.5)
                ]
            ),
            const Text(
                "3548 книг",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color.fromRGBO(29, 42, 113, 0.6)
                )
            ),
            const SizedBox(height: 18),
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(right: 32),
                        child: Column(
                            children: [
                              Image.asset("images/books${index+1}.png"),
                              const SizedBox(height: 8),
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset("images/star.png"),
                                    Image.asset("images/star.png"),
                                    Image.asset("images/star.png"),
                                    Image.asset("images/star.png"),
                                    Image.asset("images/star.png")
                                  ]
                              ),
                              const SizedBox(height: 11.67),
                              Text(
                                  names[index],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Color(0xff1D2A71)
                                  )
                              ),
                              const SizedBox(height: 12),
                              Text(
                                  authors[index],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xff4224FC)
                                  )
                              )
                            ]
                        )
                    )
                )
            )
          ]
      )
  );
}
