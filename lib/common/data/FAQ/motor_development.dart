import '../paragraph_data.dart';

class MotorDevelopment {
  List<ParagraphData> listOfQuestions = <ParagraphData>[];

  MotorDevelopment() {
    ParagraphData question1 = ParagraphData(
        "Da li je dobro za bebe da provode vreme na stomaku?",
        "Kako podstaći bebu da se pravilno okreće na leđa?"
    );

    ParagraphData question2 = ParagraphData(
        "Kako podstaći bebu da se pravilno okreće na leđa?",
        "Kako biste bebu podstakli da se pravilno okreće na leđa i obrnuto, svako presvlačenje od bebinog prvog dana izvodite tako to obe nogice obuhvatite svojom jednom rukom i ljuljuškate bebu sa jedne na drugu stranu, izvlačeći i postavljajući pelenu."
    );

    ParagraphData question3 = ParagraphData(
        "Pitanje 3: Kada je uobičajeno da beba počne da puzi?",
        "Većina beba počinje da puzi oko 9.meseca, odnosno u periodu između 7. i 10. meseca, iako se kod nekih beba puzanje javlja i nešto kasnije. I stil puzanja se razlikuje, pa neke bebe pužu vojnički\", neke se kreću kao mečići, ali sve dok beba koristi obe ručice i obe nožice i stiže gde je naumila, smatramo da je puzanje u redu. Puzanje je jedna od najvažnijih aktivnosti, koju bi trebalo što više podsticati, kao super preduslov za pravilno i pravovremeno samostalno ustajanje, hodanje, trčanje..."
    );

    listOfQuestions.add(question1);
    listOfQuestions.add(question2);
    listOfQuestions.add(question3);
  }
}