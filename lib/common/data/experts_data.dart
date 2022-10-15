import 'paragraph_data.dart';

class ExpertsData{
  List<ParagraphData> listOfQuestions = <ParagraphData>[];

  ExpertsData() {
    ParagraphData expert1 = ParagraphData(
        "Logoped",
        "Javite se logopedu ukoliko ste identifikovali da postoji potreba za stručnom pomoću. Vaš upit će stići timu stručnjaka koji će odgovoriti na Vaš upit u toku mjeseca."
    );

    ParagraphData expert2 = ParagraphData(
        "Defektolog",
        "Javite se defektolog ukoliko ste identifikovali da postoji potreba za stručnom pomoću. Vaš upit će stići timu stručnjaka koji će odgovoriti na Vaš upit u toku mjeseca."
    );

    ParagraphData expert3 = ParagraphData(
        "Senzorni terapeut",
        "Javite se senzornom terapeutu ukoliko ste identifikovali da postoji potreba za stručnom pomoću. Vaš upit će stići timu stručnjaka koji će odgovoriti na Vaš upit u toku mjeseca."
    );

    ParagraphData expert4 = ParagraphData(
        "Fizioterapeut",
        "Javite se fizioterapeutu ukoliko ste identifikovali da postoji potreba za stručnom pomoću. Vaš upit će stići timu stručnjaka koji će odgovoriti na Vaš upit u toku mjeseca."
    );

    ParagraphData expert5 = ParagraphData(
        "Psiholog",
        "Javite se psihologu ukoliko ste identifikovali da postoji potreba za stručnom pomoću. Vaš upit će stići timu stručnjaka koji će odgovoriti na Vaš upit u toku mjeseca."
    );

    ParagraphData expert6 = ParagraphData(
        "Terapeut hranjenja",
        "Javite se terapeutu hranjenja ukoliko ste identifikovali da postoji potreba za stručnom pomoću. Vaš upit će stići timu stručnjaka koji će odgovoriti na Vaš upit u toku mjeseca."
    );

    ParagraphData expert7 = ParagraphData(
        "Neurofeedback terapeut",
        "Javite se neurofeedback terapeutu hranjenja ukoliko ste identifikovali da postoji potreba za stručnom pomoću. Vaš upit će stići timu stručnjaka koji će odgovoriti na Vaš upit u toku mjeseca."
    );

    ParagraphData expert8 = ParagraphData(
        "Terapeut integracije primitivnih i posturalnih refleksa",
        "Javite se terapeutu integracije primitivnih i posturalnih refleksa (Blomberg Rhytmic Movement terapeut) ukoliko ste identifikovali da postoji potreba za stručnom pomoću. Vaš upit će stići timu stručnjaka koji će odgovoriti na Vaš upit u toku mjeseca."
    );



    listOfQuestions.add(expert1);
    listOfQuestions.add(expert2);
    listOfQuestions.add(expert3);
    listOfQuestions.add(expert4);
    listOfQuestions.add(expert5);
    listOfQuestions.add(expert6);
    listOfQuestions.add(expert7);
    listOfQuestions.add(expert8);
  }
}