* Encoding: UTF-8.
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.
2-Way Interaction Analysis: Creating a Third Space Moderating Risk Factors on Outcomes
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.

REGRESSION
  /MISSING LISTWISE
   /STATISTICS COEFF OUTS R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN
  /DEPENDENT dass_total
  /METHOD=ENTER Zmultiracial_discrimination5 Zmembership_questioned5 Zthird_space5
  /METHOD=ENTER mod_discrimination_space mod_questioned_space.

REGRESSION
  /MISSING LISTWISE
   /STATISTICS COEFF OUTS R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN
  /DEPENDENT positive_scale
  /METHOD=ENTER Zmultiracial_discrimination5 Zmembership_questioned5 Zthird_space5
  /METHOD=ENTER mod_discrimination_space mod_questioned_space.

REGRESSION
  /MISSING LISTWISE
   /STATISTICS COEFF OUTS R ANOVA COLLIN TOL CHANGE ZPP
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN
  /DEPENDENT negative_scale
  /METHOD=ENTER Zmultiracial_discrimination5 Zmembership_questioned5 Zthird_space5
  /METHOD=ENTER mod_discrimination_space mod_questioned_space.
