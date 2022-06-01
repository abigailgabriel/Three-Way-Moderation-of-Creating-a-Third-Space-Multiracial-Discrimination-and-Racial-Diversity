* Encoding: UTF-8.
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.
3-Way Interaction Analysis: Subjective Diversity x Resilience Factors Moderating Risk Factors on Outcomes
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.

REGRESSION
 /DESCRIPTIVES MEAN STDDEV CORR SIG N
/MISSING LISTWISE
   /STATISTICS COEFF OUTS BCOV R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN
  /DEPENDENT dass_total
  /METHOD=ENTER Zmultiracial_discrimination5 Zmembership_questioned5 Zmulticultural_engagement5 Zshift_expression5 Zthird_space5 Zdiverse_comnty
  /METHOD=ENTER mod_discrimination_engagement mod_discrimination_expressions mod_discrimination_space mod_questioned_engagement mod_questioned_expression mod_questioned_space
 mod_questioned_diversecomnty mod_discrimination_diversecomnty mod_engagement_diversecomnty mod_expression_diversecomnty mod_space_diversecomnty
  /METHOD=ENTER mod_discrimination_diversecomnty_engagement mod_discrimination_diversecomnty_expression mod_discrimination_diversecomnty_space mod_questioned_diversecomnty_engagement 
mod_questioned_diversecomnty_expression mod_questioned_diversecomnty_space.

REGRESSION
 /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
   /STATISTICS COEFF OUTS BCOV R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN
  /DEPENDENT positive_scale
  /METHOD=ENTER Zmultiracial_discrimination5 Zmembership_questioned5 Zmulticultural_engagement5 Zshift_expression5 Zthird_space5 Zdiverse_comnty
  /METHOD=ENTER mod_discrimination_engagement mod_discrimination_expressions mod_discrimination_space mod_questioned_engagement mod_questioned_expression mod_questioned_space
 mod_questioned_diversecomnty mod_discrimination_diversecomnty mod_engagement_diversecomnty mod_expression_diversecomnty mod_space_diversecomnty
  /METHOD=ENTER mod_discrimination_diversecomnty_engagement mod_discrimination_diversecomnty_expression mod_discrimination_diversecomnty_space mod_questioned_diversecomnty_engagement 
mod_questioned_diversecomnty_expression mod_questioned_diversecomnty_space.

REGRESSION
 /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
   /STATISTICS COEFF OUTS R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN
  /DEPENDENT negative_scale
  /METHOD=ENTER Zmultiracial_discrimination5 Zmembership_questioned5 Zmulticultural_engagement5 Zshift_expression5 Zthird_space5 Zdiverse_comnty
  /METHOD=ENTER mod_discrimination_engagement mod_discrimination_expressions mod_discrimination_space mod_questioned_engagement mod_questioned_expression mod_questioned_space
 mod_questioned_diversecomnty mod_discrimination_diversecomnty mod_engagement_diversecomnty mod_expression_diversecomnty mod_space_diversecomnty
  /METHOD=ENTER mod_discrimination_diversecomnty_engagement mod_discrimination_diversecomnty_expression mod_discrimination_diversecomnty_space mod_questioned_diversecomnty_engagement 
mod_questioned_diversecomnty_expression mod_questioned_diversecomnty_space.

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.
3-Way Interaction Analysis: Objective Diversity x Resilience Factors Moderating Risk Factors on Outcomes
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.

REGRESSION
 /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
   /STATISTICS COEFF OUTS BCOV R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN
  /DEPENDENT dass_total
  /METHOD=ENTER Zmultiracial_discrimination5 Zmembership_questioned5 Zmulticultural_engagement5 Zshift_expression5 Zthird_space5 Zzipcode_color
  /METHOD=ENTER mod_discrimination_engagement mod_discrimination_expressions mod_discrimination_space mod_questioned_engagement mod_questioned_expression mod_questioned_space
 mod_questioned_zipcodecolor mod_discrimination_zipcodecolor mod_engagement_zipcodecolor mod_expression_zipcodecolor mod_space_zipcodecolor 
  /METHOD=ENTER mod_discrimination_zipcodecolor_engagement mod_discrimination_zipcodecolor_expression mod_discrimination_zipcodecolor_space mod_questioned_zipcodecolor_engagement 
mod_questioned_zipcodecolor_expression mod_questioned_zipcodecolor_space.

REGRESSION
 /DESCRIPTIVES MEAN STDDEV CORR SIG N 
 /MISSING LISTWISE
   /STATISTICS COEFF OUTS R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN
  /DEPENDENT positive_scale
  /METHOD=ENTER Zmultiracial_discrimination5 Zmembership_questioned5 Zmulticultural_engagement5 Zshift_expression5 Zthird_space5 Zzipcode_color
  /METHOD=ENTER mod_discrimination_engagement mod_discrimination_expressions mod_discrimination_space mod_questioned_engagement mod_questioned_expression mod_questioned_space
 mod_questioned_zipcodecolor mod_discrimination_zipcodecolor mod_engagement_zipcodecolor mod_expression_zipcodecolor mod_space_zipcodecolor 
  /METHOD=ENTER mod_discrimination_zipcodecolor_engagement mod_discrimination_zipcodecolor_expression mod_discrimination_zipcodecolor_space mod_questioned_zipcodecolor_engagement 
mod_questioned_zipcodecolor_expression mod_questioned_zipcodecolor_space.

REGRESSION
 /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
   /STATISTICS COEFF OUTS R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN
  /DEPENDENT negative_scale
  /METHOD=ENTER Zmultiracial_discrimination5 Zmembership_questioned5 Zmulticultural_engagement5 Zshift_expression5 Zthird_space5 Zzipcode_color
  /METHOD=ENTER mod_discrimination_engagement mod_discrimination_expressions mod_discrimination_space mod_questioned_engagement mod_questioned_expression mod_questioned_space
 mod_questioned_zipcodecolor mod_discrimination_zipcodecolor mod_engagement_zipcodecolor mod_expression_zipcodecolor mod_space_zipcodecolor 
  /METHOD=ENTER mod_discrimination_zipcodecolor_engagement mod_discrimination_zipcodecolor_expression mod_discrimination_zipcodecolor_space mod_questioned_zipcodecolor_engagement 
mod_questioned_zipcodecolor_expression mod_questioned_zipcodecolor_space.

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.
Simple Slopes: Subjective Diversity x Creating a Third Space Moderating Multiracial Discrimination on DASS Total
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.

compute subdabove = (Zdiverse_comnty) - 1.0.
compute subdbelow = (Zdiverse_comnty) - (-1.0).
compute ctsabove = (Zthird_space5) - 1.0.
compute ctsbelow = (Zthird_space5) - (-1.0).
compute mdctsb = Zmultiracial_discrimination5 * ctsbelow.
compute mdctsa = Zmultiracial_discrimination5 * ctsabove.
compute mdsubda = Zmultiracial_discrimination5 * subdabove.
compute mdsubdb = Zmultiracial_discrimination5 * subdbelow.
compute ctsbsubdb = ctsbelow * subdbelow.
compute ctsbsubda = ctsbelow * subdabove.
compute ctsasubdb = ctsabove * subdbelow.
compute ctsasubda = ctsabove * subdabove.
compute mdctsbsubdb = Zmultiracial_discrimination5 * ctsbelow * subdbelow.
compute mdctsbsubda = Zmultiracial_discrimination5 * ctsbelow * subdabove.
compute mdctsasubdb = Zmultiracial_discrimination5 * ctsabove * subdbelow.
compute mdctsasubda = Zmultiracial_discrimination5 * ctsabove * subdabove.

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
Simple Slopes: Subjective Diversity x Creating a Third Space Moderating Perceived Racial Ambiguity on Positive Affect
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.

compute practsb = Zmembership_questioned5 * ctsbelow.
compute practsa = Zmembership_questioned5 * ctsabove.
compute prasubda = Zmembership_questioned5 * subdabove.
compute prasubdb = Zmembership_questioned5 * subdbelow.
compute practsbsubdb = Zmembership_questioned5 * ctsbelow * subdbelow.
compute practsbsubda = Zmembership_questioned5 * ctsbelow * subdabove.
compute practsasubdb = Zmembership_questioned5 * ctsabove * subdbelow.
compute practsasubda = Zmembership_questioned5 * ctsabove * subdabove.

***TESTING HI SUBD/HI CTS ON PRA***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT positive_scale 
/METHOD=ENTER Zmembership_questioned5 ctsabove subdabove practsa prasubda ctsasubda practsasubda.

***TESTING LO SUBD/HI CTS ON PRA***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT positive_scale
/METHOD=ENTER Zmembership_questioned5 ctsabove subdbelow practsa prasubdb ctsasubdb practsasubdb.

***TESTING HI SUBD/LO CTS ON PRA***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT positive_scale
/METHOD=ENTER Zmembership_questioned5 ctsbelow subdabove practsb prasubda ctsbsubda practsbsubda.

***TESTING LO SUBD/LO CTS ON PRA***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT positive_scale
/METHOD=ENTER Zmembership_questioned5 ctsbelow subdbelow practsb prasubdb ctsbsubdb practsbsubdb.

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.
Simple Slopes: Objective Diversity x Creating a Third Space Moderating Multiracial Discrimination on DASS Total
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.

compute objdabove = Zzipcode_color - 1.
compute objdbelow = Zzipcode_color - (-1).
compute mdobjda = Zmultiracial_discrimination5 * objdabove.
compute mdobjdb = Zmultiracial_discrimination5 * objdbelow.
compute ctsbobjdb = ctsbelow * objdbelow.
compute ctsbobjda = ctsbelow * objdabove.
compute ctsaobjdb = ctsabove * objdbelow.
compute ctsaobjda = ctsabove * objdabove.
compute mdctsbobjdb = Zmultiracial_discrimination5 * ctsbelow * objdbelow.
compute mdctsbobjda = Zmultiracial_discrimination5 * ctsbelow * objdabove.
compute mdctsaobjdb = Zmultiracial_discrimination5 * ctsabove * objdbelow.
compute mdctsaobjda = Zmultiracial_discrimination5 * ctsabove * objdabove.

***TESTING HI OBJD/HI CTS ON MD***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT dass_total 
/METHOD=ENTER Zmultiracial_discrimination5 ctsabove objdabove mdctsa mdobjda ctsaobjda mdctsaobjda.

***TESTING LO OBJD/HI CTS ON MD***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT dass_total
/METHOD=ENTER Zmultiracial_discrimination5 ctsabove objdbelow mdctsa mdobjdb ctsaobjdb mdctsaobjdb.

***TESTING HI OBJD/LO CTS ON MD***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT dass_total
/METHOD=ENTER Zmultiracial_discrimination5 ctsbelow objdabove mdctsb mdobjda ctsbobjda mdctsbobjda.

***TESTING LO OBJD/LO CTS ON MD***.
REGRESSION
/MISSING LISTWISE
/DESCRIPTIVES MEAN STDDV CORR N VARIANCE SIG
/STASTICS COEFF OUTS R ANOVA CHANGE ZPP
/CRITERIA=PIN(.05) POUT (.10)
/NOORIGIN
/DEPENDENT dass_total
/METHOD=ENTER Zmultiracial_discrimination5 ctsbelow objdbelow mdctsb mdobjdb ctsbobjdb mdctsbobjdb.
