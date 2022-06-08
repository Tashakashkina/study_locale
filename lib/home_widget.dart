// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:provider/provider.dart';
// import 'main.dart';


// class MyHomeWidget extends StatelessWidget {
//    const MyHomeWidget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
    
//      var translation = AppLocalizations.of(context);
     
   
//     return Scaffold(
//       appBar: AppBar(
//          title: Text(translation.title),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Provider.of<LocaleModel>(context, listen: false).changelocale(const Locale("tr"));
//               },
//               child: const Text('TR')
//           ),
//           TextButton(
//             onPressed: () {
//               Provider.of<LocaleModel>(context, listen: false).changelocale(const Locale("en"));
//             },
//             child: const Text('EN')
//           ),
//           TextButton(
//               onPressed: () {
//                 Provider.of<LocaleModel>(context, listen: false).changelocale(const Locale("ru"));
//               },
//               child: const Text('RU')
//           ),
          
//         ],
//       ),
      
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Card(
//             elevation: 5,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     height: 150,
//                     width: 150,
//                     child: Image.network('https://www.disneyclips.com/images/images/winnie-the-pooh44.png')
//                   ),
//                   const SizedBox(width: 12),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                          translation.winnieName,
//                         style: const TextStyle(fontSize: 20),
//                       ),
//                       const Text('Jan 17, 2022'),
//                       const Text('4 Jars - USD20'),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Card(
//             elevation: 5,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     height: 150,
//                     width: 150,
//                     child: Image.network('https://www.disneyclips.com/images3/images/ma205.gif')
//                   ),
//                   const SizedBox(width: 12),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                          translation.rabbitName,
//                         style: const TextStyle(fontSize: 20),
//                       ),
//                       const Text('Jan 17, 2022'),
//                       const Text('4 Jars - USD20'),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Card(
//             elevation: 5,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     height: 150,
//                     width: 150,
//                     child: Image.network('https://www.disneyclips.com/images/images/piglethoneypot.gif')
//                   ),
//                   const SizedBox(width: 12),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                          translation.pigName,
//                         style: const TextStyle(fontSize: 20),
//                       ),
//                       const Text('Jan 17, 2022'),
//                       const Text('4 Jars - USD20'),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }