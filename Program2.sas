/*Concatenation*/

data report(keep=combo);
 set sashelp.class;
 combo = cats(name, ', Age: ', age);
run;

data report(keep=combo);
 set sashelp.class;
 combo = trim(name) || ', Age: ' || trim(age);
run;

data csv (keep=extract);
 set sashelp.class;
 extract = catx(',', name, age, weight, height);
run;

data all (keep=full);
 set sashelp.class;
 full = catx(',', of name--weight);
run;
