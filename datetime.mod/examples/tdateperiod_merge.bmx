SuperStrict

Framework Boost.DateTime
Import BRL.StandardIO

Local p1:TDatePeriod = New TDatePeriod(New TDate(2006, 10, 1), New TDate(2007, 1, 1))
Local p2:TDatePeriod = New TDatePeriod(New TDate(2006, 12, 1), New TDate(2007, 2, 1))

Local p3:TDatePeriod = New TDatePeriod(New TDate(2006, 1, 1), New TDate(2006, 5, 1)) ' doesn't overlap !


Local merged:TDatePeriod = p1.merge(p2)

If Not merged.isNull() Then
	Print merged.toString()
End If

merged = p1.merge(p3)

If merged.isNull() Then
	Print p1.toString() + " and " + p3.toString() + " do NOT overlap!"
End If
