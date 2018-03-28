#####
##### geographical differences in tribal justice
#####

library(dplyr)

# import data
csv <- read.csv("ctjaic02_formatted.csv", header = TRUE)

# verify csv is a df
class(csv)

# convert to tbl
data <- as.tbl(csv)

# check names
names(data)

# give intuitive names
data <- data %>% 
  rename(arrest.powers = a1, 
         self.gov = a2,
         
         tibal.le.bia = A3_1,
         tibal.le.tribes = A3_2,
         tribal.le.nontribal = A3_3,
         tribal.le.federal = A3_4,
         tribal.le.none = A3_5,
         
         auth.peace.off = a4,
         auth.arrest.tribal = a5,
         auth.arrest.nontribal = a6,
         
         service.bia = a7_1,
         service.state = a7_2,
         service.local = a7_3,
         service.tribal = a7_4,
         service.vpso = a7_5,
         service.vpo = a7_6,
         service.trad.le = a7_7,
         service.warden = a7_8,
         service.housing = a7_9,
         service.casino = a7_10,
         service.other = a7_11,
         service.other.desc = A7_11_oth,
         
         uniform.bia = a8a_1,
         uniform.fbi = a8a_2,
         uniform.tribal = a8a_3,
         uniform.state = a8a_4,
         uniform.county = a8a_5,
         uniform.trad = a8a_6,
         uniform.other = a8a_7,
         
         crim.bia = a8b_1,
         crim.fbi = a8b_2,
         crim.tribal = a8b_3,
         crim.state = a8b_4,
         crim.county = a8b_5,
         crim.trad = a8b_6,
         crim.other = a8b_7,
         
         det.bia = a8c_1,
         det.fbi = a8c_2,
         det.tribal = a8c_3,
         det.state = a8c_4,
         det.county = a8c_5,
         det.trad = a8c_6,
         det.other = a8c_7,
         
         juv.tribal = a9_1,
         juv.country = a9_2,
         juv.state = a9_3,
         juv.fed = a9_4,
         
         land.res = a10_1,
         land.tribal.comm = a10_2,
         land.alaska.vil = a10_3,
         land.trust = a10_4,
         land.other = a10_5,
         land.other.desc = a10__other,
         
         contiguous = a11,
         crim.cases = a12,
         crim.cases.est = a12a,
         
         refer.tribal = a13_1,
         refer.bia = a13_2,
         refer.fbi = a13_3,
         refer.other = a13_4,
         refer.other.desc = a13_4_other,
         
         access.ncic = a14,
         
         records.state = a15_1,
         records.fbi = a15_2,
         records.none = a15_3,
         
         submit.nsor = a16,
         crime.incidents = a17,
         incident.rep.method = a18,
         
         share.tribes = a19_1,
         share.alaska.corp = a19_2,
         share.local = a19_3,
         share.state = a19_4,
         share.fbi = a19_5,
         share.bia = a19_6,
         share.none = a19_7,
         
         share.elec.tribes = a20_1,
         share.elec.alaska.corp = a20_2,
         share.elec.local = a20_3,
         share.elec.state = a20_4,
         share.elec.fbi = a20_5,
         share.elec.bia = a20_6,
         share.elec.none = a20_7,
         
         tribal.sys = b1,
         
         sys.type.tribal = b2_1,
         sys.type.appellate = b2_2,
         sys.type.circuit = b2_3,
         sys.type.trad = b2_4,
         sys.type.intertribal = b2_5,
         #B2_6_
         #B2_6_
         
         cases.crim = b3_1,
         cases.traffic = b3_2,
         cases.juv = b3_3,
         cases.juv.other = b3_4,
         cases.family = b3_5,
         cases.domestic = b3_6,
         cases.civil = b3_7,
         cases.probate = b3_8,
         cases.widlife = b3_9,
         cases.other = b3_10,
         cases.other.desc = b3_10_other,
         
         court.gen = b4_1,
         court.juv = b4_2,
         court.fam = b4_3,
         court.wild = b4_4,
         court.appel = b4_5,
         court.peace = b4_6,
         court.other = b4_7,
         court.other.desc = b4_7_other,
         
         num.court.gen = b5_1,
         num.court.juv = b5_2,
         num.court.fam = b5_3,
         num.court.wildlife = b5_4,
         num.court.appel = b5_5,
         num.court.peace = b5_6,
         num.court.other = b5_7,
         
         sanc.ad.no = b6_1,
         sanc.ad.drug = b6_2,
         sanc.ad.alc = b6_3,
         sanc.ad.commserv = b6_4,
         sanc.ad.couns = b6_5,
         sanc.ad.fine = b6_6,
         sanc.ad.rest = b6_7,
         sanc.ad.recon = b6_8,
         sanc.ad.other = b6_9,
         sanc.ad.other.desc = b6_9_other,
         
         sanc.juv.no = b7_1,
         sanc.juv.drug = b7_2,
         sanc.juv.alc = b7_3,
         sanc.juv.commserv = b7_4,
         sanc.juv.couns = b7_5,
         sanc.juv.fine = b7_6,
         sanc.juv.rest = b7_7,
         sanc.juv.recon = b7_8,
         sanc.juv.other = b7_9,
         sanc.juv.other.desc = b7_9_other,
         
         prob.ad = b8,
         prob.juv = b9,
         
         nonres.juv.none = b10_1,
         nonres.juv.nontribal = b10_2,
         nonres.juv.soc = b10_3,
         nonres.juv.inform = b10_4,
         nonres.juv.form = b10_5,
         nonres.juv.other = b10_6,
         nonres.juv.other.desc = b10_6_other,
         
         res.juv.tribe = b11_1,
         res.juv.othertribe = b11_2,
         res.juv.nontribal = b11_3,
         res.juv.none = b11_4,
         
         ft.trialjudge = b12_1,
         ft.appeljudge = b12_2,
         ft.admin = b12_3,
         ft.interp = b12_4,
         ft.prosec = b12_5,
         ft.pubdef = b12_6,
         ft.proboff = b12_7,
         ft.parole = b12_8,
         ft.peace = b12_9,
         ft.bailiff = b12_10,
         ft.attourn = b12_11,
         ft.support = b12_12,
         ft.total = b12_13,
         
         pt.trialjudge = b13_1,
         pt.appeljudge = b13_2,
         pt.admin = b13_3,
         pt.interp = b13_4,
         pt.prosec = b13_5,
         pt.pubdef = b13_6,
         pt.proboff = b13_7,
         pt.parole = b13_8,
         pt.peace = b13_9,
         pt.bailiff = b13_10,
         pt.attourn = b13_11,
         pt.support = b13_12,
         pt.total = b13_13,
         
         judges.elect = B14_1,
         judges.appoint = B14_2,
         judges.other = B14_3,
         judges.other.desc = B14_3_other,
         
         term.one = b15_1,
         term.two = b15_2,
         term.three = b15_3,
         term.four = b15_4,
         term.other = b15_5,
         term.other.desc = b15_5_other,
         
         civil.jury = b17,
         
         count.charges = b18_1,
         count.def = b18_2,
         count.incid = b18_3,
         count.other = b18_4,
         count.other.desc = b18_4_other,
         
         matters.man = b19_1,
         matters.comp = b19_2,
         matters.comp = b19_3,
         matters.other = b19_4,
         matters.other.desc = b19_4_other,
         
         num.crim.cases = b20,
         num.crim.cases.est = b20a,
         
         num.crim.nonind = b21,
         num.crim.nonind.est = b21a,
         
         num.civil.cases = b22,
         num.civil.cases.est = b22a,
         
         num.civil.nonind = b23,
         num.civil.nonind.est = b23a,
         
         vic.services = b24,
         networked.tribe = b25,
         networked.outside = b26,
         
         bia.cfr = c1,
         rely.state = c2,
         rely.juvfam = c3,
         child.sup = c4,
         
         child.supp.pat = c5_1,
         child.supp.est = c5_2,
         child.supp.enf = c5_3,
         child.supp.mod = c5_4,
         child.supp.none = c5_5,
         remove = .....)

# remove random "....." column
data$remove <- NULL













