import '../Question.dart';

class SocialEmotionalDevelopment {
  List<Question> listOfQuestions = <Question>[];

  SocialEmotionalDevelopment() {
    Question question1 = Question(
        "Šta se podrazumijeva pod samoregulacijom?",
        "Samoregulacija je razvojni cilj. Bebe imaju sopstveni spontani način da se izraze. Kada mama obrati pažnju na ove izraze i počne da ih upoznaje, zapravo pokazuje bebi da razume šta beba radi, oseća i misli i na taj način se uskađuje sa bebom. Usklađenost mame i bebe u stresnim situacijama za bebu, omogućava joj da samu sebe reguliše. Kada je beba uravnotežena, emotivno je stabilna i oslanja se na odnos sa mamom da ostane u tom stanju. Zdravo povezivanje je ključ za zdrave bebe, a zdrave bebe su ključ za razvoj zdravih odraslih ljudi. Povezivanje na emocionalnom nivou je biološka potreba bebe. "
    );

    Question question2 = Question(
        "Kako teče razvoj emocija kod beba?",
        "Beba od rođenja do 3. meseca oseća uznemirenost i zadovoljstvo. U periodu između 3. i 6. meseca, rađaju se strah, tuga, gnev i gađenje, a od 6. meseca pa do kraja prve godine i emocije oduševljenja i naklonosti prema odraslim osobama u svojoj okolini. Sa punih 6 meseci, kod bebe su razvijene sve četiri primarne emocije: radost, tuga, strah i ljutnja. I ovde roditelji imaju primarnu ulogu u prihvatanju svojih i bebinih raspoloženja i osećanja. Kada roditelji prihvate važnost doslednog i adekvatnog, sa ljubavlju odgovora na bebine potrebe i emocije, razvijaće empatiju kod deteta i naučiti ga da se na adekvatan način odnosi prema svetu i različitim emotivnim stanjima drugih ljudi."
    );

    Question question3 = Question(
        "Na koji način je najbolje masirati bebu?",
        "Touching ili opuštanje dodirom je deo učenja o masaži beba. Ovu metodu možete primeniti kada je beba uznemirena ili kada jednostavno želite dublje povezivanje sa svojom bebom. Bebinu ručicu obuhvatite i prekrijete svojim dlanovima, koje ste prethodno zagrejali na telesnu temperaturu. Nežno ljuljuškajte bebinu ruku. Pričajte, pevušite. Kada osetite da se beba smiruje, pređite na drugu ručicu ili drugi deo tela. Ovo može da vam postane i svakodnevni ritual sa bebom. Više o masaži beba možete naučiti kod nas u Centru za podsticajnu negu."
    );

    listOfQuestions.add(question1);
    listOfQuestions.add(question2);
    listOfQuestions.add(question3);
  }
}