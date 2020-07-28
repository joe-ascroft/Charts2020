## GDP per capita data from OECD ##
## load data ##

gdp_cap = read.csv('https://raw.githubusercontent.com/joe-ascroft/Charts2020/master/gdp_cap.csv')
attach(gdp_cap)
summary(gdp_cap)

qplot(ï..Date, value, colour = variable, data = melt(gdp_cap, 'ï..Date'), geom = 'line',xlab="Date",ylab="$USD PPP 2010", main="GDP per Capita")

## GDP per capita growth ## 

gdp_cap_pct = read.csv('https://raw.githubusercontent.com/joe-ascroft/Charts2020/master/gdp_cap-pct.csv')
attach(gdp_cap_pct)
summary(gdp_cap_pct)

qplot(Date, value, colour = variable, data = melt(gdp_cap_pct, 'Date'), geom = 'line',xlab="Date",ylab="Annual Percentage Change", main="GDP per Capita Growth")

## CPI data from RBNZ ##
## load data ##

cpi = read.csv('https://raw.githubusercontent.com/joe-ascroft/Charts2020/master/cpi.csv')
attach(cpi)
summary(cpi)

ggplot(data=cpi,aes(x=as.Date(DATE, origin = "1899-12-30"),y=CPI)) +
  geom_line() + 
  ggtitle("CPI Inflation in New Zealand") + 
  ylab("Quarterly CPI Inflation") +
  xlab("Date")

## household debt data from RBNZ ## 

debt = read.csv('https://raw.githubusercontent.com/joe-ascroft/Charts2020/master/debt.csv')
attach(debt)
summary(debt)

ggplot(data=debt,aes(x=as.Date(Date, origin = "1899-12-30"),y=claims)) +
  geom_line() + 
  ggtitle("Household Debt") + 
  ylab("Household claims as % of nominal disposable income") +
  xlab("Date")

ggplot(data=debt,aes(x=as.Date(Date, origin = "1899-12-30"),y=servicing_pct)) +
  geom_line() + 
  ggtitle("Servicing Costs of Household Debt") + 
  ylab("Servicing costs as % of nominal disposable income") +
  xlab("Date")

## interest rate data from RBNZ ## 

interest_rate <- read.csv('https://raw.githubusercontent.com/joe-ascroft/Charts2020/master/interest_rates.csv')

attach(interest_rate)
summary(interest_rate)

ggplot(data=debt,aes(x=as.Date(Date, origin = "1899-12-30"))) +
  geom_line(ten_year) + 
  ggtitle("Servicing Costs of Household Debt") + 
  ylab("Servicing costs as % of nominal disposable income") +
  xlab("Date")

qplot(x=as.Date(Date, origin = "1899-12-30"),ten_year,xlab="Date",ylab="Interest Rate",main="Ten Year NZ Bond Yield",geom="line")
qplot(x=as.Date(Date, origin = "1899-12-30"),five_year,xlab="Date",ylab="Interest Rate",main="Five Year NZ Bond Yield",geom="line")
qplot(x=as.Date(Date, origin = "1899-12-30"),two_year,xlab="Date",ylab="Interest Rate",main="Two Year NZ Bond Yield",geom="line")
qplot(x=as.Date(Date, origin = "1899-12-30"),OCR,xlab="Date",ylab="OCR",main="RBNZ Official Cash Rate",geom="line")

## exchange rate data from rbnz ## 

exchange_rate <- read.csv('https://raw.githubusercontent.com/joe-ascroft/Charts2020/master/exchange_rate.csv')
attach(exchange_rate)
summary(exchange_rate)

qplot(as.Date(Date, origin = "1899-12-30"), value, colour = variable, data = melt(exchange_rate, 'Date'), geom = 'line',xlab="Date",ylab="NZD/xxx", main="Major NZD Exchange Rates")

## employment data from RBNZ ##

employ <- read.csv('https://raw.githubusercontent.com/joe-ascroft/Charts2020/master/employ.csv')
attach(employ)
summary(employ)

qplot(as.Date(Date, origin = "1899-12-30"), employment, geom = 'line',xlab="Date",ylab="Employed Persons in 000s", main="Total Employment in New Zealand")
qplot(as.Date(Date, origin = "1899-12-30"), u_rate, geom = 'line',xlab="Date",ylab="% Unemployment", main="New Zealand Unemployment Rate")


## housing data from corelogic via rbnz ## 

housing <- read.csv('https://raw.githubusercontent.com/joe-ascroft/Charts2020/master/housing.csv')
attach(housing)
summary(housing)

qplot(as.Date(Date, origin = "1899-12-30"), value_housing, geom = 'line',xlab="Date",ylab="$NZDm", main="Total Value of New Zealand Housing Stock")
qplot(as.Date(Date, origin = "1899-12-30"), hpi, geom = 'line',xlab="Date",ylab="Index", main="CoreLogic House Price Index")

## govt debt data from Treasury ## 

govt_debt <- read.csv('https://raw.githubusercontent.com/joe-ascroft/Charts2020/master/govt_debt.csv')
attach(govt_debt)
summary(govt_debt)

qplot(Date, TCB, geom="line",xlab="Date",ylab="% of GDP",main="Total Crown Borrowings as % of GDP incl. Forecast Period")
qplot(Date, core_debt, geom="line",xlab="Date",ylab="% of GDP",main="Net Core Crown Debt as % of GDP incl. Forecast Period")


## major fiscal data from treasury ## 

major_fiscal <- read.csv('https://raw.githubusercontent.com/joe-ascroft/Charts2020/master/major_fiscal.csv')
attach(major_fiscal)
summary(major_fiscal)

qplot(Date, OBEGAL, geom="line",xlab="Date",ylab="% of GDP",main="OBEGAL Surplus/Deficit as % of GDP")
qplot(Date, CCR, geom="line",xlab="Date",ylab="% of GDP",main="Core Crown Revenue as % of GDP")
qplot(Date, CCE, geom="line",xlab="Date",ylab="% of GDP",main="Core Crown Expenditure as % of GDP")
qplot(Date, welfare, geom="line",xlab="Date",ylab="% of GDP",main="Social Security and Welfare Expenditure as % of GDP")
qplot(Date, health, geom="line",xlab="Date",ylab="% of GDP",main="Government Health Expenditure as % of GDP")
qplot(Date, edu, geom="line",xlab="Date",ylab="% of GDP",main="Government Education Expenditure as % of GDP")


## hourly earnings data from stats nz ##

hourly_earnings <- read.csv('https://raw.githubusercontent.com/joe-ascroft/Charts2020/master/hourly_earnings.csv'
)
attach(hourly_earnings)
summary(hourly_earnings)

qplot(as.yearqtr(format(Date), "%YQ%q"), Public, geom="line",xlab="Date",ylab="Hourly Average Earnings (NZD)",main="Public Sector Average Hourly Earnings")
qplot(as.yearqtr(format(Date), "%YQ%q"), Private, geom="line",xlab="Date",ylab="Hourly Average Earnings (NZD)",main="Private Sector Average Hourly Earnings")
qplot(as.yearqtr(format(Date), "%YQ%q"), Combined, geom="line",xlab="Date",ylab="Hourly Average Earnings (NZD)",main="National Average Hourly Earnings")

## gross fixed capital investment growth data from OECD ##

gfcf_growth <- read.csv('https://raw.githubusercontent.com/joe-ascroft/Charts2020/master/gfcf_growth.csv')
attach(gfcf_growth)
summary(gfcf_growth)

ggplot(data=gfcf_growth,aes(x=Time,y=Value,group=Country,colour=Country)) + geom_line(size=0.7) + ggtitle("Gross Fixed Capital Investment Growth") + xlab("Date") + ylab("% Annual Growth")

## corporate tax burden data from OECD ##

corp_tax <- read.csv("https://raw.githubusercontent.com/joe-ascroft/Charts2020/master/corp_tax.csv")
attach(corp_tax)
summary(corp_tax)

ggplot(data=corp_tax1,aes(x=Time,y=Value,group=LOCATION,colour=LOCATION)) + geom_line(size=0.7) + ggtitle("Corporate Tax Burden as % of GDP") + xlab("Date") + ylab("% of GDP")

## nzsf data from Treasury ## 

nzsf <- read.csv('https://raw.githubusercontent.com/joe-ascroft/Charts2020/master/nzsf.csv')
attach(nzsf)
summary(nzsf)

qplot(Date,NZSF,geom="line",xlab="Date",ylab="$NZDm",main="Net Worth of the New Zealand Superannuation Fund")
qplot(Date,NZSF_GDP,geom="line",xlab="Date",ylab="% of GDP",main="Net Worth of the New Zealand Superannuation Fund as % of GDP")

## NIIP data from stats nz ## 

niip <- read.csv('https://raw.githubusercontent.com/joe-ascroft/Charts2020/master/NIIP.csv')
attach(niip)
summary(niip)

qplot(as.yearqtr(format(Date), "%YQ%q"), NIIP, geom="line",xlab="Date",ylab="$NZDm",main="Net International Investment Position")

## labour productivity data from stats nz ## 

labour_prod <- read.csv('https://raw.githubusercontent.com/joe-ascroft/Charts2020/master/labour_prod.csv')
attach(labour_prod)
summary(labour_prod)

qplot(as.yearqtr(format(Date), "%YQ%q"), Manufacturing, geom="line",xlab="Date",ylab="% Annual Growth",main="Annual % Manufacturing Labour Productivity Growth")
qplot(as.yearqtr(format(Date), "%YQ%q"), Construction, geom="line",xlab="Date",ylab="% Annual Growth",main="Annual % Construction Labour Productivity Growth")
qplot(as.yearqtr(format(Date), "%YQ%q"), Primary.industries, geom="line",xlab="Date",ylab="% Annual Growth",main="Annual % Primary Industries Labour Productivity Growth")
qplot(as.yearqtr(format(Date), "%YQ%q"), Service.industries, geom="line",xlab="Date",ylab="% Annual Growth",main="Annual % Service Industries Labour Productivity Growth")
qplot(as.yearqtr(format(Date), "%YQ%q"), Meas_sector, geom="line",xlab="Date",ylab="% Annual Growth",main="Annual % Labour Productivity Growth")

## multifactor productivity data from stats nz ##

mf_prod <- read.csv('https://raw.githubusercontent.com/joe-ascroft/Charts2020/master/mf_prod.csv')
attach(mf_prod)
summary(mf_prod)

