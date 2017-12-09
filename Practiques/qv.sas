libname qv "C:\_SEA\Arxius SEA\Curs Master Finances\Recull bd";* ruta on es troba ubicat el fitxer;

proc format ;
   value DOMEST /* T� alguna persona a la que paga per a realitzar les tasques dom�stiques i / o familiars? */
      2 = 'S�, PER LA CURA DE MEMBRES DE LA LLAR (PERSONES GRANS,INFANT'  
      1 = 'S�, PER LES TASQUES DOM�STIQUES'  
      3 = 'S�, PER AMBDUES COSES'  
      4 = 'NO'  ;
   value COBERTUR /* Cobertura Sanit�ria Privada */
      1 = 'S�'  
      2 = 'NO' ;
   value ORDINADO /* T� ordinador a casa? */
      1 = 'S�'  
      2 = 'NO'  ;
   value INTERNET /* T� connexi� a Internet? */
      1 = 'S�'  
      2 = 'NO'  ;
   value COTXE /* T� disposici� de cotxe sempre? */
      1 = 'S�'  
      2 = 'NO'  ;
   value SOCIALSU /* Classes social subjectiva */
      3 = 'CLASSE MITJANA-BAIXA'  
      1 = 'CLASSE ALTA'  
      2 = 'CLASSE MITJANA-ALTA'  
      4 = 'CLASSE BAIXA'  
      5 = 'altres'  
      6 = 'no t� cap classe social'  ;
   value SOCIALNU /* Classes social subjectiva */
      3 = 'CLASSE MITJANA-BAIXA'  
      1 = 'CLASSE ALTA'  
      2 = 'CLASSE MITJANA-ALTA'  
      4 = 'CLASSE BAIXA'  
      5 = 'altres'  
      6 = 'no t� cap classe social'  ;
   value DESIGUAT /* Creu que les desigualtats augmenten, es mantenen o b� es redueixen? */
      3 = 'DISMINUEIXEN'  ;
      1 = 'AUGMENTEN'  
      2 = 'ES MANTENEN'  
   value OPORTUNI /* Creu que en la nostra societat tots tenim les mateixes oportunitats? */
      1 = 'S�'  
      2 = 'NO'  ;
   value INGRESSO /* Ingressos mensuals nets */
      14 = '700.001-800.000 ptes'  
	  1 = '0-50.000 ptes'  
      2 = '50.001-75.000 ptes'  
      3 = '75.001-100.000 ptes'  
      4 = '100.001-125.000 ptes'  
      5 = '125.001-150.000 ptes'  
      6 = '150.001-175.000 ptes'  
      7 = '175.001-200.000 ptes'  
      8 = '200.001-250.000 ptes'  
      9 = '250.001-300.000 ptes'  
      10 = '300.001-400.000 ptes'  
      11 = '400.001-500.000 ptes'  
      12 = '500.001-600.000 ptes'  
      13 = '600.001-700.000 ptes'  
      15 = 'M�s de 800.000 ptes'  ;
   value POLITICA /* Situaci� escala tend�ncia pol�tica */
      1 = 'EXTREMA ESQUERRA'  
      2 = 'ESQUERRA'  
      3 = 'CENTRE-ESQUERRA'  
      4 = 'CENTRE'  
      5 = 'CENTRE DRETA'  
      6 = 'DRETA'  
      7 = 'EXTREMA-DRETA'  
      8 = 'Altres'  ;
   value CATALA /* Situaci� escala catal�/espanyol */
      4 = 'M�S CATAL�/NA QUE ESPANYOL/A'  
      1 = '�NICAMENT ESPANYOL/A'  
      2 = 'M�S ESPANYOL/A QUE CATAL�/NA'  
      3 = 'Tant catal� com espanyol'  
      5 = '�NICAMENT CATAL�'  ;
   value SEXE /* Sexe */
      1 = 'Home'  
      2 = 'Dona' ;
   value NAIXEMEN /* Lloc de naixement */
      3 = 'EN ALTRE PA�S'  ;
      1 = 'A CATALUNYA'  
      2 = 'A ESPANYA'  
   value JORNLABO /* Jornada laboral oficial (N� hores per setmana) */
      1 = 'Menys de 10'  
      2 = '10-19'  
      3 = '20-29'  
      4 = '30-35'  
      5 = '36_37,5'  
      6 = '37,6-40'  
      7 = '41_45'  
      8 = '46_60'  
      9 = 'M�s de 60' ;
   value EDAD /* Edad */
      1 = '16-24'  
      2 = '25-34'  
      3 = '35-49'  
      4 = '50-64'  
      5 = '65 i +' ;
   value PROVINCI /* Prov�ncia de Resid�ncia */
      1 = 'Barcelona'  
      2 = 'Girona'  
      3 = 'Lleida'  
      4 = 'Tarragona' ;

data a;
set qv.qv2;
   format    domest DOMEST.;
   format  cobertur COBERTUR.;
   format  ordinado ORDINADO.;
   format  internet INTERNET.;
   format     cotxe COTXE.;
   format  socialsu SOCIALSU.;
   format  desiguat DESIGUAT.;
   format  oportuni OPORTUNI.;
   format  ingresso INGRESSO.;
   format  politica POLITICA.;
   format    catala CATALA.;
   format      sexe SEXE.;
   format  naixemen NAIXEMEN.;
   format  jornlabo JORNLABO.;
   format      edad EDAD.;
   format  socialnu SOCIALSU.;
   format  provinci PROVINCI.;
run;


* Ara la base de dades de treball ser� "a" ;



