import '../Question.dart';

class LanguageDevelopment {
  List<Question> listOfQuestions = <Question>[];

  LanguageDevelopment() {
    Question question1 = Question(
        "Kako posticati razvoj bebinog govora?",
        "Svi se rađamo kao socijalna bića sa jednakom potrebom za interakcijom sa svojom okolinom. Još u maminom stomaku, beba sluša mamin glas i putem vibracija ga prepoznaje. Rođenjem nastavlja da oseća sigurnost kada čuje glas svoje mame. Najveći podsticaj bebinom razvoju govora daćete pričom. Pričajte joj uvek. I dok šetate i kada se kupate i dok obavljate sve one manje interesantne aktivnosti. Pričajte svojoj bebi. To je najjeftiniji i istovremeno najskuplji podsticaj koji poklan jate bebi. U periodu između 4. i 6. meseca, beba će početi da vam uzvraća gugutanjem i spajanjem dva glasa (,,bababa\",,dadada“), a između 10. i 12. meseca možete očekivati i prve reči na bebinom izmišljenom jeziku."
    );

    Question question2 = Question(
        "Da li da dozvolim svom detetu pristup mobilnom telefonu?",
        "Ne. Jedno veliko, najveće NE. Baby TV? Ne. ,,Edukativne\" igrice na telefonu? Ne.Ekranizam je pre izvesnog vremena uvršten u stručnu terminologiju psihoterapije. Drugim rečima, postoje deca koja su upravo zbog izlaganja ekranima u ranom uzrastu, razvila kašnjenje u govorno-jezičkom razvoju i/ili drugim segmentima razvoja. U praksi se srećemo sa decom koja su gledala samo\" baby TV i roditelji se javljaju nama za pomoć, jer primećuju da dete kasni u govoru ili uopšte ne govori, uprkos tome što je govorno-jezički razvoj na početku tekao uredno. Deca koja su do svoje treće godine izložena ekranima, razvijaju komunikacija sa ekranima, ne sa svojom socijalnom sredinom. Govor, ako ga i bude, posataje ne funkcionalan"
    );

    Question question3 = Question(
        "Da li je po svom detetu pristup mobilnom telefonu?",
        "Čitanje SA bebom ima višestruke benefite na razvoj. Od prvih dana kada beba sluša glas onoga ko čita, kroz zajednički ritual čitanja, beba razvija odnos sa roditel jem, poverenje i sigurnost, usmerenu pažnju, rečnik i jezičke veštine potrebne za kasnije opismenjavanje. Kako beba raste, vi prelazite u pasivnu ulogu slušaoca, podstičući dete da u toku čitanja postavlja pitanja."
    );

    listOfQuestions.add(question1);
    listOfQuestions.add(question2);
    listOfQuestions.add(question3);
  }
}