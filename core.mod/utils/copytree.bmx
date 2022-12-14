SuperStrict

Framework BRL.FileSystem
Import BRL.StandardIO

Import "timestamp.c"

Extern
	Function timestamp(fromFile$z, toFile$z)
End Extern


Local fromBase:String = "/PATH/TO/boost_1_80_0/boost/"
Local toBase:String = "/PATH/TO/boost.mod/core.mod/src/boost/"

processDir(fromBase, toBase)


Function processDir(fromBase:String, toBase:String, indent:Int = 0)

	Local fromDir:Byte Ptr = ReadDir(fromBase)
	
	If fromDir Then
	
		Local ind:String = ""
		For Local i:Int = 0 Until indent
			ind:+ " "
		Next

		Print ind + "Processing dir : " + fromBase
	
		Local file:String = NextFile(fromDir)
		
		While file
		
			If Not file.StartsWith(".") Then
			
				Local fromFile:String = fromBase + file
		
				Select FileType(fromFile)
					Case FILETYPE_FILE
						Local toFile:String = toBase + file
					
						Print ind + "Copying : " + file + " --> " + toFile
						CopyFile(fromFile, toFile)
						
						timestamp(fromFile, toFile)

					Case FILETYPE_DIR

						Local toDir:String = toBase + file
						
						If Not FileType(toDir) Then
							' create folder
							Print ind + "** Creating : " + toDir
							CreateDir(toDir)
							
						End If
						
						processDir(fromBase + file + "/", toDir + "/", indent + 2)
					
				End Select
				
			End If
					
			file = NextFile(fromDir)
		
		Wend
	
		CloseDir(fromDir)
	
	EndIf

End Function


