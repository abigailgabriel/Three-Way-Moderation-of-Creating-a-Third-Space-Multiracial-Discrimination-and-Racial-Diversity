* Encoding: UTF-8.

*Monoracism Society Interaction Variables*.
compute mono_cts = monoracism_society * cts.
compute mono_neigh = monoracism_society * Zneigh_white.
compute cts_neigh = cts * Zneigh_white.
compute mono_cts_neigh = monoracism_society * cts * Zneigh_white.

*White Phenotype Interaction Variables*.
compute white_cts = Phenotype_wh * cts.
compute white_neigh = Phenotype_wh * Zneigh_white.
compute white_cts_neigh =Phenotype_wh* cts * Zneigh_white.

*PRA Interaction Variables*.
compute PRA_cts = ZPRA * cts.
compute PRA_neigh = ZPRA * Zneigh_white.
compute PRA_cts_neigh = ZPRA * cts * Zneigh_white.

compute mono_white = monoracism_society * Phenotype_wh.
compute mono_pra = monoracism_society * ZPRA.
compute pra_white = ZPRA * Phenotype_wh.

*Monoracial POC Phenotype Interaction Variables*.
compute monopoc_cts = Phenotype_monopoc * cts.
compute monopoc_neigh = Phenotype_monopoc * Zneigh_white.
compute monopoc_cts_neigh =Phenotype_monopoc* cts * Zneigh_white.

compute mono_monopoc= monoracism_society *Phenotype_monopoc.
compute pra_monopoc = ZPRA * Phenotype_monopoc.


REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
 /MISSING LISTWISE
   /STATISTICS COEFF OUTS BCOV R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Satisfaction_life
  /METHOD=ENTER monoracism_society ZPRA CTS Zneigh_white
  /METHOD=ENTER mono_pra mono_cts mono_neigh pra_cts pra_neigh  cts_neigh     
  /METHOD=ENTER mono_cts_neigh pra_cts_neigh.

*** analyses with complete 2-way intx terms***.

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
 /MISSING LISTWISE
   /STATISTICS COEFF OUTS BCOV R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Satisfaction_life
  /METHOD=ENTER monoracism_society ZPRA Phenotype_wh CTS Zneigh_white
  /METHOD=ENTER mono_pra mono_white mono_cts mono_neigh pra_white pra_cts 
pra_neigh white_cts white_neigh cts_neigh     
  /METHOD=ENTER mono_cts_neigh pra_cts_neigh white_cts_neigh.

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
 /MISSING LISTWISE
   /STATISTICS COEFF OUTS BCOV R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT accept_wh
  /METHOD=ENTER monoracism_society ZPRA Phenotype_wh CTS Zneigh_white
  /METHOD=ENTER mono_pra mono_white mono_cts mono_neigh pra_white pra_cts 
pra_neigh white_cts white_neigh cts_neigh     
  /METHOD=ENTER mono_cts_neigh pra_cts_neigh white_cts_neigh.

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
 /MISSING LISTWISE
   /STATISTICS COEFF OUTS BCOV R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT accept_pocbackground
  /METHOD=ENTER monoracism_society ZPRA Phenotype_wh CTS Zneigh_white
  /METHOD=ENTER mono_pra mono_white mono_cts mono_neigh pra_white pra_cts 
pra_neigh white_cts white_neigh cts_neigh     
  /METHOD=ENTER mono_cts_neigh pra_cts_neigh white_cts_neigh.

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
 /MISSING LISTWISE
   /STATISTICS COEFF OUTS BCOV R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT common_wh
  /METHOD=ENTER monoracism_society ZPRA Phenotype_wh CTS Zneigh_white
  /METHOD=ENTER mono_pra mono_white mono_cts mono_neigh pra_white pra_cts 
pra_neigh white_cts white_neigh cts_neigh     
  /METHOD=ENTER mono_cts_neigh pra_cts_neigh white_cts_neigh.

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
 /MISSING LISTWISE
   /STATISTICS COEFF OUTS BCOV R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT common_poc
  /METHOD=ENTER monoracism_society ZPRA Phenotype_wh CTS Zneigh_white
  /METHOD=ENTER mono_pra mono_white mono_cts mono_neigh pra_white pra_cts 
pra_neigh white_cts white_neigh cts_neigh     
  /METHOD=ENTER mono_cts_neigh pra_cts_neigh white_cts_neigh.



**************excluding some two way interactions*************.
REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
 /MISSING LISTWISE
   /STATISTICS COEFF OUTS BCOV R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Satisfaction_life
  /METHOD=ENTER Zneigh_white CTS monoracism_society Phenotype_wh ZPRA
  /METHOD=ENTER mono_cts white_cts pra_cts mono_neigh white_neigh  pra_neigh cts_neigh
  /METHOD=ENTER mono_cts_neigh white_cts_neigh pra_cts_neigh.

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
 /MISSING LISTWISE
   /STATISTICS COEFF OUTS BCOV R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT accept_wh
  /METHOD=ENTER Zneigh_white CTS monoracism_society Phenotype_wh ZPRA
  /METHOD=ENTER mono_cts white_cts pra_cts mono_neigh white_neigh  pra_neigh cts_neigh
  /METHOD=ENTER mono_cts_neigh white_cts_neigh pra_cts_neigh.


REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
 /MISSING LISTWISE
   /STATISTICS COEFF OUTS BCOV R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT accept_pocbackground
  /METHOD=ENTER Zneigh_white CTS monoracism_society Phenotype_wh ZPRA
  /METHOD=ENTER mono_cts white_cts pra_cts mono_neigh white_neigh  pra_neigh cts_neigh
  /METHOD=ENTER mono_cts_neigh white_cts_neigh pra_cts_neigh.

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
 /MISSING LISTWISE
   /STATISTICS COEFF OUTS BCOV R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT common_wh
  /METHOD=ENTER Zneigh_white CTS monoracism_society Phenotype_wh ZPRA
  /METHOD=ENTER mono_cts white_cts pra_cts mono_neigh white_neigh  pra_neigh cts_neigh
  /METHOD=ENTER mono_cts_neigh white_cts_neigh pra_cts_neigh.

REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
 /MISSING LISTWISE
   /STATISTICS COEFF OUTS BCOV R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT common_poc
  /METHOD=ENTER Zneigh_white CTS monoracism_society Phenotype_wh ZPRA
  /METHOD=ENTER mono_cts white_cts pra_cts mono_neigh white_neigh  pra_neigh cts_neigh
  /METHOD=ENTER mono_cts_neigh white_cts_neigh pra_cts_neigh.




















*White Neighborhood and CTS Moderating Monoracism Society*.
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ZSatisfaction_life
  /METHOD=ENTER Zneigh_white CTS monoracism_society
  /METHOD=ENTER mono_cts mono_neigh cts_neigh
  /METHOD=ENTER mono_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ZSatisfaction_family
  /METHOD=ENTER Zneigh_white CTS monoracism_society
  /METHOD=ENTER mono_cts mono_neigh cts_neigh
  /METHOD=ENTER mono_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ZSatisfaction_cmty
  /METHOD=ENTER Zneigh_white CTS monoracism_society
  /METHOD=ENTER mono_cts mono_neigh cts_neigh
  /METHOD=ENTER mono_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zaccept_wh
  /METHOD=ENTER Zneigh_white CTS monoracism_society
  /METHOD=ENTER mono_cts mono_neigh cts_neigh
  /METHOD=ENTER mono_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zaccept_pocbackground
  /METHOD=ENTER Zneigh_white CTS monoracism_society
  /METHOD=ENTER mono_cts mono_neigh cts_neigh
  /METHOD=ENTER mono_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zcommon_wh
  /METHOD=ENTER Zneigh_white CTS monoracism_society
  /METHOD=ENTER mono_cts mono_neigh cts_neigh
  /METHOD=ENTER mono_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zcommon_poc
  /METHOD=ENTER Zneigh_white CTS monoracism_society
  /METHOD=ENTER mono_cts mono_neigh cts_neigh
  /METHOD=ENTER mono_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zmultiracial_exclusion
  /METHOD=ENTER Zneigh_white CTS monoracism_society
  /METHOD=ENTER mono_cts mono_neigh cts_neigh
  /METHOD=ENTER mono_cts_neigh.


*White Neighborhood and CTS Moderating Multiracial Phenotype*.
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ZSatisfaction_life
  /METHOD=ENTER Zneigh_white CTS  Phenotype_multiracial
  /METHOD=ENTER multi_cts multi_neigh cts_neigh
  /METHOD=ENTER multi_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ZSatisfaction_family
  /METHOD=ENTER Zneigh_white CTS  Phenotype_multiracial
  /METHOD=ENTER multi_cts multi_neigh cts_neigh
  /METHOD=ENTER multi_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ZSatisfaction_cmty
  /METHOD=ENTER Zneigh_white CTS  Phenotype_multiracial
  /METHOD=ENTER multi_cts multi_neigh cts_neigh
  /METHOD=ENTER multi_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zaccept_wh
  /METHOD=ENTER Zneigh_white CTS  Phenotype_multiracial
  /METHOD=ENTER multi_cts multi_neigh cts_neigh
  /METHOD=ENTER multi_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zaccept_pocbackground
  /METHOD=ENTER Zneigh_white CTS  Phenotype_multiracial
  /METHOD=ENTER multi_cts multi_neigh cts_neigh
  /METHOD=ENTER multi_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zcommon_wh
  /METHOD=ENTER Zneigh_white CTS  Phenotype_multiracial
  /METHOD=ENTER multi_cts multi_neigh cts_neigh
  /METHOD=ENTER multi_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zcommon_poc
  /METHOD=ENTER Zneigh_white CTS  Phenotype_multiracial
  /METHOD=ENTER multi_cts multi_neigh cts_neigh
  /METHOD=ENTER multi_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zmultiracial_exclusion
  /METHOD=ENTER Zneigh_white CTS  Phenotype_multiracial
  /METHOD=ENTER multi_cts multi_neigh cts_neigh
  /METHOD=ENTER multi_cts_neigh.


*White Neighborhood and CTS Moderating White Phenotype*.
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ZSatisfaction_life
  /METHOD=ENTER Zneigh_white CTS Phenotype_wh
  /METHOD=ENTER white_cts white_neigh cts_neigh
  /METHOD=ENTER white_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ZSatisfaction_family
  /METHOD=ENTER Zneigh_white CTS Phenotype_wh
  /METHOD=ENTER white_cts white_neigh cts_neigh
  /METHOD=ENTER white_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ZSatisfaction_cmty
  /METHOD=ENTER Zneigh_white CTS Phenotype_wh
  /METHOD=ENTER white_cts white_neigh cts_neigh
  /METHOD=ENTER white_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zaccept_wh
  /METHOD=ENTER Zneigh_white CTS Phenotype_wh
  /METHOD=ENTER white_cts white_neigh cts_neigh
  /METHOD=ENTER white_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zaccept_pocbackground
  /METHOD=ENTER Zneigh_white CTS Phenotype_wh
  /METHOD=ENTER white_cts white_neigh cts_neigh
  /METHOD=ENTER white_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zcommon_wh
  /METHOD=ENTER Zneigh_white CTS Phenotype_wh
  /METHOD=ENTER white_cts white_neigh cts_neigh
  /METHOD=ENTER white_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zcommon_poc
  /METHOD=ENTER Zneigh_white CTS Phenotype_wh
  /METHOD=ENTER white_cts white_neigh cts_neigh
  /METHOD=ENTER white_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zmultiracial_exclusion
  /METHOD=ENTER Zneigh_white CTS Phenotype_wh
  /METHOD=ENTER white_cts white_neigh cts_neigh
  /METHOD=ENTER white_cts_neigh.

*White Neighborhood and CTS Moderating PRA*.
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ZSatisfaction_life
  /METHOD=ENTER Zneigh_white CTS ZPRA
  /METHOD=ENTER PRA_cts PRA_neigh cts_neigh
  /METHOD=ENTER PRA_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ZSatisfaction_family
  /METHOD=ENTER Zneigh_white CTS ZPRA
  /METHOD=ENTER PRA_cts PRA_neigh cts_neigh
  /METHOD=ENTER PRA_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ZSatisfaction_cmty
  /METHOD=ENTER Zneigh_white CTS ZPRA
  /METHOD=ENTER PRA_cts PRA_neigh cts_neigh
  /METHOD=ENTER PRA_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zaccept_wh
  /METHOD=ENTER Zneigh_white CTS ZPRA
  /METHOD=ENTER PRA_cts PRA_neigh cts_neigh
  /METHOD=ENTER PRA_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zaccept_pocbackground
  /METHOD=ENTER Zneigh_white CTS ZPRA
  /METHOD=ENTER PRA_cts PRA_neigh cts_neigh
  /METHOD=ENTER PRA_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zcommon_wh
  /METHOD=ENTER Zneigh_white CTS ZPRA
  /METHOD=ENTER PRA_cts PRA_neigh cts_neigh
  /METHOD=ENTER PRA_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zcommon_poc
  /METHOD=ENTER Zneigh_white CTS ZPRA
  /METHOD=ENTER PRA_cts PRA_neigh cts_neigh
  /METHOD=ENTER PRA_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zmultiracial_exclusion
  /METHOD=ENTER Zneigh_white CTS ZPRA
  /METHOD=ENTER PRA_cts PRA_neigh cts_neigh
  /METHOD=ENTER PRA_cts_neigh.



--------------------------------------------------------------------------------------------------------------------

*White Neighborhood and CTS Moderating Monoracism & White Phenotype*.
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ZSatisfaction_life
  /METHOD=ENTER Zneigh_white CTS monoracism_society Phenotype_wh
  /METHOD=ENTER mono_cts white_cts mono_neigh white_neigh cts_neigh mono_white
  /METHOD=ENTER mono_cts_neigh white_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ZSatisfaction_family
  /METHOD=ENTER Zneigh_white CTS monoracism_society Phenotype_wh
  /METHOD=ENTER mono_cts white_cts mono_neigh white_neigh cts_neigh mono_white
  /METHOD=ENTER mono_cts_neigh white_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ZSatisfaction_cmty
  /METHOD=ENTER Zneigh_white CTS monoracism_society Phenotype_wh
  /METHOD=ENTER mono_cts white_cts mono_neigh white_neigh cts_neigh mono_white
  /METHOD=ENTER mono_cts_neigh white_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zaccept_wh
  /METHOD=ENTER Zneigh_white CTS monoracism_society Phenotype_wh
  /METHOD=ENTER mono_cts white_cts mono_neigh white_neigh cts_neigh mono_white
  /METHOD=ENTER mono_cts_neigh white_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zaccept_pocbackground
  /METHOD=ENTER Zneigh_white CTS monoracism_society Phenotype_wh
  /METHOD=ENTER mono_cts white_cts mono_neigh white_neigh cts_neigh mono_white
  /METHOD=ENTER mono_cts_neigh white_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zcommon_wh
  /METHOD=ENTER Zneigh_white CTS monoracism_society Phenotype_wh
  /METHOD=ENTER mono_cts white_cts mono_neigh white_neigh cts_neigh mono_white
  /METHOD=ENTER mono_cts_neigh white_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zcommon_poc
  /METHOD=ENTER Zneigh_white CTS monoracism_society Phenotype_wh
  /METHOD=ENTER mono_cts white_cts mono_neigh white_neigh cts_neigh mono_white
  /METHOD=ENTER mono_cts_neigh white_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zmultiracial_exclusion
  /METHOD=ENTER Zneigh_white CTS monoracism_society Phenotype_wh
  /METHOD=ENTER mono_cts white_cts mono_neigh white_neigh cts_neigh mono_white
  /METHOD=ENTER mono_cts_neigh white_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zfriends_white
  /METHOD=ENTER Zneigh_white CTS monoracism_society Phenotype_wh
  /METHOD=ENTER mono_cts white_cts mono_neigh white_neigh cts_neigh mono_white
  /METHOD=ENTER mono_cts_neigh white_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zfriends_monopoc
  /METHOD=ENTER Zneigh_white CTS monoracism_society Phenotype_wh
  /METHOD=ENTER mono_cts white_cts mono_neigh white_neigh cts_neigh mono_white
  /METHOD=ENTER mono_cts_neigh white_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zfriends_multiracial
  /METHOD=ENTER Zneigh_white CTS monoracism_society Phenotype_wh
  /METHOD=ENTER mono_cts white_cts mono_neigh white_neigh cts_neigh mono_white
  /METHOD=ENTER mono_cts_neigh white_cts_neigh.

*White Neighborhood and CTS Moderating Monoracism & PRA*.
REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
 /MISSING LISTWISE
   /STATISTICS COEFF OUTS BCOV R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ZSatisfaction_life
  /METHOD=ENTER Zneigh_white CTS monoracism_society ZPRA
  /METHOD=ENTER mono_cts pra_cts mono_neigh pra_neigh cts_neigh mono_pra
  /METHOD=ENTER mono_cts_neigh pra_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ZSatisfaction_family
  /METHOD=ENTER Zneigh_white CTS monoracism_society ZPRA
  /METHOD=ENTER mono_cts pra_cts mono_neigh pra_neigh cts_neigh mono_pra
  /METHOD=ENTER mono_cts_neigh pra_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ZSatisfaction_cmty
  /METHOD=ENTER Zneigh_white CTS monoracism_society ZPRA
  /METHOD=ENTER mono_cts pra_cts mono_neigh pra_neigh cts_neigh mono_pra
  /METHOD=ENTER mono_cts_neigh pra_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zaccept_wh
  /METHOD=ENTER Zneigh_white CTS monoracism_society ZPRA
  /METHOD=ENTER mono_cts pra_cts mono_neigh pra_neigh cts_neigh mono_pra
  /METHOD=ENTER mono_cts_neigh pra_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zaccept_pocbackground
  /METHOD=ENTER Zneigh_white CTS monoracism_society ZPRA
  /METHOD=ENTER mono_cts pra_cts mono_neigh pra_neigh cts_neigh mono_pra
  /METHOD=ENTER mono_cts_neigh pra_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zcommon_wh
  /METHOD=ENTER Zneigh_white CTS monoracism_society ZPRA
  /METHOD=ENTER mono_cts pra_cts mono_neigh pra_neigh cts_neigh mono_pra
  /METHOD=ENTER mono_cts_neigh pra_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zcommon_poc
  /METHOD=ENTER Zneigh_white CTS monoracism_society ZPRA
  /METHOD=ENTER mono_cts pra_cts mono_neigh pra_neigh cts_neigh mono_pra
  /METHOD=ENTER mono_cts_neigh pra_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zmultiracial_exclusion
  /METHOD=ENTER Zneigh_white CTS monoracism_society ZPRA
  /METHOD=ENTER mono_cts pra_cts mono_neigh pra_neigh cts_neigh mono_pra
  /METHOD=ENTER mono_cts_neigh pra_cts_neigh.





*****added monoracial poc instead of white poc***

  REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ZSatisfaction_life
  /METHOD=ENTER Zneigh_white CTS monoracism_society  Phenotype_monopoc ZPRA
  /METHOD=ENTER mono_cts  mono_neigh  cts_neigh  pra_cts pra_neigh mono_pra  monopoc_cts monopoc_neigh mono_monopoc pra_monopoc
  /METHOD=ENTER mono_cts_neigh  monopoc_cts_neigh pra_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ZSatisfaction_family
  /METHOD=ENTER Zneigh_white CTS monoracism_society  Phenotype_monopoc ZPRA
  /METHOD=ENTER mono_cts  mono_neigh  cts_neigh  pra_cts pra_neigh mono_pra  monopoc_cts monopoc_neigh mono_monopoc pra_monopoc
  /METHOD=ENTER mono_cts_neigh  monopoc_cts_neigh pra_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ZSatisfaction_cmty
  /METHOD=ENTER Zneigh_white CTS monoracism_society  Phenotype_monopoc ZPRA
  /METHOD=ENTER mono_cts  mono_neigh  cts_neigh  pra_cts pra_neigh mono_pra  monopoc_cts monopoc_neigh mono_monopoc pra_monopoc
  /METHOD=ENTER mono_cts_neigh  monopoc_cts_neigh pra_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zaccept_wh
  /METHOD=ENTER Zneigh_white CTS monoracism_society  Phenotype_monopoc ZPRA
  /METHOD=ENTER mono_cts  mono_neigh  cts_neigh  pra_cts pra_neigh mono_pra  monopoc_cts monopoc_neigh mono_monopoc pra_monopoc
  /METHOD=ENTER mono_cts_neigh  monopoc_cts_neigh pra_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zaccept_pocbackground
  /METHOD=ENTER Zneigh_white CTS monoracism_society  Phenotype_monopoc ZPRA
  /METHOD=ENTER mono_cts  mono_neigh  cts_neigh  pra_cts pra_neigh mono_pra  monopoc_cts monopoc_neigh mono_monopoc pra_monopoc
  /METHOD=ENTER mono_cts_neigh  monopoc_cts_neigh pra_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zcommon_wh
  /METHOD=ENTER Zneigh_white CTS monoracism_society  Phenotype_monopoc ZPRA
  /METHOD=ENTER mono_cts  mono_neigh  cts_neigh  pra_cts pra_neigh mono_pra  monopoc_cts monopoc_neigh mono_monopoc pra_monopoc
  /METHOD=ENTER mono_cts_neigh  monopoc_cts_neigh pra_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zcommon_poc
  /METHOD=ENTER Zneigh_white CTS monoracism_society  Phenotype_monopoc ZPRA
  /METHOD=ENTER mono_cts  mono_neigh  cts_neigh  pra_cts pra_neigh mono_pra  monopoc_cts monopoc_neigh mono_monopoc pra_monopoc
  /METHOD=ENTER mono_cts_neigh  monopoc_cts_neigh pra_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zmultiracial_exclusion
  /METHOD=ENTER Zneigh_white CTS monoracism_society  Phenotype_monopoc ZPRA
  /METHOD=ENTER mono_cts  mono_neigh  cts_neigh  pra_cts pra_neigh mono_pra  monopoc_cts monopoc_neigh mono_monopoc pra_monopoc
  /METHOD=ENTER mono_cts_neigh  monopoc_cts_neigh pra_cts_neigh.







*Final model*

*Condense model to include phen_wh and PRA and mono in same model.
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ZSatisfaction_life
  /METHOD=ENTER Zneigh_white CTS monoracism_society Phenotype_wh ZPRA
  /METHOD=ENTER mono_cts white_cts mono_neigh white_neigh cts_neigh mono_white pra_cts pra_neigh mono_pra pra_white
  /METHOD=ENTER mono_cts_neigh white_cts_neigh pra_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ZSatisfaction_family
  /METHOD=ENTER Zneigh_white CTS monoracism_society Phenotype_wh ZPRA
  /METHOD=ENTER mono_cts white_cts mono_neigh white_neigh cts_neigh mono_white pra_cts pra_neigh mono_pra pra_white
  /METHOD=ENTER mono_cts_neigh white_cts_neigh pra_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT ZSatisfaction_cmty
  /METHOD=ENTER Zneigh_white CTS monoracism_society Phenotype_wh ZPRA
  /METHOD=ENTER mono_cts white_cts mono_neigh white_neigh cts_neigh mono_white pra_cts pra_neigh mono_pra pra_white
  /METHOD=ENTER mono_cts_neigh white_cts_neigh pra_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zaccept_wh
  /METHOD=ENTER Zneigh_white CTS monoracism_society Phenotype_wh ZPRA
  /METHOD=ENTER mono_cts white_cts mono_neigh white_neigh cts_neigh mono_white pra_cts pra_neigh mono_pra pra_white
  /METHOD=ENTER mono_cts_neigh white_cts_neigh pra_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zaccept_pocbackground
  /METHOD=ENTER Zneigh_white CTS monoracism_society Phenotype_wh ZPRA
  /METHOD=ENTER mono_cts white_cts mono_neigh white_neigh cts_neigh mono_white pra_cts pra_neigh mono_pra pra_white
  /METHOD=ENTER mono_cts_neigh white_cts_neigh pra_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zcommon_wh
  /METHOD=ENTER Zneigh_white CTS monoracism_society Phenotype_wh ZPRA
  /METHOD=ENTER mono_cts white_cts mono_neigh white_neigh cts_neigh mono_white pra_cts pra_neigh mono_pra pra_white
  /METHOD=ENTER mono_cts_neigh white_cts_neigh pra_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zcommon_poc
  /METHOD=ENTER Zneigh_white CTS monoracism_society Phenotype_wh ZPRA
  /METHOD=ENTER mono_cts white_cts mono_neigh white_neigh cts_neigh mono_white pra_cts pra_neigh mono_pra pra_white
  /METHOD=ENTER mono_cts_neigh white_cts_neigh pra_cts_neigh.

REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Zmultiracial_exclusion
  /METHOD=ENTER Zneigh_white CTS monoracism_society Phenotype_wh ZPRA
  /METHOD=ENTER mono_cts white_cts mono_neigh white_neigh cts_neigh mono_white pra_cts pra_neigh mono_pra pra_white
  /METHOD=ENTER mono_cts_neigh white_cts_neigh pra_cts_neigh.



+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.
Simple Slopes: White Neigh x Creating a Third Space Moderating Monoracism on Life Sat
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.

compute neighabove = (Zneigh_white) - 1.0.
compute neighbelow = (Zneigh_white) - (-1.0).
compute ctsabove = (CTS) - 1.0.
compute ctsbelow = (CTS) - 0.
compute mdctsb = monoracism_society * ctsbelow.
compute mdctsa = monoracism_society * ctsabove.
compute mdneigha = monoracism_society * neighabove.
compute mdneighb = monoracism_society * neighbelow.
compute ctsbneighb = ctsbelow * neighbelow.
compute ctsbneigha = ctsbelow * neighabove.
compute ctsaneighb = ctsabove * neighbelow.
compute ctsaneigha = ctsabove * neighabove.
compute mdctsbneighb = monoracism_society * ctsbelow * neighbelow.
compute mdctsbneigha = monoracism_society * ctsbelow * neighabove.
compute mdctsaneighb = monoracism_society * ctsabove * neighbelow.
compute mdctsaneigha = monoracism_society * ctsabove * neighabove.

***TESTING HI SUBD/HI CTS ON MD***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT ZSatisfaction_life 
/METHOD=ENTER monoracism_society ctsabove neighabove mdctsa mdneigha ctsaneigha mdctsaneigha.

***TESTING LO SUBD/HI CTS ON MD***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT ZSatisfaction_life 
/METHOD=ENTER monoracism_society ctsabove neighbelow mdctsa mdneighb ctsaneighb mdctsaneighb.

***TESTING HI SUBD/LO CTS ON MD***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT ZSatisfaction_life 
/METHOD=ENTER monoracism_society  ctsbelow neighabove mdctsb mdneigha ctsbneigha mdctsbneigha.

***TESTING LO SUBD/LO CTS ON MD***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT ZSatisfaction_life 
/METHOD=ENTER monoracism_society  ctsbelow neighbelow mdctsb mdneighb ctsbneighb mdctsbneighb.




+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.
Simple Slopes: White Neigh x Creating a Third Space Moderating White Phenotype on Accpted by POC
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.

compute neighabove = (Zneigh_white) - 1.0.
compute neighbelow = (Zneigh_white) - (-1.0).
compute ctsabove = (CTS) - 1.0.
compute ctsbelow = (CTS) - 0.
compute whctsb = Phenotype_wh * ctsbelow.
compute whctsa = Phenotype_wh * ctsabove.
compute whneigha = Phenotype_wh * neighabove.
compute whneighb = Phenotype_wh * neighbelow.
compute ctsbneighb = ctsbelow * neighbelow.
compute ctsbneigha = ctsbelow * neighabove.
compute ctsaneighb = ctsabove * neighbelow.
compute ctsaneigha = ctsabove * neighabove.
compute whctsbneighb = Phenotype_wh * ctsbelow * neighbelow.
compute whctsbneigha = Phenotype_wh * ctsbelow * neighabove.
compute whctsaneighb = Phenotype_wh * ctsabove * neighbelow.
compute whctsaneigha = Phenotype_wh* ctsabove * neighabove.

***TESTING HI SUBD/HI CTS ON MD***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT Zaccept_pocbackground
/METHOD=ENTER Phenotype_wh ctsabove neighabove whctsa whneigha ctsaneigha whctsaneigha.

***TESTING LO SUBD/HI CTS ON MD***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT Zaccept_pocbackground
/METHOD=ENTER Phenotype_wh ctsabove neighbelow whctsa whneighb ctsaneighb whctsaneighb.

***TESTING HI SUBD/LO CTS ON MD***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT Zaccept_pocbackground
/METHOD=ENTER Phenotype_wh ctsbelow neighabove whctsb whneigha ctsbneigha whctsbneigha.

***TESTING LO SUBD/LO CTS ON MD***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT Zaccept_pocbackground
/METHOD=ENTER Phenotype_wh ctsbelow neighbelow whctsb whneighb ctsbneighb whctsbneighb.

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.
Simple Slopes: White Neigh x Creating a Third Space Moderating PRA on Accpted by POC
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.

compute neighabove = (Zneigh_white) - 1.0.
compute neighbelow = (Zneigh_white) - (-1.0).
compute ctsabove = (CTS) - 1.0.
compute ctsbelow = (CTS) - 0.
compute practsb = ZPRA * ctsbelow.
compute practsa = ZPRA * ctsabove.
compute praneigha = ZPRA * neighabove.
compute praneighb = ZPRA * neighbelow.
compute ctsbneighb = ctsbelow * neighbelow.
compute ctsbneigha = ctsbelow * neighabove.
compute ctsaneighb = ctsabove * neighbelow.
compute ctsaneigha = ctsabove * neighabove.
compute practsbneighb = ZPRA * ctsbelow * neighbelow.
compute practsbneigha = ZPRA * ctsbelow * neighabove.
compute practsaneighb = ZPRA * ctsabove * neighbelow.
compute practsaneigha = ZPRA* ctsabove * neighabove.

***TESTING HI SUBD/HI CTS ON MD***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT Zaccept_pocbackground
/METHOD=ENTER ZPRA ctsabove neighabove practsa praneigha ctsaneigha practsaneigha.

***TESTING LO SUBD/HI CTS ON MD***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT Zaccept_pocbackground
/METHOD=ENTER ZPRA ctsabove neighbelow practsa praneighb ctsaneighb practsaneighb.

***TESTING HI SUBD/LO CTS ON MD***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT Zaccept_pocbackground
/METHOD=ENTER ZPRA ctsbelow neighabove practsb praneigha ctsbneigha practsbneigha.

***TESTING LO SUBD/LO CTS ON MD***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT Zaccept_pocbackground
/METHOD=ENTER ZPRA ctsbelow neighbelow practsb praneighb ctsbneighb practsbneighb.

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.
Simple Slopes: White Neigh x Creating a Third Space Moderating Monoracism from Society on Common with Whites
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.

***TESTING HI SUBD/HI CTS ON MD***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT Zcommon_wh
/METHOD=ENTER monoracism_society ctsabove neighabove mdctsa mdneigha ctsaneigha mdctsaneigha.

***TESTING LO SUBD/HI CTS ON MD***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT Zcommon_wh
/METHOD=ENTER monoracism_society ctsabove neighbelow mdctsa mdneighb ctsaneighb mdctsaneighb.

***TESTING HI SUBD/LO CTS ON MD***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT Zcommon_wh 
/METHOD=ENTER monoracism_society  ctsbelow neighabove mdctsb mdneigha ctsbneigha mdctsbneigha.

***TESTING LO SUBD/LO CTS ON MD***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT Zcommon_wh
/METHOD=ENTER monoracism_society  ctsbelow neighbelow mdctsb mdneighb ctsbneighb mdctsbneighb.
