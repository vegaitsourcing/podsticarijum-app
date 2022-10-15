import '../paragraph_data.dart';

class NutritionData {
  List<ParagraphData> listOfQuestions = <ParagraphData>[];

  NutritionData() {
    ParagraphData question1 = ParagraphData(
        "Na koji način treba pozicionirati bebu tokom hranjenja?",
        "Ako tokom hranjenja, dete nije adekvatno pozicionirano, smanjena je mogućnost uspešnog hranjenja. Kada krenete sa čvrstom hranom, beba bi trebalo da sedi sama u hranilici, da ima naslon za leđa i glavicu, kao i oslonac za stopala, dok su kolena pod pravim uglom savijena. Samo na taj način, telo je u položaju koji omo gućava pravilan rad svih organa koji učestvuju u jelu i obradi hrane."
    );

    ParagraphData question2 = ParagraphData(
        "Do kada beba treba da ima refleks povraćanja?",
        "Refleks povraćanja je zaštitni refleks kod beba, koji se javlja tokom prve godine, između 6. i 8. meseca, ali i isščezava u do kraja 12. meseca. Ukoliko dete od dve godine i dalje ima refleks povraćanja kada uzme hranu, nešto nije u redu. Progutajte gutljaj vode. Šta ste uradili? Dodirnuli ste gornje nepce vrhom jezika. Ovakav obrazac gutanja javlja se između 9. i 12. meseca bebinog života. Između 12. i 15. meseca, beba počinje da koristi kontrolisani zagriz i samostalno pridržava čašu tokom pijenja (rekli smo već da flašice izbegavamo ). Ovo je i vreme kada se javljaju prve reči, te ukoliko one izosta ju, potražite pomoć od logopedai terapeuta hranjenja, kako bi se determinisali uzroci."
    );

    ParagraphData question3 = ParagraphData(
        "Kako treba postaviti pribor za jelo?",
        "Ako smo sigurni da je beba pravilno pozicionirana, moramo adekvatno postaviti i bebin pribor za jelo. Kao što nam je kod puzanja važno da se koriste obe ručice i obe nožice, kod jela je važna jednaka upotreba obe ruke. Posudu sa hranom postavljamo ispred bebe u visini grudi na jednakoj udaljenosti i od leve i od desne ručice. Daleko smo u ovom trenutku od saznanja koja će ruka biti primarna, te želimo da obe jednako podstičemo. Komadiće hrane prilagođavamo razvoju hvata bebine šake, pa će to biti što sitniji komadići, kako bi beba uvežbavala pincet hvat, a vi ne biste strahovali od zagrcavanja hranom. Pored posudice sa hranom, uvek stoje i bebina kašika i viljuška, da kada poželi, krene da istražuje i ovaj vid samostalnog hranjenja."
    );

    listOfQuestions.add(question1);
    listOfQuestions.add(question2);
    listOfQuestions.add(question3);
  }
}