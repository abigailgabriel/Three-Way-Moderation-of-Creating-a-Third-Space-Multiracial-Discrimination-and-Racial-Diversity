* Encoding: UTF-8.
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.
3-Way Interaction Analysis: Subjective Diversity x Creating a Third Space Moderating Risk Factors on Outcomes
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.

REGRESSION
 /DESCRIPTIVES MEAN STDDEV CORR SIG N
/MISSING LISTWISE
   /STATISTICS COEFF OUTS BCOV R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN
  /DEPENDENT dass_total
  /METHOD=ENTER Zmultiracial_discrimination5 Zmembership_questioned5 Zthird_space5 Zdiverse_comnty
  /METHOD=ENTER mod_discrimination_space mod_questioned_space mod_questioned_diversecomnty mod_discrimination_diversecomnty mod_space_diversecomnty
  /METHOD=ENTER mod_discrimination_diversecomnty_space mod_questioned_diversecomnty_space.

REGRESSION
 /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
   /STATISTICS COEFF OUTS BCOV R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN
  /DEPENDENT positive_scale
  /METHOD=ENTER Zmultiracial_discrimination5 Zmembership_questioned5 Zthird_space5 Zdiverse_comnty
  /METHOD=ENTER mod_discrimination_space mod_questioned_space mod_questioned_diversecomnty mod_discrimination_diversecomnty mod_space_diversecomnty
  /METHOD=ENTER mod_discrimination_diversecomnty_space mod_questioned_diversecomnty_space.

REGRESSION
 /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
   /STATISTICS COEFF OUTS BCOV R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN
  /DEPENDENT negative_scale
  /METHOD=ENTER Zmultiracial_discrimination5 Zmembership_questioned5 Zthird_space5 Zdiverse_comnty
  /METHOD=ENTER mod_discrimination_space mod_questioned_space mod_questioned_diversecomnty mod_discrimination_diversecomnty mod_space_diversecomnty
  /METHOD=ENTER mod_discrimination_diversecomnty_space mod_questioned_diversecomnty_space.

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.
3-Way Interaction Analysis: Objective Diversity x Creating a Third Space Moderating Risk Factors on Outcomes   
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.

REGRESSION
 /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
   /STATISTICS COEFF OUTS BCOV R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN
  /DEPENDENT dass_total
  /METHOD=ENTER Zmultiracial_discrimination5 Zmembership_questioned5 Zthird_space5 Zzipcode_color
  /METHOD=ENTER mod_discrimination_space mod_questioned_space mod_questioned_zipcodecolor mod_discrimination_zipcodecolor mod_space_zipcodecolor 
  /METHOD=ENTER mod_discrimination_zipcodecolor_space mod_questioned_zipcodecolor_space.

REGRESSION
 /DESCRIPTIVES MEAN STDDEV CORR SIG N 
 /MISSING LISTWISE
   /STATISTICS COEFF OUTS R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN
  /DEPENDENT positive_scale
  /METHOD=ENTER Zmultiracial_discrimination5 Zmembership_questioned5 Zthird_space5 Zzipcode_color
  /METHOD=ENTER mod_discrimination_space mod_questioned_space mod_questioned_zipcodecolor mod_discrimination_zipcodecolor mod_space_zipcodecolor 
  /METHOD=ENTER mod_discrimination_zipcodecolor_space mod_questioned_zipcodecolor_space.

REGRESSION
 /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
   /STATISTICS COEFF OUTS R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN
  /DEPENDENT negative_scale
  /METHOD=ENTER Zmultiracial_discrimination5 Zmembership_questioned5 Zthird_space5 Zzipcode_color
  /METHOD=ENTER mod_discrimination_space mod_questioned_space mod_questioned_zipcodecolor mod_discrimination_zipcodecolor mod_space_zipcodecolor 
  /METHOD=ENTER mod_discrimination_zipcodecolor_space mod_questioned_zipcodecolor_space.

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.
Simple Slopes: Subjective Diversity x Creating a Third Space Moderating Multiracial Discrimination on DASS Total
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.

***TESTING HI SUBD/HI CTS ON MD***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT dass_total 
/METHOD=ENTER Zmultiracial_discrimination5 ctsabove subdabove mdctsa mdsubda ctsasubda mdctsasubda.

***TESTING LO SUBD/HI CTS ON MD***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT dass_total
/METHOD=ENTER Zmultiracial_discrimination5 ctsabove subdbelow mdctsa mdsubdb ctsasubdb mdctsasubdb.

***TESTING HI SUBD/LO CTS ON MD***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT dass_total
/METHOD=ENTER Zmultiracial_discrimination5 ctsbelow subdabove mdctsb mdsubda ctsbsubda mdctsbsubda.

***TESTING LO SUBD/LO CTS ON MD***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT dass_total
/METHOD=ENTER Zmultiracial_discrimination5 ctsbelow subdbelow mdctsb mdsubdb ctsbsubdb mdctsbsubdb.

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.
Simple Slopes: Subjective Diversity x Creating a Third Space Moderating Perceived Racial Ambiguity on DASS Total
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.

***TESTING HI SUBD/HI CTS ON PRA***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT dass_total 
/METHOD=ENTER Zmembership_questioned5 ctsabove subdabove practsa prasubda ctsasubda practsasubda.

***TESTING LO SUBD/HI CTS ON PRA***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT dass_total
/METHOD=ENTER Zmembership_questioned5 ctsabove subdbelow practsa prasubdb ctsasubdb practsasubdb.

***TESTING HI SUBD/LO CTS ON PRA***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT dass_total
/METHOD=ENTER Zmembership_questioned5 ctsbelow subdabove practsb prasubda ctsbsubda practsbsubda.

***TESTING LO SUBD/LO CTS ON PRA***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT dass_total
/METHOD=ENTER Zmembership_questioned5 ctsbelow subdbelow practsb prasubdb ctsbsubdb practsbsubdb.

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.
Simple Slopes: Subjective Diversity x Creating a Third Space Moderating Perceived Racial Ambiguity on Negative Affect
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.

***TESTING HI SUBD/HI CTS ON PRA***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT negative_scale 
/METHOD=ENTER Zmembership_questioned5 ctsabove subdabove practsa prasubda ctsasubda practsasubda.

***TESTING LO SUBD/HI CTS ON PRA***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT negative_scale
/METHOD=ENTER Zmembership_questioned5 ctsabove subdbelow practsa prasubdb ctsasubdb practsasubdb.

***TESTING HI SUBD/LO CTS ON PRA***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT negative_scale
/METHOD=ENTER Zmembership_questioned5 ctsbelow subdabove practsb prasubda ctsbsubda practsbsubda.

***TESTING LO SUBD/LO CTS ON PRA***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT negative_scale
/METHOD=ENTER Zmembership_questioned5 ctsbelow subdbelow practsb prasubdb ctsbsubdb practsbsubdb.
