import 'package:flutter/material.dart';

import '../../enums/flag_type.dart';
import 'flag_section.dart';

class ScrollableContentWidget extends StatelessWidget {
  ScrollableContentWidget(
      {super.key,
      required this.title,
      required this.content,
      this.subtitle,
      this.children});

  String? subtitle;
  final String title;
  final String content;
  List<Widget>? children;

  double get backgroundOffset => subtitle != null ? 0 : -100;

  static const String _greenFlag1Content =
      'Dajte detetu sve vrste taktilnih stimulaija - blage dodire (maženje, dodire sa nekim lakim materijalom, prljavština na koži, voda, hrana oko usana), duboke pritiske koji se stvaraju aktivnostima kao što su masaže, medveđi zagrljaj,tapkanje, kotrljanje (ovi taktilni doživljaji daju senzorne informacije zglobovima i mišićima), vibracije(vibrirajuće stolice,igračke, masažeri). Dajte im priliku da oseti različite površine (celim telom, šakama i stopalima) i tako primeti razlike.Napravite male jastučiće da može njima da manipuliše, trlja po licu i telu,opipava, baca i ubacuje. napravite male taktilne podloge da leži i prelazi preko njih..Boravite u prirodi i opipavajte travu, pesak, cveće.. ';

  static const String _greenFlag2Content =
      'Koristite mobile (predmeti koji doprinose razvoju zapažanja i  stimulišu zadržavanje bebine pažnje na nečemu),okačite ih tamo gde beba spava ili provodi vreme dok je na leđima, na par nedelja ili na mesečnom nivou, menjajte ih – npr. mobil sa kuglama, mobil sa plesačima I slično. Okačite predmete za elastičnu traku, da vise iznad bebe ( balone, mekane kugle, lopte, tkanine, razne krupne predmete i igraćke), kako bi ih pratila očima, dirala, udarala, hvatala, držala.. – ujedno uvežbavala kontrolu šake i ruke';

  static const String _greenFlag3Content =
      'Puštajte različite bele šumove (zvuci prirode, npr.talase,kišu..);obezbedite više zvečki koje različito zveckaju (dajete jednu po jednu, da istažuje i osluškuje pojedinačno, posle određenog vremena, dana, nedelja, kada primetite da je motivacija opala, zamenite sledećom). Možete napraviti loptu od neke tkanine u kojoj ćete ubaciti zvončiće ili praporce i držati i igrati se sa detetom ili okačiti iznad mesta gde dete provodi vreme da bi rukama i nogama, dok leži na leđima, mogla da udara i hvata, da se odiže od podloge..dakle tako stimulišete i motoričke radnje.';

  static const String _greenFlag4Content =
      'Što češće da boravi na stomaku (motivišite i animirajte omiljenom igračkom, da posegne za njom, da je dohvati, da pokušava da se pomeri do nje..).Kkoristite valjak preko kojeg će da se odiže, leži, prelazi preko njega. Nekaa boravi na pilates ili lopti za skakanje - na stomaku, da se odiže, održava ravnotežu glave, ramena, da se drži za štap(da bude ispred nje), za drvene krugove (koji mogu visiti). Valjkastim predmetima je stiskajte i masirajte dajući joj dublji pritisak na zglobove i mišiće; napravite jestivi plastelin, da stiska, kida i njime vežba šake i prste.';

  static const String _redFlag1Content =
      'Problemi u samoregulaciji – prekomerno plakanje,poremećaji organizacije spavanja i budnosti i problemi u hranjenju. 10-12 mesec prekomerni strah od odvajanja od roditelja,majke i strah od nepoznatih ljudi(da ne podnosi da ga dodiruju i nose).';
  static const String _redFlag2Content =
      'Ne reaguje na svetlo, ne prati pogledom, ne zadržava pogled na lice osobe, predmet..';
  static const String _redFlag3Content =
      'Ne reaguje na zvuke u prvim mesecima, a do godinu dana izostaju reakcije na slabije zvuke. Izostaje gugutanje, brbljanje.';
  static const String _redFlag4Content =
      'Preterano mirno ili razdražljivo, mlitavo ili zgrčeno  ';

  Widget _renderSubtitle(BuildContext context) {
    if (subtitle == null) return const SizedBox(height: 0);

    return Column(
      children: [
        Text(
          subtitle!,
          style: Theme.of(context).textTheme.headline3,
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Positioned(
            top: backgroundOffset,
            child: Image.asset('images/about_us_bg.png', scale: 0.8),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                _renderSubtitle(context),
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline2,
                ),
                const SizedBox(height: 68),
                Text(
                  content,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const SizedBox(height: 35),
                Text(
                  'PODSTICARIJUMNE IGRE I AKTIVNOSTI, STIMULATIVNE ZA RAZVOJ VAŠE BEBE I DETETA',
                  style: Theme.of(context).textTheme.headline2,
                ),
                const SizedBox(height: 12),
                const FlagSection(
                  content: _greenFlag1Content,
                  flagType: FlagType.green,
                ),
                const FlagSection(
                  content: _greenFlag2Content,
                  flagType: FlagType.green,
                ),
                const FlagSection(
                  content: _greenFlag3Content,
                  flagType: FlagType.green,
                ),
                const FlagSection(
                  content: _greenFlag4Content,
                  flagType: FlagType.green,
                ),
                const SizedBox(height: 20),
                Text(
                  'ZNAKOVI ODSTUPANJA OD NEUROTIPIČNOG RAZVOJA',
                  style: Theme.of(context).textTheme.headline2,
                ),
                const SizedBox(height: 12),
                const FlagSection(
                  content: _redFlag1Content,
                  flagType: FlagType.red,
                ),
                const SizedBox(height: 16),
                const FlagSection(
                  content: _redFlag2Content,
                  flagType: FlagType.red,
                ),
                const SizedBox(height: 54),
                const FlagSection(
                  content: _redFlag3Content,
                  flagType: FlagType.red,
                ),
                const SizedBox(height: 48),
                const FlagSection(
                  content: _redFlag4Content,
                  flagType: FlagType.red,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 22, bottom: 36),
                  child: Image.asset('images/separator.png'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
