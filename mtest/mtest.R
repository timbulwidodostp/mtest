# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Arellano–Bond Test of Serial Correlation Use mtest (plm) With (In) R Software
install.packages("plm")
library("plm")
mtest = read.csv("https://raw.githubusercontent.com/timbulwidodostp/mtest/main/mtest/mtest.csv",sep = ";")
# Estimation Arellano–Bond Test of Serial Correlation Use mtest (plm) With (In) R Software
mtest <- pgmm(log(emp) ~ lag(log(emp), 1:2) + lag(log(wage), 0:1) + lag(log(capital), 0:2) + lag(log(output), 0:2) | lag(log(emp), 2:99), 
data = mtest, effect = "twoways", model = "twosteps")
mtest_1 <- mtest(mtest, order = 1L)
mtest_1
mtest_2 <- mtest(mtest, order = 2L, vcov = vcovHC)
mtest_2
# Arellano–Bond Test of Serial Correlation Use mtest (plm) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished