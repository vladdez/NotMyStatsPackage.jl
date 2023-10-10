module MyStatsPackage
using ProgressMeter
include("statistic_functions.jl")

export rse_sum, rse_mean, rse_std, rse_tstat, StatResult, printOwner
export printOwner2

end