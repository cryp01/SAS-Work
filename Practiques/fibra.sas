libname fibra "C:\_SEA\Arxius SEA\Curs Master Finances\Recull bd";* ruta on es troba ubicat el fitxer;

proc format ;
   value SUF_FIBR
      1 = 'mucho'  
      2 = 'bastante'  
      3 = 'regular'  
      4 = 'poca' ;
   value PAN_BN
      0 = 'si toma pan blanco'  
      1 = 'no toma pan blanco' ;
   value PAN_INTN
      0 = 'si toma pan integral'  
      1 = 'no toma pan integral' ;
   value BISCO_N
      0 = 'si toma biscotes'  
      1 = 'no toma biscotes' ;
   value BIS_INTN
      0 = 'si toma bidscotes integrales'  
      1 = 'no toma biscotes integrales' ;
   value PAL_N
      0 = 'si toma palitos'  
      1 = 'no toma palitos' ;
   value PAL_INTN
      0 = 'si toma palitos integrales'  
      1 = 'no toma palitos integrales' ;
   value GAL_N
      0 = 'si toma galletas'  
      1 = 'no toma galletas' ;
   value GAL_INTN
      0 = 'si toma galletas integrales'  
      1 = 'no toma galletas integrales' ;
   value MAGDA_N
      0 = 'si toma magdalenas'  
      1 = 'no toma magdalenas' ;
   value BOLLER_N
      0 = 'si toma bolleria'  
      1 = 'no toma bolleria' ;
   value CERE_N
      0 = 'si toma cereales de desayuno'  
      1 = 'no toma cereales de desayuno' ;
   value CER_INTN
      0 = 'si toma cereales integrales'  
      1 = 'no toma cereales integrales' ;
   value M_ESLI_N
      0 = 'si toma müesli'  
      1 = 'no toma müesli' ;
   value PASTA_HN
      1 = 'no toma pasata hervida' ;
      0 = 'si toma pasta hervida'  
   value ARROZ_CN
      0 = 'si toma arroz cocido'  
      1 = 'no toma arroz cocido' ;
   value ARZ_INCN
      0 = 'si toma arroz cocido integral'  
      1 = 'no toma arroz cocido integral' ;
   value PATATA_N
      0 = 'si toma patatas'  
      1 = 'no toma patatas' ;
   value LEGUM_CN
      0 = 'si toma legumbres cocidas'  
      1 = 'no toma legumbres cocidas' ;
   value VER_CRUN
      0 = 'si toma verduras crudas'  
      1 = 'no toma verduras crudas' ;
   value VER_CON
      0 = 'si toma verduras cocidas'  
      1 = 'no toma verduras cocidas' ;
   value ZUMO_VN
      0 = 'si toma zumo de tomate o verduras'  
      1 = 'no toma zumo de tomate o verdura' ;
   value ACEITU_N
      0 = 'si toma aceitunas'  
      1 = 'no toma aceitunas' ;
   value FRUTA_FN
      0 = 'si toma fruta fresca'  
      1 = 'no toma fruta fresca' ;
   value ZUMO_FN
      0 = 'si toma zumo de fruto natural'  
      1 = 'no toma zumo de fruta natural' ;
   value FRUTA_AN
      0 = 'si toma fruta en almíbar'  
      1 = 'no toma fruta en almíbar' ;
   value MERMEL_N
      0 = 'si toma mermelada o confitura'  
      1 = 'no toma mermelada o confitura' ;
   value FRUT_DDN
      0 = 'si toma fruta dulce desecada'  
      1 = 'no toma fruta dulce desecada' ;
   value FRUT_SON
      0 = 'si toma fruta seca oleaginosa'  
      1 = 'no toma fruta seca oleaginosa' ;
   value RESTAU_N
      1 = 'nunca come en restaurantes' 
      0 = 'come en restaurantes'  ;
   value FASTFO_N
      1 = 'nunca come en fast food' 
      0 = 'come en fast food'  ;
   value DESAY_FN
      1 = 'nunca desayuna fuera de casa'
      0 = 'desayuna fuera de casa'  ;
   value ALMUE_FN
      1 = 'nunca almuerza fuera de casa' 
      0 = 'almuerza fuera de casa'  ;
   value CENA_FN
      1 = 'nunca cena fuera de casa' 
      0 = 'cena fuera de casa'  ;
   value COMPR_N
      0 = 'compra habitualmente la comida'  
      1 = 'nunca compra' ;
   value COCIN_N
      0 = 'cocina cuando come en casa'  
      1 = 'nunca cocina' ;
   value PRD_EFN
      0 = 'consume habitualmente productos enriquecidos con fibra'  
      1 = 'nunca consume productos enriquecidos con fibra' ;
   value SUPL_FN
      0 = 'toma habitualmente suplementos de fibra'  
      1 = 'nunca toma suplementos de fibra' ;
   value PIEL_FN
      0 = 'toma habitualmente la fruta con piel'  
      1 = 'nunca toma la fruta con piel' ;
   value DIETA_N
      0 = 'sigue habitualmente algún tipo de dieta'  
      1 = 'nunca ha seguido algún tipo de dieta' ;
   value SEXO
      1 = 'hombre'  
      2 = 'mujer' ;
   value ESTA_CIV
      5 = 'divorciado/a'
      1 = 'soltero/a'  
      2 = 'casado/a'  
      3 = 'viudo/a'  
      4 = 'separado/a'  ;
   value ESTUDIOS
      2 = 'sin estudios pero sabe leer y escribir'  
      0 = 'no procede'  
      1 = 'no sabe leer ni escribir'  
      3 = 'primaria incompleta'  
      4 = 'EGB o similar'  
      5 = 'formación profesional'  
      6 = 'bachillerato'  
      7 = 'COU o similar'  
      8 = 'estudios universitarios (medios)'  
      9 = 'estudios de grado superior' ;
   value SIT_LABO
      7 = 'servicio militar' 
      0 = 'no procede'  
      1 = 'trabaja'  
      2 = 'paro'  
      3 = 'ama de casa'  
      4 = 'jubilado'  
      5 = 'estudiante'  
      6 = 'incapacitado'  ;
   value CAT_LABO
      2 = 'empresario o autonomo con asalariados'  
      0 = 'no clasificables'  
      1 = 'no procede'  
      3 = 'empresario o autonomo sin asalariados'  
      4 = 'profesión liberal'  
      5 = 'director/gerente'  
      6 = 'técnico superior'  
      7 = 'técnico medio'  
      8 = 'resto de personal administrativo'  
      9 = 'capataz, contramaestre'  
      10 = 'obrero calificado'  
      11 = 'obrero no calificado'  
      12 = 'trabajador del sector servicios'  
      13 = 'trabajador agricola'  
      14 = 'militar' ;
run;


data a;
set fibra.fibra2;
   format  suf_fibr SUF_FIBR.;
   format  restau_n RESTAU_N.;
   format  fastfo_n FASTFO_N.;
   format  desay_fn DESAY_FN.;
   format  almue_fn ALMUE_FN.;
   format   cena_fn CENA_FN.;
   format   compr_n COMPR_N.;
   format   cocin_n COCIN_N.;
   format   prd_efn PRD_EFN.;
   format   supl_fn SUPL_FN.;
   format   piel_fn PIEL_FN.;
   format   dieta_n DIETA_N.;
   format      sexo SEXO.;
   format  esta_civ ESTA_CIV.;
   format  estudios ESTUDIOS.;
   format  sit_labo SIT_LABO.;
   format  cat_labo CAT_LABO.;
run;

proc freq data=a;
tables  cat_labo;
run;
