While 1
    Sleep(1000)
    $text = WinGetText("[CLASS:WindowsForms10.Window.8.app.0.30495d1_r6_ad1]")
    # MsgBox(0, "text", $text)
    If StringInStr($text, "RESTORE") Then
	#MsgBox(0, "RESTORE NALEZENO", "Text 'RESTORE' byl nalezen na obrazovce.")
	
	MouseMove ( 536, 642 )
	
	MouseClick("left", 540, 580)
	
        While 1
		Sleep(2000)
		$text = WinGetText("[CLASS:WindowsForms10.Window.8.app.0.30495d1_r6_ad1]")
		# MsgBox(0, "text", $text)
		If StringInStr($text, "EDIT PARTITIONS") Then 
			#MsgBox(0, "EDIT PARTITIONS", "Text 'EDIT PARTITIONS' byl nalezen na obrazovce.")
			Sleep(3000)
			MouseClick("left", 1770, 1020)
			Sleep(3000)
			Exit
		EndIf
	
	WEnd
        Exit
    EndIf
WEnd