import 'package:flutter/material.dart';
import 'package:odev_3/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: const[
        AppLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const[
        Locale("en",""),
        Locale("tr","")
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: const Anasayfa(
    ),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var d = AppLocalizations.of(context);

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Genişlik : $ekranGenisligi");
    print("Yükseklik : $ekranYuksekligi");

    return Scaffold(
      appBar: AppBar(
        title: Text(d!.arabaBaslik, style: TextStyle(fontSize: 36, fontFamily: "OldStandardTT",color: renk1),
        ),
        backgroundColor: renk4,
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("resimler_1/araba.png"),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: (){print("Tıklandı");},
                child: Text(d.arabaYazi,style: TextStyle(color: renk4),),
                style: TextButton.styleFrom(
                  backgroundColor: renk1,
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
                ),
              ),
              TextButton(
                onPressed: (){print("Tıklandı");},
                child: Text(d.kamyonYazi,style: TextStyle(color: renk4),),
                style: TextButton.styleFrom(
                    backgroundColor: renk1,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
                ),
              ),
              TextButton(
                onPressed: (){print("Tıklandı");},
                child: Text(d.prestijYazi,style: TextStyle(color: renk4),),
                style: TextButton.styleFrom(
                    backgroundColor: renk1,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(d.sloganYazi, style: TextStyle(fontSize: 22,color: renk2,fontWeight: FontWeight.bold),),
                Text(d.ozellik1, style: TextStyle(fontSize: 15,color: renk2,fontWeight: FontWeight.bold),),
                Text(d.ozellik2, style: TextStyle(fontSize: 15,color: renk2,fontWeight: FontWeight.bold),),
                Text(d.ozellik3, style: TextStyle(fontSize: 15,color: renk2,fontWeight: FontWeight.bold),),


              ]

            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: (){print("Tıklandı");},
                child: Text(d.oduncAlYazi,style: TextStyle(color: renk4),),
                style: TextButton.styleFrom(
                    backgroundColor: renk1,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
                ),
              ),
              TextButton(
                onPressed: (){print("Tıklandı");},
                child: Text(d.oduncVerYazi,style: TextStyle(color: renk4),),
                style: TextButton.styleFrom(
                    backgroundColor: renk1,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
