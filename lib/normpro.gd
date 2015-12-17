#############################################################################
##
##  normpro.gd                      CRISP                    Burkhard Höfling
##
##  Copyright (C) 2000 Burkhard Höfling
##


#############################################################################
##
#O  NormalizerOfPronormalSubgroup (<grp>, <sub>)
##
##  returns the normalizer of <sub> in <grp>. <sub> must be a pronormal
##  subgroup of <grp>, i.e., for every g in <grp>, <sgr> and <sgr>^g > 
##  are conjugate in their join.
##
DeclareOperation ("NormalizerOfPronormalSubgroup", [IsGroup, IsGroup]);


#############################################################################
##
#O  PcgsNormalizerOfPronormalSubgroup (<pcgs>, <ppcgs>
##
##  returns the normalizer of the group generated by <ppcgs> in <pcgs>. 
##  The former must must be pronormal in the latter (in particular,
##  it must be a subgroup (which we don't check).
##
DeclareOperation ("PcgsNormalizerOfPronormalSubgroup", [IsPcgs, IsPcgs]);


#############################################################################
##
#V  InfoNormalizer
##
DeclareInfoClass ("InfoNormalizer");


############################################################################
##
#E
##
