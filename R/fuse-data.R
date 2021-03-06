#' Data set: modlist
#'
#' @name modlist
#' @docType data
#' @title FUSE model structures (numeric)
#' @format A data frame with 1248 rows and 9 variables
#'
#' @description This object contains the list of FUSE model structures implemented by Clark et al. (2011). This is available as numerical codes (\code{modlist}) or strings (\code{modliststring}). The variables are as follows:
#' \itemize{
#'   \item mid = model id number
#'   \item rferr = type of rainfall error
#'   \item arch1 = architecture of the upper soil layer
#'   \item arch2 = architecture of the lower soil layer
#'   \item qsurf = surface runoff
#'   \item qperc = vertical drainage
#'   \item esoil = evapotranspiration
#'   \item qintf = interflow
#'   \item q_tdh = routing
#' }
#' Each row identifies a model structure and each column identifies a different element of the model structure. For each element of the model structure, several model decisions can be made (see Clark et al. 2011 for details):
#' \itemize{
#'   \item Rainfall error (rferr) \itemize{
#'       \item additive_e (additive rainfall error) = \strong{11}
#'       \item multiplc_e (multiplicative rainfall error) = \strong{12}
#'       }
#'   \item Architecture of the upper soil layer (arch1) \itemize{
#'       \item onestate_1 (Single state: upper layer defined by a single state variable) = \strong{21}
#'       \item tension1_1 (Separate tension storage: upper layer broken up into tension and free storage) = \strong{22}
#'       \item tension2_1 (Cascading buckets: tension storage sub-divided into recharge and excess) = \strong{23}
#'       }
#'   \item Architecture of the lower soil layer (arch2) \itemize{
#'       \item fixedsiz_2 (baseflow reservoir of fixed size) = \strong{31}
#'       \item tens2pll_2 (tension reservoir plus two parallel tanks) = \strong{32}
#'       \item unlimfrc_2 (baseflow reservoir of unlimited size (0-HUGE), frac rate) = \strong{33}
#'       \item unlimpow_2 (baseflow reservoir of unlimited size (0-HUGE), power recession) = \strong{34}
#'       %% \item topmdexp_2 (topmodel exponential reservoir (no more in the list) = \strong{35}
#'    }
#'    \item Runoff (qsurf) \itemize{
#'        \item arno_x_vic (Unsaturated zone Pareto: ARNO/Xzang/VIC parameterization (upper zone control)) = \strong{41}
#'        \item prms_varnt (Unsaturated zone linear: PRMS variant (fraction of upper tension storage)) = \strong{42}
#'        \item tmdl_param (Saturated zone topographic: TOPMODEL parameterization (only valid for TOPMODEL qb)) = \strong{43}
#'        }
#'    \item Percolation (qperc) \itemize{
#'        \item perc_f2sat (Drainage above field capacity: water from (field cap to sat) avail for percolation) = \strong{51}
#'        \item perc_lower (Gravity drainage: percolation defined by moisture content in lower layer (SAC)) = \strong{52}
#'        \item perc_w2sat (Saturated zone control: water from wilt point to saturation is available for percolation) = \strong{53}
#'        }
#'   \item Evaporation (esoil) \itemize{
#'       \item rootweight (root weighting) = \strong{61}
#'       \item sequential (sequential evaporation model) = \strong{62}
#'    }
#'    \item Interflows (qintf) \itemize{
#'        \item intflwnone (interflow denied) = \strong{71}
#'        \item intflwsome (interflow allowed) = \strong{72}
#'    }
#'    \item Routing (q_tdh) \itemize{
#'        \item no_routing (routing denied) = \strong{81}
#'        \item rout_gamma (routing allowed using Gamma distribution with shape parameter = 2.5) = \strong{82}
#'        }
#'  }
#'  The function \code{readmd()} returns the model components corresponding to a given id. A similar function (\code{readmd2var()}) reads the components as either character or numeric vector.
#'
#' On Clark's model list, the parent models (Topmodel, VIC, PRMS and Sacramento) have id = 60, 230, 342 and 426 respectively.
#'
#' For example, model 5 is identified by the following numeric codes:
#' data(modlist)
#' modlist[5,]
#'
NULL

#' Data set: modliststring
#'
#' @name modliststring
#' @docType data
#' @title FUSE model structures (string)
#' @format A data frame with 1248 rows and 9 variables
#'
#' @description This package contains the list of FUSE model structures implemented by Clark et al. (2011). This is available as numerical codes (\code{modlist}) or strings (\code{modliststring}). The variables are as follows:
#' \itemize{
#'   \item mid = model id number
#'   \item rferr = type of rainfall error
#'   \item arch1 = architecture of the upper soil layer
#'   \item arch2 = architecture of the lower soil layer
#'   \item qsurf = surface runoff
#'   \item qperc = vertical drainage
#'   \item esoil = evapotranspiration
#'   \item qintf = interflow
#'   \item q_tdh = routing
#' }
#' Each row identifies a model structure and each column identifies a different element of the model structure. For each element of the model structure, several model decisions can be made (see Clark et al. 2011 for details):
#' \itemize{
#'   \item Rainfall error (rferr) \itemize{
#'       \item \strong{additive_e} (additive rainfall error) = 11
#'       \item \strong{multiplc_e} (multiplicative rainfall error) = 12
#'       }
#'   \item Architecture of the upper soil layer (arch1) \itemize{
#'       \item \strong{onestate_1} (Single state: upper layer defined by a single state variable) = 21
#'       \item \strong{tension1_1} (Separate tension storage: upper layer broken up into tension and free storage) = 22
#'       \item \strong{tension2_1} (Cascading buckets: tension storage sub-divided into recharge and excess) = 23
#'       }
#'   \item Architecture of the lower soil layer (arch2) \itemize{
#'       \item \strong{fixedsiz_2} (baseflow reservoir of fixed size) = 31
#'       \item \strong{tens2pll_2} (tension reservoir plus two parallel tanks) = 32
#'       \item \strong{unlimfrc_2} (baseflow reservoir of unlimited size (0-HUGE), frac rate) = 33
#'       \item \strong{unlimpow_2} (baseflow reservoir of unlimited size (0-HUGE), power recession) = 34
#'       %% \item topmdexp_2 (topmodel exponential reservoir (no more in the list) = 35
#'    }
#'    \item Runoff (qsurf) \itemize{
#'        \item \strong{arno_x_vic} (Unsaturated zone Pareto: ARNO/Xzang/VIC parameterization (upper zone control)) = 41
#'        \item \strong{prms_varnt} (Unsaturated zone linear: PRMS variant (fraction of upper tension storage)) = 42
#'        \item \strong{tmdl_param} (Saturated zone topographic: TOPMODEL parameterization (only valid for TOPMODEL qb)) = 43
#'        }
#'    \item Percolation (qperc) \itemize{
#'        \item \strong{perc_f2sat} (Drainage above field capacity: water from (field cap to sat) avail for percolation) = 51
#'        \item \strong{perc_lower} (Gravity drainage: percolation defined by moisture content in lower layer (SAC)) = 52
#'        \item \strong{perc_w2sat} (Saturated zone control: water from wilt point to saturation is available for percolation) = 53
#'        }
#'   \item Evaporation (esoil) \itemize{
#'       \item \strong{rootweight} (root weighting) = 61
#'       \item \strong{sequential} (sequential evaporation model) = 62
#'    }
#'    \item Interflows (qintf) \itemize{
#'        \item \strong{intflwnone} (interflow denied) = 71
#'        \item \strong{intflwsome} (interflow allowed) = 72
#'    }
#'    \item Routing (q_tdh) \itemize{
#'        \item \strong{no_routing} (routing denied) = 81
#'        \item \strong{rout_gamma} (routing allowed using Gamma distribution with shape parameter = 2.5) = 82
#'        }
#'  }
#'  The function \code{readmd()} returns the model components corresponding to a given id. A similar function (\code{readmd2var()}) reads the components as either character or numeric vector.
#' On Clark's model list, the parent models (Topmodel, VIC, PRMS and Sacramento) have id = 60, 230, 342 and 426 respectively.
#' For example, model 5 is identified by the following strings:
#' data(modliststring)
#' modliststring[5,]
#'
NULL

#' Data set: fuse_hydrological_timeseries
#'
#' @name fuse_hydrological_timeseries
#' @docType data
#' @title FUSE dummy dataset
#' @description This dataset consists of a data.frame with 3 columns: P (precipitation time series), E(potential evapo-transpiration time series), Q(discharge time series).
#'
#' @format The format is: 'zoo' series from 2000-01-01 to 2002-12-31
#' The data consists of a numeric data.frame with 1096 rows and 3 columns named: "P", "E" and "Q". The temporal index consist of daily dates from "2000-01-01" to "2000-01-05".
#'
#' @examples
#' data(fuse_hydrological_timeseries)
#' str(fuse_hydrological_timeseries)
#' plot(fuse_hydrological_timeseries)
#'
#' @keywords datasets
#'
NULL

#' Data set: fuse_parameters
#'
#' @name fuse_parameters
#' @docType data
#' @title FUSE dummy parameters
#' @description This dataset contains an example of FUSE parameter set. It consists of a data.frame with 24 columns (1 each sampled parameter value).
#'
#' @format A data frame with 1 observations on the following 24 variables.
#' \itemize{
#' \item{\code{rferr_add}}{additive rainfall error (mm)}
#' \item{\code{rferr_mlt}}{multiplicative rainfall error (-)}
#' \item{\code{maxwatr_1}}{depth of the upper soil layer (mm)}
#' \item{\code{maxwatr_2}}{depth of the lower soil layer (mm)}
#' \item{\code{fracten}}{fraction total storage in tension storage (-)}
#' \item{\code{frchzne}}{fraction tension storage in recharge zone (-)}
#' \item{\code{fprimqb}}{fraction storage in 1st baseflow reservoir (-)}
#' \item{\code{rtfrac1}}{fraction of roots in the upper layer (-)}
#' \item{\code{percrte}}{percolation rate (mm day-1)}
#' \item{\code{percexp}}{percolation exponent (-)}
#' \item{\code{sacpmlt}}{SACRAMENTO model percolation multiplier for dry soil layer (-)}
#' \item{\code{sacpexp}}{SACRAMENTO model percolation exponential coefficient for dry soil layer (-)}
#' \item{\code{percfrac}}{fraction of percolation to tension storage (-)}
#' \item{\code{iflwrte}}{interflow rate (mm day-1)}
#' \item{\code{baserte}}{baseflow rate (mm day-1)}
#' \item{\code{qb_powr}}{baseflow exponent (-)}
#' \item{\code{qb_prms}}{baseflow depletion rate (day-1)}
#' \item{\code{qbrate_2a}}{baseflow depletion rate 1st reservoir (day-1)}
#' \item{\code{qbrate_2b}}{baseflow depletion rate 2nd reservoir (day-1)}
#' \item{\code{sareamax}}{maximum saturated area (-)}
#' \item{\code{axv_bexp}}{ARNO/VIC model "b" exponent (-)}
#' \item{\code{loglamb}}{mean value of the topographic index (m)}
#' \item{\code{tishape}}{shape parameter for the topographic index Gamma distribution (-)}
#' \item{\code{timedelay}}{time delay in runoff (days)}
#' }
#'
#' @examples
#' data(fuse_parameters)
#' str(fuse_parameters)
#'
#' @keywords datasets
#'
NULL
