SuperStrict

Framework Boost.DateTime
Import BRL.StandardIO

Local td:TTimeDuration = New TTimeDuration(18, 30) ' 18 hours and 30 mins

Print td.divide(2).toString() ' 9 hours and 15 mins

