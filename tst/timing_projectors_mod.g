############################################################################
##
##  timing_projectors_mod.g           CRISP                 Burkhard Höfling
##
##  Copyright © 2000 Burkhard Höfling
##
LoadPackage("crisp", "", false);

MakeReadWriteGlobal("BFUNC_FROM_TEST_FUNC");
BFUNC_FROM_TEST_FUNC := BFUNC_FROM_TEST_FUNC_MOD;
MakeReadOnlyGlobal("BFUNC_FROM_TEST_FUNC");

CRISP_Read("tst/timing_projectors.g");


############################################################################
##
#E
##
