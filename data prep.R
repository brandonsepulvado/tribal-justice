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
  rename(arrest.powers = A1, 
         self.gov = A2,
         
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
         
         )













