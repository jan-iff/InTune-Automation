﻿While 1
    Sleep(1000)
    $text = WinGetText("[CLASS:WindowsForms10.Window.8.app.0.30495d1_r6_ad1]")

    If StringInStr($text, "RESTORE") Then

	
	MouseMove ( 536, 642 )
	
	MouseClick("left", 540, 580)
	
        While 1
		Sleep(2000)
		$text = WinGetText("[CLASS:WindowsForms10.Window.8.app.0.30495d1_r6_ad1]")

		If StringInStr($text, "EDIT PARTITIONS") Then 

			Sleep(3000)
			MouseClick("left", 1770, 1020)
			Sleep(3000)
			Exit
		EndIf
	
	WEnd
        Exit
    EndIf
WEnd
