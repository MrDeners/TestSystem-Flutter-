import 'package:flutter/material.dart';
import '../../../Widgets/Widgets.dart';

class HomePage extends StatelessWidget {
  int numberOfChapter = 0;
  List<String> theory= [
    "     Обеспечение нормальных метеорологических условий в производственных и офисных помещениях - ключевое условие эффективной деятельности человека. Метеорологические условия внутри помещений определяются температурой, влажностью, скоростью воздуха и интенсивностью теплового излучения от поверхностей. \n     Санитарные нормы и правила устанавливают требования к микроклимату рабочих мест, а также существует гигиенический норматив для оценки показателей микроклимата. Производственные условия чаще всего характеризуются совокупным воздействием метеорологических факторов на физиологическую функцию организма и его терморегуляцию. \n      Терморегуляция - это совокупность процессов, направленных на поддержание температурного баланса тела человека. Для нормального протекания физиологических процессов тепло, вырабатываемое организмом, должно отводиться в окружающую среду. Создание благоприятных условий работы включает установление оптимальных и допустимых параметров микроклимата. \n      Допустимые значения параметров микроклимата устанавливают минимальные или максимальные значения, которые не вызывают повреждений здоровья, но могут приводить к тепловому дискомфорту. Оптимальные значения создают комфортные условия работы и предпочтительны на рабочих местах. \n     При нормировании микроклиматических условий учитываются теплый и холодный периоды года. Теплый период - среднесуточная температура +10 °C и выше, холодный период - температура ниже +10 °C. Среднесуточная температура измеряется в определенные часы суток. \n      Нормирование параметров микроклимата разграничивает работы по категориям в зависимости от интенсивности энергозатрат организма: легкие, средней тяжести и тяжелые физические работы. Категории определены в ккал/ч (Вт). При выборе параметров микроклимата учитывается характер помещения и избыток явной теплоты, которая поступает от различных источников воздействия на температуру воздуха в помещении. \n      При выборе показателей микроклимата, помимо категоризации работ по интенсивности энергозатрат организма, учитывается характер помещения и избыток явной теплоты. Явная теплота воздействует на температуру воздуха в помещении, происходящая от нагретых материалов, отопительных приборов, оборудования, людей, освещения и других источников. \n      Тепловое ощущение человека зависит от температуры, влажности воздуха, скорости его движения и температуры окружающих поверхностей. Комфортность наступает, когда тепловой баланс между выделением и отдачей тепла поддерживается. Неблагоприятный микроклимат может вызывать гипертермию (перегрев) или гипотермию (переохлаждение), сопровождаемые различными заболеваниями. \n      Для измерения параметров метеорологических условий в помещениях используются различные приборы, такие как термометры, гигрометры, анемометры, актинометры и другие. Оценка тепловых ощущений человека часто проводится с использованием 7-балльной шкалы. Профилактические меры включают в себя установку кондиционирования воздуха, специальной одежды, предоставление мест для отдыха и обогрева. Принцип работы гигрометра ВИТ-1 основан на том, что при низком содержании водяных паров в воздухе «влажный» термометр сильнее охлаждается из-за интенсивного испарения с ткани, увеличивая разницу температур между сухим и увлажненным термометром. Температура воздуха в помещении определяется точно до 0,2 °C, а относительная влажность – по психрометрической таблице. \n     Измерение скорости воздушного потока проводится чашечным (крыльчатым) анемометром с циферблатами для различных единиц. Принцип действия основан на линейной зависимости скорости вращения турбины от скорости воздуха. \n     Для определения скорости воздуха также применяется кататермометр, измеряющий теплоотдачу воздуха. Метеометр МЭС-200А (термоанемометр) измеряет атмосферное давление, температуру, скорость потока воздуха, относительную влажность и тепловую нагрузку среды. \n      Метеометр состоит из блока электроники и сменных измерительных щупов. Датчики терморезисторов измеряют скорость потока воздуха и температуру, а сенсор влажности определяет относительную влажность. Блок электроники преобразует аналоговые сигналы в цифровые, обрабатывает результаты и отображает на индикаторе.",
    "Теория в будущем её будет дофига когда Владик скинет ещё"
  ];
  List<String> test= [
    "Какие параметры входят в метеорологические условия внутри помещений?",
    "A) Только температура",
    "B) Только влажность",
    "C) Температура, влажность, скорость воздуха, тепловое излучение от поверхностей",
    "D) Только скорость воздуха",
    "C",
    "Что определяют санитарные нормы и правила?",
    "A) Метеорологические условия в природе",
    "B) Требования к микроклимату рабочих мест",
    "C) Только температуру воздуха",
    "D) Только влажность воздуха",
    "B",
    "Что такое терморегуляция?",
    "A) Процессы, направленные на поддержание температурного баланса тела",
    "B) Измерение температуры воздуха",
    "C) Процессы охлаждения помещения",
    "D) Процессы, связанные с обогревом помещения",
    "A",
    "Что включает в себя создание оптимальных условий работы?",
    "A) Установление только минимальных параметров микроклимата",
    "B) Только создание допустимых условий",
    "C) Установление оптимальных и допустимых параметров микроклимата",
    "D) Только установление оптимальных параметров",
    "C",
    "Какие значения определяют допустимые параметры микроклимата?",
    "A) Только те, которые не вызывают повреждений здоровья",
    "B) Только те, которые создают комфорт",
    "C) Только те, которые не вызывают теплового дискомфорта",
    "D) Только те, которые минимизируют затраты энергии",
    "A",
    "В каких периодах года проводится нормирование параметров микроклимата?",
    "A) Только весной",
    "B) Только летом",
    "C) В теплый и холодный периоды года",
    "D) Только осенью",
    "C",
    "Какие работы классифицируются по интенсивности энергозатрат организма?",
    "A) Только физически легкие работы",
    "B) Только физически тяжелые работы",
    "C) Легкие, средней тяжести и тяжелые физические работы",
    "D) Только средней тяжести работы",
    "C",
    "Что учитывается при выборе параметров микроклимата?",
    "A) Только характер помещения",
    "B) Только интенсивность явной теплоты",
    "C) Только категория работ",
    "D) Характер помещения и избыток явной теплоты",
    "D",
    "Что влияет на тепловое ощущение человека?",
    "A) Только температура воздуха",
    "B) Только влажность воздуха",
    "C) Только скорость воздуха",
    "D) Температура, влажность воздуха, скорость движения и температура поверхностей",
    "D",
    "Какие меры включаются в профилактику неблагоприятного микроклимата?",
    "A) Только установка кондиционирования воздуха",
    "B) Только предоставление мест для отдыха",
    "C) Установка кондиционирования воздуха, специальной одежды, предоставление мест для отдыха и обогрева",
    "D) Только установка специальной одежды",
    "C",
    "На чем основан принцип работы гигрометра ВИТ-1?",
    "A) На измерении только температуры",
    "B) На линейной зависимости скорости воздушного потока",
    "C) На теплоотдаче воздуха",
    "D) На разнице температур между сухим и увлажненным термометром",
    "D",
    "Как измеряется скорость воздушного потока чашечным анемометром?",
    "A) На основе разницы температур",
    "B) На основе линейной зависимости скорости вращения турбины",
    "C) На основе измерения теплоотдачи воздуха",
    "D) Только по интенсивности вращения турбины",
    "B",
    "Как измеряется скорость воздушного потока с помощью кататермометра?",
    "A) На основе разницы температур",
    "B) На основе измерения теплоотдачи воздуха",
    "C) На основе линейной зависимости скорости вращения турбины",
    "D) Только по интенсивности вращения турбины",
    "A",
    "Что измеряет метеометр МЭС-200А?",
    "A) Только атмосферное давление",
    "B) Атмосферное давление, температуру и скорость воздуха",
    "C) Только относительную влажность",
    "D) Атмосферное давление, температуру, скорость потока воздуха, относительную влажность и тепловую нагрузку среды",
    "D",
    "Из чего состоит метеометр МЭС-200А?",
    "A) Только из сменных измерительных щупов",
    "B) Только из блока электроники",
    "C) Из блока электроники и сменных измерительных щупов",
    "D) Только из датчиков терморезисторов",
    "C",
  ];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: Color(0xFF1D1C1C),
            colorScheme: const ColorScheme.dark()
        ),
        home:  Scaffold(
            body:  SafeArea(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/Background.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row (
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 275,
                              height: 191,
                              decoration: const BoxDecoration(
                                image: DecorationImage (
                                  image: AssetImage('assets/Naming.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Padding(
                                padding: EdgeInsets.only(top: 69)),
                            SizedBox(
                              width: 245,
                              height: 111,
                              child: FloatingActionButton.extended(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/Chapters', arguments: {"numberOfChapter" : numberOfChapter, "theory" : theory, "test" : test});
                                },
                                focusColor: Colors.deepPurpleAccent,
                                shape: StadiumBorder (
                                  side: BorderSide(
                                    width: 3,
                                    color: Colors.deepPurpleAccent!,
                                  ),
                                ),
                                label: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Stack (
                                    children: <Widget> [
                                      Text(
                                        "ГЛАВЫ",
                                        style: TextStyle(
                                          fontSize: 50,
                                          fontFamily: 'LucGay',
                                          letterSpacing: 3,
                                          foreground: Paint()
                                            ..style = PaintingStyle.stroke
                                            ..strokeWidth = 5
                                            ..color = Colors.black,
                                        ),
                                      ),
                                      const Text(
                                        "ГЛАВЫ",
                                        style: TextStyle(
                                          fontSize: 50,
                                          fontFamily: 'LucGay',
                                          letterSpacing: 3,
                                          textBaseline: TextBaseline.ideographic,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                backgroundColor: Colors.white70,
                              ),
                            ),

                            const Padding(padding: EdgeInsets.only(top: 75)),
                            SizedBox(
                              width: 245,
                              height: 111,
                              child: FloatingActionButton.extended(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/Settings');
                                },
                                focusColor: Colors.deepPurpleAccent,
                                shape: StadiumBorder (
                                  side: BorderSide(
                                    width: 3,
                                    color: Colors.deepPurpleAccent!,
                                  ),
                                ),
                                label: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Stack (
                                    children: <Widget> [
                                      Text(
                                        "НАСТРОЙКИ",
                                        style: TextStyle(
                                          fontSize: 35,
                                          fontFamily: 'LucGay',
                                          letterSpacing: 3,
                                          foreground: Paint()
                                            ..style = PaintingStyle.stroke
                                            ..strokeWidth = 5
                                            ..color = Colors.black,
                                        ),
                                      ),
                                      const Text(
                                        "НАСТРОЙКИ",
                                        style: TextStyle(
                                          fontSize: 35,
                                          fontFamily: 'LucGay',
                                          letterSpacing: 3,
                                          textBaseline: TextBaseline.ideographic,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                backgroundColor: Colors.white70,
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(top: 80)),
                          ],
                        )
                      ]
                  ),
                )
            ))
    );
  }
}