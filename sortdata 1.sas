data photos;
infile datalines dsd;
input Aperture ISO Focal_Length Country: $11.;
datalines;
5,100,95,Budapest
5,250,59,Budapest
5.6,600,132,Budapest
11,100,24,Budapest
8,100,70,Budapest
10,100,70,Budapest
4.1,250,65,USA
4.1,250,.,USA
5.6,400,125,USA
5.6,250,225,USA
5.6,250,250,USA
8,200,30,
8,200,20,New Zealand
8,200,135,New Zealand
.,100,135,New Zealand
8,100,20,New Zealand
8,100,50,New Zealand
run;

proc print;run;


proc sort data=photos out=sorted;
 by aperture;
run;

proc print;run;

proc sort data=photos;
 by country aperture;
run;

proc print;run;

proc sort data=photos;
 by descending country aperture;
run;

proc print;run;

proc sort data=photos;
 by descending country descending aperture;
run;

proc print;run;

proc sort data=photos;
 by descending country descending aperture ISO;
run;

proc print;run;
