SuperStrict

Framework Boost.DateTime
Import BRL.StandardIO

Local startDate:TDate = TDate.localDay()

Local p:TDatePeriod = TDatePeriod.CreateWithDays(startDate, 150)

Print p.toString()