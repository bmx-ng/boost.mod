SuperStrict

Framework Boost.DateTime
Import BRL.StandardIO

Local d:TDate = TDate.localDay()
Local lastDay:TDate = d.lastDayOfMonth()

Print lastDay.toString()
