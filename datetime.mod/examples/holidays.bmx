Rem
Generate a set of dates using a collection of date generators
Output looks like:

Enter year : 2007


Holidays for 2007 :
2007-Jan-01 [Mon]
2007-Jan-15 [Mon]
2007-Feb-13 [Tue]
2007-Jul-04 [Wed]
2007-Sep-03 [Mon]
2007-Nov-22 [Thu]
2007-Dec-25 [Tue]

Number Holidays: 7

End Rem

SuperStrict

Framework Boost.DateTime
Import BRL.StandardIO
Import BRL.LinkedList


Local year:Int = Input("Enter year : ").toInt()

Local holidays:TList = New TList

holidays.addLast(New TPartialDate(1, EMonth.January)) ' Western New Year
holidays.addLast(New TPartialDate(4, EMonth.July)) ' US Independence Day
holidays.addLast(New TPartialDate(25, EMonth.December)) ' Christmas Day


' US labor day
holidays.addLast(New TNthDayOfWeekInMonth(ENthDay.First, EWeekday.Monday, EMonth.September))
' Martin Luther King Day
holidays.addLast(New TNthDayOfWeekInMonth(ENthDay.Third, EWeekday.Monday, EMonth.January))
' Presidents day
holidays.addLast(New TNthDayOfWeekInMonth(ENthDay.Second, EWeekday.Tuesday, EMonth.February))
' Thanksgiving
holidays.addLast(New TNthDayOfWeekInMonth(ENthDay.Fourth, EWeekday.Thursday, EMonth.November))


Local allHolidays:TList = New TList

For Local hol:TYearBasedGenerator = EachIn holidays
	allHolidays.addLast(hol.getDate(year))
Next

' get the dates into the correct order!
allHolidays.sort()


' print out the holidays for the year
Print "~n~nHolidays for " + year + " :"
For Local holiday:TDate = EachIn allHolidays
	printDate(holiday)
Next
Print "~nNumber Holidays: " + allHolidays.count()


Function printDate(date:TDate)
	Print date.toString() + " [" + WeekdayName(date.dayOfWeek()) + "]"
End Function

