import 'paragraph_data.dart';

class ExpertsData{
  List<ParagraphData> listOfQuestions = <ParagraphData>[];

  LanguageDevelopment() {
    ParagraphData question1 = ParagraphData(
        "Logoped",
        "Javite se logopedu ukoliko ste identifikovali da postoji potreba za stručnom pomoću. Vaš upit će stići timu stručnjaka koji će odgovoriti na Vaš upit u toku mjeseca."
    );

    ParagraphData question2 = ParagraphData(
        "Defektolog",
        "Javite se defektolog ukoliko ste identifikovali da postoji potreba za stručnom pomoću. Vaš upit će stići timu stručnjaka koji će odgovoriti na Vaš upit u toku mjeseca."
    );

    ParagraphData question3 = ParagraphData(
        "Senzorni terapeut",
        "Javite se senzornom terapeutu ukoliko ste identifikovali da postoji potreba za stručnom pomoću. Vaš upit će stići timu stručnjaka koji će odgovoriti na Vaš upit u toku mjeseca."
    );

    listOfQuestions.add(question1);
    listOfQuestions.add(question2);
    listOfQuestions.add(question3);
  }
}