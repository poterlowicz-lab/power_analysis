library(pwr)
pwr.p.test(h = ES.h(p1 = 0.03, p2 = 0.01),
           sig.level = 0.01,
           power = 0.8)
pwr.2p2n.test(h = ES.h(p1 = 0.03, p2 = 0.01), n1 = 500, sig.level = 0.05, power= 0.8)


prob <- matrix(c(0.03,0.01,0.01,0.01), ncol=2,
               dimnames = list(c("RA","No"),c("Mult-CH","No-CH")))
prob
ES.w2(prob)


######################
#if (!require("BiocManager", quietly = TRUE))
#  install.packages("BiocManager")
#
#BiocManager::install("trio")
###
library(trio)
trio.power(maf = 0.1, RR = 3, alpha = 5*10^(-8), n = NULL, beta = 0.8,
           model = c("additive", "dominant", "recessive"), test = c("gTDT", "Score", "aTDT"))
tr
