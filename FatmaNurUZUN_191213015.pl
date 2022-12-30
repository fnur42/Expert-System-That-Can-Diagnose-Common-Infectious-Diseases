go:-
hastalik(Disease),
write('Hastanın hastalığa sahip olduğu düşünülmektedir.'),
write(Disease),
nl,
undo;
write('Üzgünüz, sistem hastalığı tanımlayamıyor'),nl,undo.

hastalik(dang_humması) :-
belirti(ateş_çıkması),
belirti(kusma),
belirti(baş_ağrısı),
belirti(kaşıntı),
belirti(eklem_ağrısı),
belirti(göz_ağrısı),
belirti(burun_kanaması),
belirti(sivrisinek_ısırması),
    
nl,
write('Tavsiye ve Öneriler:'),
nl,
write('1 : Bol sıvı tüketin ve dinlenin.'),
nl,
write('2: Evde temiz ve hijyenik bir ortam sağlayın'),
nl,
write('3: Sivrisinek kovucular kullanın'),
nl,
write('4: uygun diyeti takip et'),
nl,
write('Dang, gündüzleri (güneş ışığı saatleri) ısırmayı tercih eden Aedes sivrisineği tarafından yayılır. Tek bir sivrisinek ısırığı bile dang hummasına neden olabilir. Bu nedenle, özellikle gün boyunca hem içeride hem de dışarıda sevdiklerinizi korumak önemlidir. Dışarı çıkmadan önce Goodknight Fabric Roll-On (veya Goodknight serin jel/pamuk vb.) gibi kişisel kovucuların kullanılması sivrisinek ısırıklarını önleyebilir. Lütfen açık havada uyumayın ve tüm cildinizi örtmeyin'),
nl,!.

hastalik(soğuk_algınlığı) :-
belirti(baş_ağrısı),
belirti(burun_akması),
belirti(hapşırma),
belirti(boğaz_ağrısı),
belirti(göz_sulanması),
belirti(kuru_öksürme),
nl,
write('Tavsiye ve Öneriler:'),
nl,
write('1: Tylenol'),
nl,
write('2: Panadol'),
nl,
write('3: Nasal spray'),
nl,
write('Lütfen sıcak giysiler giyin'),
nl,!.

hastalik(grip) :-
belirti(boğaz_ağrısı),
belirti(ateş_çıkması),
belirti(baş_ağrısı),
belirti(titreme),
belirti(vücut_ağrısı),
belirti(burun_tıkanıklığı),
belirti(sık_öksürük),
nl,
write('Tavsiye ve Öneriler:'),
nl,
write('1: Tamiflu'),
nl,
write('2: Panadol'),
nl,
write('3: kalabalık ve kapalı ortamlardan uzak durmak'),
nl,
write('Lütfen ılık bir banyo yapın ve tuzlu gargara yapın'),
nl,!.

hastalik(tifo) :-
belirti(baş_ağrısı),
belirti(karın_ağrısı),
belirti(ateş_çıkması),
belirti(döküntü),
belirti(terleme),
belirti(ishal), 
belirti(kuru_öksürük),
nl,
write('Tavsiye ve Öneriler:'),
nl,
write('1: Chloramphenicol'),
nl,
write('2: Amoxicillin'),
nl,
write('3: Ciprofloxacin'),
nl,
write('4: Azithromycin'),
nl,
write('Lütfen düzenli uyuyun ve yumuşak bir diyet yapın'),
nl,!.


hastalik(suçiçeği) :-
belirti(daha_önce_geçirmemiş),
belirti(çocukluk_yaşında),
belirti(kaşıntı),
belirti(vücut_ağrısı),
belirti(ateş_çıkması),
belirti(kızarıklık),
belirti(döküntü),

nl,
write('Tavsiye ve Öneriler:'),
nl,
write('1: suçiçeği aşısı'),
nl,
write('2: İmmünoglobulin'),
nl,
write('3: Parasetamol : asetaminofen'),
nl,
write('4: Acyclovir'),
nl,
write('5: Lütfen yulaf ezmesi banyosu yapın ve evde kalın'),
nl,
write('6: Aspirin kullanılmamalı'),
nl,!.

hastalik(kızamık) :-
belirti(çocukluk_yaşında),
belirti(ateş_çıkması),
belirti(burun_akıntısı),
belirti(gözlerde_kızarıklık),
belirti(döküntü),
belirti(ışığa_bakamama),
belirti(ısrarcı_öksürük),
nl,
write('Tavsiye ve Öneriler:'),
nl,
write('1: Tylenol'),
nl,
write('2: Aleve'),
nl,
write('3: Advil'),
nl,
write('4: Vitamin A'),
nl,
write('Lütfen dinlenin ve daha fazla sıvı kullanın'),
nl,!.

hastalik(hepatit_a) :-
belirti(sarılık),
belirti(iştah_kaybı),
belirti(karın_ağrısı),
belirti(bitkinlik),
belirti(ishal),
belirti(sık_idrara_çıkma),
belirti(kilo_kaybı),
nl,
write('Tavsiye ve Öneriler:'),
nl,
write('1:  Ev istirahati'),
nl,
write('2: Bol sıvı alımı'),
nl,
write('3: Az yağlı ve sindirimi kolay yiyecekler tüketilmesi '),
nl,
write('4: Alkolden kesinlikle uzak durulması'),
nl,
write('5: Diğer kişiler ile çok fazla temas halinde olmamalı ve hijyen kurallarına dikkat etmeli'),
nl,
write('6: Serum tedavisi'),
nl,!.

/*?-hastalik(X)
X = dang_humması
?-hastalik(soğuk_algınlığı)
?-hastalik(grip)
?-hastalik(tifo)
?-hastalik(suçiçeği)
?-hastalik(kızamık)
?-hastalik(hepatiti_a)
?-hastalik(kanser)
?-hastalik(guatr)
?-hastalik(depresyon)
?-belirti(göz_ağrısı)
?-belirti(sarılık)
?-belirti(karın_ağrısı)
?-belirti(baş_ağrısı)
?-belirti(döküntü)
*/

hasta(ayşe,dang_humması).
hasta(ayşe,soğuk_algınlığı) :- belirti(göz_sulanması).
hasta(fatma,hepatit_a) :- belirti(sarılık).
hasta(hasan,tifo) :- belirti(döküntü).
hasta(selim,tifo) :- belirti(döküntü),belirti(baş_ağrısı),belirti(karın_ağrısı),belirti(ateş_çıkması),belirti(terleme),belirti(ishal), belirti(kuru_öksürük).
hasta(eda,hepatit_a) :- belirti(sarılık),belirti(iştah_kaybı),belirti(karın_ağrısı),belirti(bitkinlik),belirti(ishal),belirti(sık_idrara_çıkma),belirti(kilo_kaybı).
hasta(alp,kızamık).
hasta(alp,kızamık) :- belirti(çocukluk_yaşında),belirti(ateş_çıkması),belirti(burun_akıntısı),belirti(gözlerde_kızarıklık),belirti(döküntü),belirti(ışığa_bakamama),belirti(ısrarcı_öksürük).
hasta(ali,grip) :- belirti(boğaz_ağrısı),belirti(ateş_çıkması),belirti(baş_ağrısı),belirti(titreme),belirti(vücut_ağrısı),belirti(burun_tıkanıklığı),belirti(sık_öksürük).
hasta(ahmet,dang_humması) :- belirti(ateş_çıkması),belirti(kusma),belirti(baş_ağrısı),belirti(kaşıntı),belirti(eklem_ağrısı),belirti(göz_ağrısı),belirti(burun_kanaması),belirti(sivrisinek_ısırması).
hasta(elif,suçiçeği) :- belirti(daha_önce_geçirmemiş),belirti(çocukluk_yaşında),belirti(kaşıntı),belirti(vücut_ağrısı),belirti(ateş_çıkması),belirti(kızarıklık),belirti(döküntü).
hasta(ayşe,soğuk_algınlığı) :- belirti(baş_ağrısı),belirti(burun_akması),belirti(hapşırma),belirti(boğaz_ağrısı),belirti(göz_sulanması),belirti(kuru_öksürme).
/*?-hasta(ayşe,dang_humması).*/
/*?-hasta(ayşe,soğuk_algınlığı). 
  ?-hasta(ayşe,tifo).
  ?-hasta(fatma,hepatit_a).
  ?-hasta(fatma,soğuk_algınlığı).
  ?-hasta(hasan,tifo).
  ?-hasta(selim,tifo).
  ?-hasta(selim,hepatit_a).
  ?-hasta(eda,hepatit_a).
  ?-hasta(eda,grip).
  ?-hasta(X,kızamık).
  X = alp.
  ?-hasta(alp,kızamık).
  ?-hasta(ali,grip).
  ?-hasta(elif,suçiçeği).
  ?-hasta(ayşe,soğuk_algınlığı).
  ?-hasta(ahmet,dang_humması).*/

ask(Question) :-
write('Hastanın hastalık belirtisi var mı? '),
write(Question),
write('? : '),
read(Response),
nl,
( (Response == yes ; Response == y)
->
assert(yes(Question)) ;
assert(no(Question)), fail).
:- dynamic yes/1,no/1.

belirti(S) :-
(yes(S)
->
true ;
(no(S)
->
fail ;
ask(S))).

undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.