install.packages('haven')
library(haven)
install.packages("openxlsx")
library(openxlsx)


PSID2001 = read_stata("PSID2001.dta")
PSID2003 = read_stata("PSID2003.dta")
PSID2005 = read_stata("PSID2005.dta")
PSID2007 = read_stata("PSID2007.dta")
PSID2009 = read_stata("PSID2009.dta")
PSID2011 = read_stata("PSID2011.dta")
PSID2013 = read_stata("PSID2013.dta")
PSID2015 = read_stata("PSID2015.dta")
PSID2017 = read_stata("PSID2017.dta")
PSID2019 = read_stata("PSID2019.dta")
PSID2021 = read_stata("PSID2021.dta")

names(PSID2001) = c('PSIDStateCode', 'year', 'age', 'sex', '#chldn', 'respondent', '1968famid',
                    'married', 'employstatus', 'occupcode', 'salaryamt', 'hrlywagerate',
                    'cancerever', 'yrscancer', 'histatus', 'totalpaidinsprem', 'race', '#wksworked',
                    '#wklyhrsworked')
names(PSID2003) = c('PSIDStateCode','1968famid', 'year', 'age', 'sex', '#chldn','married',
                    'employstatus', 'occupcode', 'salaryamt', 'hrlywagerate',
                    'cancerever', 'yrscancer', 'histatus', 'totalpaidinsprem', 'race','respondent',
                    '#wksworked', '#wklyhrsworked')
names(PSID2005) = c('PSIDStateCode','1968famid', 'year', 'age', 'sex', '#chldn','married',
                    'employstatus', 'occupcode', 'salaryamt', 'hrlywagerate',
                    'cancerever', 'yrscancer', 'histatus', 'totalpaidinsprem', 'race','respondent',
                    '#wksworked', '#wklyhrsworked')
names(PSID2007) = c('PSIDStateCode','1968famid', 'year', 'age', 'sex', '#chldn','married',
                    'employstatus', 'occupcode', 'salaryamt', 'hrlywagerate',
                    'cancerever', 'yrscancer', 'histatus', 'totalpaidinsprem', 'race','respondent',
                    '#wksworked', '#wklyhrsworked')
names(PSID2009) = c('PSIDStateCode','1968famid', 'year', 'age', 'sex', '#chldn','married',
                   'employstatus', 'occupcode', 'salaryamt', 'hrlywagerate',
                   'cancerever', 'yrscancer', 'histatus', 'totalpaidinsprem', 'race','respondent',
                   '#wksworked', '#wklyhrsworked')
names(PSID2011) = c('PSIDStateCode','1968famid', 'year', 'age', 'sex', '#chldn','married',
                    'employstatus', 'occupcode', 'salaryamt', 'hrlywagerate',
                    'cancerever', 'yrscancer', 'histatus', 'totalpaidinsprem', 'race','respondent',
                    '#wksworked', '#wklyhrsworked')
names(PSID2013) = c('PSIDStateCode','1968famid', 'year', 'age', 'sex', '#chldn','married',
                    'employstatus', 'occupcode', 'salaryamt', 'hrlywagerate',
                    'cancerever', 'yrscancer', 'histatus', 'totalpaidinsprem', 'race','respondent',
                    '#wksworked', '#wklyhrsworked')
names(PSID2015) = c('PSIDStateCode','1968famid', 'year', 'age', 'sex', '#chldn','married',
                    'employstatus', 'occupcode', 'salaryamt', 'hrlywagerate',
                    'cancerever', 'yrscancer', 'histatus', 'totalpaidinsprem', 'race','respondent',
                    '#wksworked', '#wklyhrsworked')
names(PSID2017) = c('PSIDStateCode','1968famid', 'year', 'age', 'sex', '#chldn','married',
                    'employstatus', 'occupcode', 'salaryamt', 'hrlywagerate',
                    'cancerever', 'yrscancer', 'histatus', 'totalpaidinsprem', 'race','respondent',
                    '#wksworked', '#wklyhrsworked')
names(PSID2019) = c('PSIDStateCode','1968famid', 'year', 'age', 'sex', '#chldn','married',
                    'employstatus', 'occupcode', 'salaryamt', 'hrlywagerate',
                    'cancerever', 'yrscancer', 'histatus', 'totalpaidinsprem', 'race','respondent',
                    '#wksworked', '#wklyhrsworked')
names(PSID2021) = c('PSIDStateCode','1968famid', 'year', 'age', 'sex', '#chldn','married',
                    'employstatus', 'occupcode', 'salaryamt', 'hrlywagerate',
                    'cancerever', 'yrscancer', 'histatus', 'totalpaidinsprem', 'race','respondent',
                    '#wksworked', '#wklyhrsworked')

# PSID2001 = PSID2001[which(PSID2001$age >= 24 & PSID2001$age <= 64 ),]
# PSID2003 = PSID2003[which(PSID2003$age >= 24 & PSID2003$age <= 64 ),]
# PSID2005 = PSID2005[which(PSID2005$age >= 24 & PSID2005$age <= 64 ),]
# PSID2007 = PSID2007[which(PSID2007$age >= 24 & PSID2007$age <= 64 ),]
# PSID2009 = PSID2009[which(PSID2009$age >= 24 & PSID2009$age <= 64 ),]
# PSID2011 = PSID2011[which(PSID2011$age >= 24 & PSID2011$age <= 64 ),]
# PSID2013 = PSID2013[which(PSID2013$age >= 24 & PSID2013$age <= 64 ),]
# PSID2015 = PSID2015[which(PSID2015$age >= 24 & PSID2015$age <= 64 ),]
# PSID2017 = PSID2017[which(PSID2017$age >= 24 & PSID2017$age <= 64 ),]
# PSID2019 = PSID2019[which(PSID2019$age >= 24 & PSID2019$age <= 64 ),]
# PSID2021 = PSID2021[which(PSID2021$age >= 24 & PSID2021$age <= 64 ),]

PSIDlist = list(PSID2001, PSID2003, PSID2005, PSID2007, PSID2009, PSID2011,
                PSID2013, PSID2015, PSID2017, PSID2019, PSID2021)

PSID0121 = do.call(rbind, PSIDlist)

openxlsx::write.xlsx(PSID0121, "PSID01211.xlsx")
#--------------------------------------------------------------------------------------
#Whole new data


