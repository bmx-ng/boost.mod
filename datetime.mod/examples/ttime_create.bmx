SuperStrict

Framework Boost.DateTime
Import BRL.StandardIO

Local d:TDate = New TDate(2002, EMonth.January, 1)
Local t:TTime = New TTime(d, TDHours(14))

Print t.toString()
