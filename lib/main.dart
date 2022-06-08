import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
// Provider для доступа к локали 
// Выбранный по умолчанию язык - английский
class LocaleModel with ChangeNotifier {
  Locale locale = const Locale('en');
  Locale get getlocale => locale;

  void changelocale(Locale l) {
    locale = l;
    notifyListeners();
  }
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LocaleModel(),
      child: Consumer<LocaleModel>(
        builder: (context, provider, child) =>
    MaterialApp(
      debugShowCheckedModeBanner: false,
       
       localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('tr', ''),
        Locale('en', ''),
        Locale('ru', ''),
      ],
      locale: Provider.of<LocaleModel>(context).locale,
      
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomeWidget(),
      },
      )));
  }
}

class MyHomeWidget extends StatefulWidget {
   const MyHomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomeWidget> createState() => _MyHomeWidgetState();
}

class _MyHomeWidgetState extends State<MyHomeWidget> {
  
  
  @override
  Widget build(BuildContext context) {
    
     var translation = AppLocalizations.of(context);
     
   
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color.fromRGBO(255, 228, 181, 1),
         elevation: 1.0,
         title: Text(translation.title, style: const TextStyle(color: Color.fromARGB(255, 153, 96, 10)),),
          actions:  <Widget>[  
            //обвести в круг активный язык
               Container(decoration: BoxDecoration(
               color: (Localizations.localeOf(context).languageCode == 'tr')? Colors.orangeAccent : null,
               shape: BoxShape.circle,
  ),
                 child: IconButton(
              onPressed: () {
                  Provider.of<LocaleModel>(context, listen: false).changelocale(const Locale("tr"));
              },
              icon: Image.asset('assets/icons/turkey.png'),
              tooltip: 'Турецкий'    
          ),
               ),
          Container(decoration: BoxDecoration(
               color: (Localizations.localeOf(context).languageCode == 'en')? Colors.orangeAccent : null,
               shape: BoxShape.circle,
  ),
            child: IconButton(
              onPressed: () {
                Provider.of<LocaleModel>(context, listen: false).changelocale(const Locale("en"));
              },
             icon: Image.asset('assets/icons/usa.png'),
             tooltip: 'Английский',
             
            ),
          ),
         Container(decoration: BoxDecoration(
               color: (Localizations.localeOf(context).languageCode == 'ru')? Colors.orangeAccent : null,
               shape: BoxShape.circle,
  ),
           child: IconButton(
                onPressed: () {
                  Provider.of<LocaleModel>(context, listen: false).changelocale(const Locale("ru"));
                },  
               icon: Image.asset('assets/icons/russia.png'),
               tooltip: 'Русский'
            ),
         ),
          
        ],
      ),
      //Карточки персонажей
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.network('https://www.disneyclips.com/images/images/winnie-the-pooh44.png')
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                         translation.winnieName,
                        style: const TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 20),
                      Text(translation.production(DateTime.parse("2022-06-01"))),
                      Text(translation.honey(25)),
                      Text(translation.manufacturer('Happy Bee')),
                      Text(translation.value(100))
                      
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.network('https://www.disneyclips.com/images3/images/ma205.gif')
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                         translation.rabbitName,
                        style: const TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 20),
                      Text(translation.production(DateTime.parse("2022-06-02"))),
                      Text(translation.honey(2)),
                      Text(translation.manufacturer('Happy Bee')),
                      Text(translation.value(8))
                      
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.network('https://www.disneyclips.com/images/images/piglethoneypot.gif')
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                         translation.pigName,
                        style: const TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 20),
                      Text(translation.production(DateTime.parse("2022-06-02"))),
                      Text(translation.honey(9)),
                      Text(translation.manufacturer('Happy Bee')),
                      Text(translation.value(36))
                    ],
                  ),
                ],
              ),
            ),
          ), 
          // Рисунок пчелы внизу экрана
           SizedBox(
            width: 150, height: 70,
                  child: Image.asset('assets/images/bee.png'))
        ], 
      ),
      
    );
  }
}