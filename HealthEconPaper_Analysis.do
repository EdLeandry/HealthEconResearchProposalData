cd /Users/edwinleandry/Downloads/HealthEconResearch
use PSID0121.dta

drop if age >= 65 | age <= 23
drop if cancerever == 8 | cancerever == 9

*Generating dummies(0 if no, 1 if yes)
gen cancer = 0
replace cancer = 1 if cancerever == 1

gen male = 0
replace male = 1 if sex == 1

gen childpresent = 0
replace childpresent = 1 if chldn > 0

gen marr = 0
replace marr = 1 if married == 1

gen white = 0
replace white= 1 if race == 1

gen black = 0
replace black = 1 if race == 2

*Removing those with no reported earnings
drop if salaryamt == 0 & hrlywagerate == 0


gen earnings = 0
replace earnings = salaryamt if salaryamt > 0
replace earnings = hrlywagerate * wklyhrsworked * wksworked if (hrlywagerate > 0)

gen learnings = ln(earnings)

gen agesq = age^2

*log of earnings regression
reg learnings cancer age agesq male white black histatus , robust
etable, mstat(N) showstars showstarsnote export(learnings.pdf)

*weekly hours worked regression
reg wklyhrsworked cancer age agesq male white black histatus, robust
etable, mstat(N) showstars showstarsnote export(wklyhrsworked.pdf)
