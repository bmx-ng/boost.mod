SuperStrict

Framework Boost.DateTime
Import BRL.StandardIO

Local d:TDate = New TDate(2006, EMonth.December, 24)

Local year:Int, month:Int, day:Int

d.ymd(year, month, day)

Print year
Print month
Print day
