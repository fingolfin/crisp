############################################################################
##
##  char.g                             CRISP                Burkhard Höfling
##
##  Copyright © 2000 Burkhard Höfling
##
LogTo("test.log");
START_TEST("characteristic");
LoadPackage("crisp", "", false);
CRISP_Read("tst/samples.g");

if PRINT_METHODS then
    TraceMethods(Characteristic);
fi;

old := fail;
cl := classes(); 
for i in [1..Length(cl)] do
    if InfoLevel(InfoTest) >= 2 then
        View(cl[i]);
        Print("\n");
    fi;
    new := Difference([2,3,5,7], Characteristic(cl[i]));
    if old = fail then
        old := new;
    elif old <> new then
        Error("different results");
    fi;
    for j in [i..Length(cl)] do
        I := Intersection(cl[i], cl[j]);
        if InfoLevel(InfoTest) >= 3 then
            View(I);
            Print("\n");
        fi;
        new := Difference([2,3,5,7], Characteristic(I));
        if old <> new then
            Error("different results");
        fi;
    od;
od;
cl := classes(); 
for C in cl do
    SetIsOrdinaryFormation(C, true);
od;
for C in cl do
    for D in cl do
        P := FormationProduct(C, D);
        if InfoLevel(InfoTest) >= 3 then
            View(C, "by", D);
            Print("\n");
        fi;
        new := Difference([2,3,5,7], Characteristic(P));
        if old <> new then
            Error("different results");
        fi;
    od;
od;
cl := classes(); 
for C in cl do
    SetIsFittingClass(C, true);
od;
for C in cl do
    for D in cl do
        P := FittingProduct(C, D);
        if InfoLevel(InfoTest) >= 3 then
            View(C, "by", D);
            Print("\n");
        fi;
        new := Difference([2,3,5,7], Characteristic(P));
        if old <> new then
            Error("different results");
        fi;
    od;
od;

if PRINT_METHODS then
    UnTraceMethods(Characteristic);
fi;
STOP_TEST("characteristic", 0);


############################################################################
##
#E
##

