
 /* This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org/>

 */



#Persistent
#SingleInstance Force
#NoEnv

work=%A_WorkingDir%\potSettings.ini

IfExist, %work%
{
	IniRead, Speciallist1, %work%, CCB4Keys, SpecialKeys
	IniRead, NormalusKeys1, %work%, CCB4Keys, NormalKeys
	IniRead, HDccbx1, %work%, Settings, HDccbx
	IniRead, RDccbx1, %work%, Settings, RDccbx
	IniRead, SWccbx1, %work%, Settings, SWccbx
	IniRead, Senderrrr, %work%, Settings, Sendmoder
	IniRead, Ann, %work%, Settings, Announcement
}

If (Senderrrr=1){
sendkeytypea=Checked
}
If (Senderrrr=2){
sendkeytypeB=Checked
Sendmode Play
}
If (Senderrrr=3){
sendkeytypec=Checked
Sendmode Input
}
If ((Senderrrr!=1) and (Senderrrr!=2) and (Senderrrr!=3))
{
sendkeytypec=Checked
Sendmode Input
}


If ((speciallist1!=1) and (speciallist1!="")){
	speciallist:=speciallist1
}
If ((normaluskeys1!=1) and (normaluskeys1!="")){
	normaluskeys:=normaluskeys1
}
If ((normaluskeys="") and (speciallist="")){
	normaluskeys=Checked
	speciallist=Checked
}

If (Ann=1){
anncheck=Checked
}
else If (Ann=2){
anncheck:=""
}
else {
anncheck=Checked
}


HDccbx10:=HDccbx1
RDccbx10:=RDccbx1
SWccbx10:=SWccbx1

IfExist, %work%
{
	IniRead, keys1, %work%, Key amount, Keys
	IniRead, pwidth1, %work%, Width n Height, pwidth

	IniRead, SKa, %work%, CCb, 1
	IniRead, SKb, %work%, CCb, 2
	IniRead, SKc, %work%, CCb, 3
	IniRead, SKd, %work%, CCb, 4
	IniRead, SKe, %work%, CCb, 5
	IniRead, SKf, %work%, CCb, 6
	

	keys:=keys1
	Loop, %keys%
	{
		If (normaluskeys="Checked")
		{
			hkm=kkeeyyMM%A_Index%
			IniRead, %hkm%, %work%, Modifiers, ModifierB%A_Index%
			Kkey=KeyEdit%A_Index%
			keykey=keyx%A_Index%
			IniRead, %keykey%, %work%, Key Edit, %Kkey%
			iint=IntervalEdit%A_Index%
			intint=Intervv%A_Index%
			IniRead, %intint%, %work%, Interval Edit, %iint%
			If (HDccbx10="Checked"){
				rrms=RMSEdit%A_Index%
				rmsrms=RMMM%A_Index%
				IniRead, %rmsrms%, %work%, RMS Edit, %rrms%
			}
			If (RDccbx10="Checked"){
				ccbx=ccbb%A_Index%
				IniRead, %ccbx%, %work%, Checkbox, ccb%A_Index%
			}
			If (SWccbx10="Checked"){
				
			}
			
			Radion1=Rad1%A_Index%
			Radion2=Rad2%A_Index%
			Radion3=Rad3%A_Index%
			IniRead, %Radion1%, %work%, Radios, ms%A_Index%
			IniRead, %Radion2%, %work%, Radios, sec%A_Index%
			IniRead, %Radion3%, %work%, Radios, min%A_Index%
		}
		If (speciallist="Checked")
		{
			ddlread=dddd%A_Index%
			IniRead, %ddlread%, %work%, Key Edit DDL, DDL%A_Index%
			Mddlread=mdddd%A_Index%
			IniRead, %Mddlread%, %work%, Key Edit DDL, DDLM%A_Index%
			iintD=IntervalEditD%A_Index%
			intintD=IntervvD%A_Index%
			IniRead, %intintD%, %work%, Interval Edit4Lists, %iintD%
			If (HDccbx10="Checked"){
				rrmsD=RMSEditD%A_Index%
				rmsrmsD=RMMMD%A_Index%
				IniRead, %rmsrmsD%, %work%, RMS Edit4Lists, %rrmsD%
			}
			If (RDccbx10="Checked"){
				ccbxD=ccbbD%A_Index%
				IniRead, %ccbxD%, %work%, Checkbox, ccbD%A_Index%
			}
			If (SWccbx10="Checked"){
			
			}
			Radion1D=Rad1D%A_Index%
			Radion2D=Rad2D%A_Index%
			Radion3D=Rad3D%A_Index%
			IniRead, %Radion1D%, %work%, Radios4Lists, msD%A_Index%
			IniRead, %Radion2D%, %work%, Radios4Lists, secD%A_Index%
			IniRead, %Radion3D%, %work%, Radios4Lists, minD%A_Index%
		}
	
	
	
	Loop, 3
	{
		stthkddl=StateHKDDL%A_Index%
		IniRead, %stthkddl%, %work%, StateDDL, StateHKDDL%A_Index%
		stthkddle:=StateHKDDL%A_Index%
	}
}

	If (StateHKDDL1=1){
		IniRead, ddddHK1, %work%, Hotkeys, 7
	}
	If (StateHKDDL1=2){
		IniRead, ddddHK1, %work%, Hotkeys, 8
	}
	If (StateHKDDL2=1){
		IniRead, ddddHK2, %work%, Hotkeys, 9
	}
	If (StateHKDDL2=2){
		IniRead, ddddHK2, %work%, Hotkeys, 10
	}
	If (StateHKDDL3=1){
		IniRead, ddddHK3, %work%, Hotkeys, 11
	}
	If (StateHKDDL3=2){
		IniRead, ddddHK3, %work%, Hotkeys, 12
	}
	
	IniRead, StateHK1, %work%, State, StateHK1
	IniRead, StateHK2, %work%, State, StateHK2
	IniRead, StateHK3, %work%, State, StateHK3

	If (StateHK1=1){
		IniRead, HKey10, %work%, Hotkeys, 1
	}
	If (StateHK1=2){
		IniRead, HKey10, %work%, Hotkeys, 2
	}
	If (StateHK2=1){
		IniRead, HKey20, %work%, Hotkeys, 3
	}
	If (StateHK2=2){
		IniRead, HKey20, %work%, Hotkeys, 4
	}
	If (StateHK3=1){
		IniRead, HKey30, %work%, Hotkeys, 5
	}
	If (StateHK3=2){
		IniRead, HKey30, %work%, Hotkeys, 6
	}
	
}

If (Hkey10!=""){
	HKey1:=HKey10
}
If (Hkey20!=""){
	HKey2:=HKey20
}
If (Hkey30!=""){
	HKey3:=HKey30
}

If (SKa=1){
	SK1=Checked
}
else{
	SK1:=""
}
If (SKb=1){
	SK2=Checked
}
else{
	SK2:=""
}
If (SKc=1){
	SK3=Checked
}
else{
	SK3:=""
}
If (SKd=1){
	SK4=Checked
}
else{
	SK4:=""
}
If (SKe=1){
	SK5=Checked
}
else{
	SK5:=""
}
If (SKf=1){
	SK6=Checked
}
else{
	SK6:=""
}
Texter=Hello!`nWelcome to ration's "POTMASTER"!`nI strongly advise you to read the instructions, just to get an idea about the elements of the GUI that aren't that well defined, as example the Random delay checkbox.`nAlso, you could put me in a folder and make a shortcut on the desktop, since i'm going to be creating and using a file, to store all of the settings.`nHave fun!

IfNotExist, %work%
{
	Msgbox %Texter%
	normaluskeys=Checked
	speciallist=Checked
}


gosub magnificentwingetter

keys:=keys1
if (keys=""){
	keys:=5
}

pwidth:=pwidth1
If (pwidth=""){
	pwidth=380
}
pheight:=pheight1
If (pheight=""){
	If (normaluskeys="Checked"){
		pheight=470
	}
	If (speciallist="Checked"){
		pheight=470
	}
	If ((normaluskeys="Checked") and (speciallist="Checked")){
		pheight=900 ; original = 340 660 760 
	}
}


If ((HDccbx1="Checked") and (RDccbx1!="Checked") and (SWccbx1!="Checked")) ; hd
{
	If ((normaluskeys="Checked") or (speciallist="Checked"))
	{
		pheight=380
	}
	If ((normaluskeys="Checked") and (speciallist="Checked"))
	{
		pheight=640
	}
}
If ((HDccbx1="Checked") and (RDccbx1="Checked") and (SWccbx1!="Checked")) ; hd rd
{
	If ((normaluskeys="Checked") or (speciallist="Checked"))
	{
		pheight=410
	}
	If ((normaluskeys="Checked") and (speciallist="Checked"))
	{
		pheight=700
	}
}
If ((HDccbx1!="Checked") and (RDccbx1="Checked") and (SWccbx1!="Checked")) ;  rd
{
	If ((normaluskeys="Checked") or (speciallist="Checked"))
	{
		pheight=340
	}
	If ((normaluskeys="Checked") and (speciallist="Checked"))
	{
		pheight=560
	}
}
If ((HDccbx1!="Checked") and (RDccbx1="Checked") and (SWccbx1="Checked")) ; rd sw
{
	If ((normaluskeys="Checked") or (speciallist="Checked"))
	{
		pheight=430
	}
	If ((normaluskeys="Checked") and (speciallist="Checked"))
	{
		pheight=760
	}
}
If ((HDccbx1!="Checked") and (RDccbx1!="Checked") and (SWccbx1="Checked")) ; sw
{
	If ((normaluskeys="Checked") or (speciallist="Checked"))
	{
		pheight=405
	}
	If ((normaluskeys="Checked") and (speciallist="Checked"))
	{
		pheight=700
	}
}
If ((HDccbx1="Checked") and (RDccbx1!="Checked") and (SWccbx1="Checked")) ; sw hd
{
	If ((normaluskeys="Checked") or (speciallist="Checked"))
	{
		pheight=475
	}
	If ((normaluskeys="Checked") and (speciallist="Checked"))
	{
		pheight=835
	}
}
If ((HDccbx1!="Checked") and (RDccbx1!="Checked") and (SWccbx1!="Checked")) ; none
{
	If ((normaluskeys="Checked") or (speciallist="Checked"))
	{
		pheight=310
	}
	If ((normaluskeys="Checked") and (speciallist="Checked"))
	{
		pheight=495
	}
}

buttonAddY:=pheight-60
buttonAddYX:=pheight-90
buttonRemoveY:=pheight-30


Gui, New
Gui, Font, S11, Calibri
Gui, Add, Tab, x0 y0 w%pwidth% h%pheight%, Keys|Hotkeys|Settings|Instructions
Gui Tab, Hotkey
Loop, 3
{ ; foooooooooooooooooor theeeeeeeeeeeeeeeeee hotkey DDL


gosub ddlkeylisterM1
gosub ddlkeylister1

	jed=hkdmw%A_Index%
	IniRead, %jed%, %work%, Modifiers, Modifier%A_Index%
	
	jep:=hkdmw%A_Index%
	If (hkdmw%A_Index%!=""){
		%jep% = %jep%%bar%
	}


HKDDL:=ddddHK%A_Index%
If ((HKDDL) and (HKDDL!=""))
{
			If ((HKDDL!=accent) and (HKDDL!=minus) and (HKDDL!=equal) and (HKDDL!=lpg) and (HKDDL!=rpg) and (HKDDL!=lps) and (HKDDL!=rps) and (HKDDL!=lpr) and (HKDDL!=rpr) and (HKDDL!=semicolon) and (HKDDL!=quote) and (HKDDL!=reverseslash) and (HKDDL!=comma) and (HKDDL!=dot) and (HKDDL!=normalslash) and (HKDDL!=approx) and (HKDDL!=plus) and (HKDDL!=colon) and (HKDDL!=fullquote) and (HKDDL!=less) and (HKDDL!=greater) and (HKDDL!=questionmark) and (HKDDL!=percent) and (HKDDL!=power) and (HKDDL!=andsign) and (HKDDL!=multiplication) and (HKDDL!=dollar) and (HKDDL!=underscore)and (HKDDL!=exclamationmark))
			{
				%HKDDL% = %HKDDL%%bar%
			}
			else
			{
				If HKDDL=%accent%
				{
					accent = %accent%%bar%
				}
				If HKDDL=%minus%
				{
					minus = %minus%%bar%
				}
				If HKDDL=%equal%
				{
					equal = %equal%%bar%
				}
				If HKDDL=%lpg%
				{
					lpg = %lpg%%bar%
				}
				If HKDDL=%rpg%
				{
					rpg = %rpg%%bar%
				}
				If HKDDL=%lps%
				{
					lps = %lps%%bar%
				}
				If HKDDL=%rps%
				{
					rps = %rps%%bar%
				}
				If HKDDL=%lpr%
				{
					lpr = %lpr%%bar%
				}
				If HKDDL=%rpr%
				{
					rpr = %rpr%%bar%
				}
				If HKDDL=%semicolon%
				{
					semicolon = %semicolon%%bar%
				}
				If HKDDL=%quote%
				{
					quote = %quote%%bar%
				}
				If HKDDL=%reverseslash%
				{
					reverseslash = %reverseslash%%bar%
				}
				If HKDDL=%comma%
				{
					comma = %comma%%bar%
				}
				If HKDDL=%dot%
				{
					dot = %dot%%bar%
				}
				If HKDDL=%normalslash%
				{
					normalslash = %normalslash%%bar%
				}
				If HKDDL=%approx%
				{
					approx = %approx%%bar%
				}
				If HKDDL=%plus%
				{
					plus = %plus%%bar%
				}
				If HKDDL=%colon%
				{
					colon = %colon%%bar%
				}
				If HKDDL=%fullquote%
				{
					fullquote = %fullquote%%bar%
				}
				If HKDDL=%less%
				{
					less = %less%%bar%
				}
				If HKDDL=%greater%
				{
					greater = %greater%%bar%
				}
				If HKDDL=%questionmark%
				{
					questionmark = %questionmark%%bar%
				}
				If HKDDL=%percent%
				{
					percent = %percent%%bar%
				}
				If HKDDL=%power%
				{
					power = %power%%bar%
				}
				If HKDDL=%andsign%
				{
					andsign = %andsign%%bar%
				}
				If HKDDL=%multiplication%
				{
					multiplication = %multiplication%%bar%
				}
				If HKDDL=%dollar%
				{
					dollar = %dollar%%bar%
				}
				If HKDDL=%underscore%
				{
					underscore = %underscore%%bar%
				}
				If HKDDL=%exclamationmark%
				{
					exclamationmark = %exclamationmark%%bar%
				}
			}
}
		; and (HKDDL!=accent) and (HKDDL!=minus) and (HKDDL!=equal) and (HKDDL!=lpg) and (HKDDL!=rpg) and (HKDDL!=lps) and (HKDDL!=rps) and (HKDDL!=lpr) and (HKDDL!=rpr) and (HKDDL!=semicolon) and (HKDDL!=quote) and (HKDDL!=reveseslash) and (HKDDL!=comma) and (HKDDL!=dot) and (HKDDL!=normalslash) and (HKDDL!=approx) and (HKDDL!=plus) and (HKDDL!=colon) and (HKDDL!=fullquote) and (HKDDL!=less) and (HKDDL!=greater) and (HKDDL!=questionmark) and (HKDDL!=percent) and (HKDDL!=power) and (HKDDL!=andsign) and (HKDDL!=multiplication) and (HKDDL!=dollar) and (HKDDL!=underscore)and (HKDDL!=exclamationmark))

		;	msgbox None|%1%|%2%|%3%|%4%|%5%|%6%|%7%|%8%|%9%|%0%|%q%|%w%|%e%|%r%|%t%|%y%|%u%|%i%|%o%|%p%|%a%|%s%|%d%|%f%|%g%|%h%|%j%|%k%|%l%|%z%|%x%|%c%|%v%|%b%|%n%|%m%|%accent%|%minus%|%equal%|%lps%|%rps%|%semicolon%|%reverseslash%|%comma%|%dot%|%normalslash%|%approx%|%underscore%|%plus%|%lpg%|%rpg%|%colon%|%fullquote%|%bar%|%less%|%greater%|%questionmark%|%exclamationmark%|%`@%|%`#%|%dollar%|%percent%|%power%|%andsign%|%multiplication%|%lpr%|%rpr%|%F1%|%F2%|%F3%|%F4%|%F5%|%F6%|%F7%|%F8%|%F9%|%F10%|%F11%|%F12%|
	

	
		ddllistHK%A_Index%=None|%1%|%2%|%3%|%4%|%5%|%6%|%7%|%8%|%9%|%0%|%q%|%w%|%e%|%r%|%t%|%y%|%u%|%i%|%o%|%p%|%a%|%s%|%d%|%f%|%g%|%h%|%j%|%k%|%l%|%z%|%x%|%c%|%v%|%b%|%n%|%m%|%accent%|%minus%|%equal%|%lps%|%rps%|%semicolon%|%reverseslash%|%comma%|%dot%|%normalslash%|%approx%|%underscore%|%plus%|%lpg%|%rpg%|%colon%|%fullquote%|%less%|%greater%|%questionmark%|%exclamationmark%|%`@%|%`#%|%dollar%|%percent%|%power%|%andsign%|%multiplication%|%lpr%|%rpr%|%Enter%|%Tab%|%Control%|%Shift%|%Alt%|%Up%|%Down%|%Left%|%Right%|%ScrollLock%|%CapsLock%|%Insert%|%Home%|%Del%|%End%|%PgUp%|%PgDn%|%²%|%é%|%¦%|%è%|%ç%|%à%|%£%|%¤%|%ù%|%§%|%ê%|%ë%|%Ë%|%ˍ%|%ˏ%|%ô%|%û%|%³%|%ß%|%Ä%|%Ö%|%Ü%|%F1%|%F2%|%F3%|%F4%|%F5%|%F6%|%F7%|%F8%|%F9%|%F10%|%F11%|%F12%|
		ddllistHKm%A_Index%=%None%|%Control%|%Shift%|%Alt%|%¨%|%ˍ%|%ˏ%|
		ddllistHKf:=ddllistHK%A_Index%
		ddllistHKmf:=ddllistHKm%A_Index%
	If (A_Index=1){
		Gui, Add, button, x130 ym+5 w0 h0,
	}
	Gui, Add, DropDownList, xp yp+30 w100  gDDLHotkeyM%A_Index% VHKeyDDLM%A_Index%, %ddllistHKmf%
	Gui, Add, DropDownList, xp yp+30 w100 gDDLHotkey%A_Index% VHKeyDDL%A_Index%, %ddllistHKf%
	Gui, Add, Button, xp yp+20 w0 h0
	If (A_Index=3)
	{
		Loop, 3
		{
			greatt:=A_Index + 3
			ssk:=SK%greatt%
			If (A_Index=1)
			{
				Gui, Add, CheckBox, x140 ym+94 %ssk% VSerpendKey%greatt%, ^Send Key^
			}
			else
			{
				Gui, Add, CheckBox, x140 yp+80 %ssk% VSerpendKey%greatt%, ^Send Key^
			}
		}
	}
	
}
Gui Tab, Instructions
Gui, Add, Text, x2 y30, Hello, this are the brief sole instructions: `nKeys tab: - you can add more tweak options in the settings tab`n- the hotkeys are saved automatically`n the first list is always contains modifiers only`n-if a key is listed in the second tab but requires a modifier to`n be used, do not select that modifier in the first list(if you `nwant to send + don't select Control and +, only select +)`n-select "special keys" in the hotkeys tab if you want more `nkeys or if you have issues with normal keys.`nHotkeys tab:-the both rows trigger the same things, you can`n use one or two hotkeys for the same action, selecting `nsend key will also send the key when you use the hotkey.`nSettings tab`n-if you have problems with the keys the program is sending`n change the Send mode.
Gui Tab, Keys
Gui, Add, Button, default x0 y%buttonAddYX% w%pwidth%, Add
Gui, Add, Button, default x0 y%buttonAddY% w%pwidth%, Remove
Gui, Add, Button, default x0 y%buttonRemoveY% w%pwidth%, Refresh
Gui Tab, Hotkeys
Gui, Add, Button, default x0 y%buttonRemoveY% w%pwidth%, Apply
Gui, Font, S11 norm, Calibri
Gui, Add, Text, x25 y135, Pause Hotkey
Gui, Add, Text, x25 y215, Sound Hotkey
Gui, Add, Text, x25 y55, Global
; Gui, Add, Text, x25 y110, Keys 1 to 5
Gui, Add, Text, x25 y30, On\Off Hotkeys
Gui, Add, Hotkey, x25 y73 wp gOneHotkey VHkey1,%HKey1%
Gui, Add, Hotkey, x25 y153 wp gTooHotkey VHKey2,%HKey2%
Gui, Add, Hotkey, x25 y233 wp gTreHotkey VHKey3,%HKey3%
; Gui, Add, Hotkey, x25 y130 wp %gHotkeyA1% VHKeyA1,%HKeyA1%
Gui, Add, CheckBox, x35 y100 gSubber %SK1% VSerpendKey1, Send Key
Gui, Add, CheckBox, x35 y180 gSubber %SK2% VSerpendKey2, Send Key
Gui, Add, CheckBox, x35 y260 gSubber %SK3% VSerpendKey3, Send Key
Gui, Add, Text, x240 y125 w110 r3 h40 center,The "Enter" key is recommended for gaming
Gui Tab, Settings
Gui, Font, S15
Gui, Add, CheckBox, x35 y245 gSubber %normaluskeys% VNormalKeys, Normal Keys
Gui, Add, CheckBox, x170 y245 gSubber %Speciallist% VSpecialKeys, Special Key Lists
Gui, Font, S11
Gui, Add, Text, x70 y190, Ration's POOOOTMASTEEEEEEEEEEEEER
Gui, Add, Text, x185 y30  w190 r3 h40 center , Make sure to hit apply!(if you want your changes saved)
Gui, Add, Text, x205 y70 , ...<<<<
Gui, Add, Text, x250 y70  ,  <<<Recommended
Gui, Add, Text, x215 y130, <<<<<
Gui, Add, Text, x245 y130  w120 r2 h30 center ,  Recommended for gaming
Gui, Add, Button, default x0 y%buttonRemoveY% w%pwidth%, Apply
Gui, Add, Text, x25 y40, Send Mode
Gui, Add, Radio, x25 y70 gSubber %sendkeytypeA% VSendKeyModeNormal,  Mode 1
Gui, Add, Radio, x105 y70 gSubber %sendkeytypeB% VSendKeyModePlay, Mode 2
Gui, Add, Radio, x180 y70 gSubber %sendkeytypec% VSendKeyModeInput, Mode 3
Gui, Add, Checkbox, x25 y100 gSubber %HDccbx10% VHDccbx, Held down time checkboxes
Gui, Add, Checkbox, x25 y130 gSubber %RDccbx10% VRDccbx, Random Delay checkboxes
Gui, Add, Checkbox, x25 y160 gSubber %SWccbx10% VSWccbx, Send to window checkboxes
Gui, Add, Checkbox, x25 y210 gSubber %anncheck% VAnnouncerCCbx, Tray announcement when paused/resumed
Gui, Submit, NoHide
gosub Subber
Loop, 1
{
Gui Tab, Keys
	If (normaluskeys="Checked")
	{
		Loop, %keys%
		{
		gosub varsetA
		gosub iffirst
		If (A_Index=1)
		{
			Gui, Add, Text, %xa1% %ya1%, Key %A_Index%
		}
		else
		{
			Gui, Add, Text, %xa2% %ya2%, Key %A_Index%
		}
		RES1:=Rad1%A_Index%
		RES2:=Rad2%A_Index%
		RES3:=Rad3%A_Index%
		If (RES1=1){
			RedioA=Checked
		}
		else{
			RedioA:=""
		}
		If (RES2=1){
			Rediob=Checked
		}
		else{
			RedioB:=""
		}
		If (RES3=1){
			Redioc=Checked
		}
		else{
			Redioc:=""
		}
		Cheerbox:=ccbb%A_Index%
		If (Cheerbox=1){
			Checkobox%A_Index%=Checked
		}
		
		gosub ddlkeylisterM1
		gosub ddlkeylister1
		
		je=kkeeyyMM%A_Index%
		IniRead, %je%, %work%, Modifiers, ModifierB%A_Index%
	
		jepp:=kkeeyyMM%A_Index%
		If ((kkeeyyMM%A_Index%!="") and (kkeeyyMM%A_Index%!="")){
		%jepp% = %jepp%%bar%
		}
		
		ddllistHKmn%A_Index%=%None%|%Control%|%Shift%|%Alt%|%¨%|%ˍ%|%ˏ%|
		ddllistHKmmmf:=ddllistHKmn%A_Index%				

		Sherbox:=Checkobox%A_Index%
		keyz:=keyx%A_Index%
		if (Intervv%A_Index%!="ERROR"){
		intz:=Intervv%A_Index%
		}
		rmzz:=RMMM%A_Index%
		Gui, Add, Edit, %xa3% %ya3% limit1 w65 gPOTSUBMIT VKeyEdit%A_Index%, %keyz%
		Gui, Add, DropDownList, %xa4% %ya4% w65 gKEM VKeyEditM%A_Index%, %ddllistHKmmmf%
		Gui, Add, Text, %xa5% %ya5% wp hp, Interval %A_Index%
		Gui, Add, Edit, %xa6% %ya6% wp hp gSubber number VIntervalEdit%A_Index%, %intz%
		If (HDccbx10="Checked"){
			Gui, Add, Edit, %xa7% %ya7% wp hp gSubber number VRMSEdit%A_Index%, %rmzz%
			Gui, Add, Text, %xa8% %ya8%, Held down`n time(ms)
		}	
		If (SWccbx10="Checked"){
			jerk=%A_Index%
			if Mod(A_Index,2)
			{
				Gui, Add, DropDownList, %xa14% %ya14% w140 gSubber VProgram%A_Index%, %programlist%
				Gui, Font, S9, Calibri
				Gui, Add, CheckBox, %xa13% %ya13% gSubber VSendToWin%A_Index%, Send key %A_Index% to window
				narnia:=A_Index+1
				Gui, Add, DropDownList, %xa16% %ya16% w140 gSubber VProgram%narnia%, %programlist%
				Gui, Font, S8, Calibri
				Gui, Add, CheckBox, %xa15% %ya15%  gSubber VSendToWin%narnia%, Send key %narnia% to window
			}
		}
		If (RDccbx10="Checked"){
			Gui, Font, S9, Calibri
			Gui, Add, CheckBox, %xa9% %ya9% gSubber %Sherbox% VRv%A_Index%, Random`ndelay
		}
		Gui, Font, S11, Calibri
		Gui, Add, Radio, %xa10% %ya10% gSubber %RedioA% vMs%A_Index%, Ms
		Gui, Add, Radio, %xa11% %ya11% gSubber %RedioB% vSec%A_Index%, Sec
		Gui, Add, Radio, %xa12% %ya12% gSubber %RedioC% vMin%A_Index%, Min
		}
	}
	xp:=""
	xm:=""
	yp:=""
	ym:=""
	If (Speciallist="Checked")
	{
	Loop, %keys%
	{

		If (normaluskeys!="Checked")
		{
			gosub varsetA
			gosub iffirst
		}
		If ((Speciallist="Checked") and (normaluskeys="Checked"))
		{
		gosub varsetB
		gosub ifsecond
		}
		RES1D:=Rad1D%A_Index%
		RES2D:=Rad2D%A_Index%
		RES3D:=Rad3D%A_Index%
		If (RES1D=1){
			RedioAD=Checked
		}
		else{
			RedioAD:=""
		}
		If (RES2D=1){
			RediobD=Checked
		}
		else{
			RedioBD:=""
		}
		If (RES3D=1){
			RediocD=Checked
		}
		else{
			RediocD:=""
		}
		CheerboxD:=ccbbD%A_Index%
		If (CheerboxD=1){
			CheckoboxD%A_Index%=Checked
		}
		SherboxD:=CheckoboxD%A_Index%
		if (Intervv%A_Index%!="ERROR"){
		intzD:=IntervvD%A_Index%
		}
		rmzzD:=RMMMD%A_Index%
		gosub ddlkeylister1
		gosub ddlkeylisterM1
		DumpDDL:=dddd%A_Index%
		If ((DumpDDL) and (DumpDDL!=""))
		{
			If ((DumpDDL!=accent) and (DumpDDL!=minus) and (DumpDDL!=equal) and (DumpDDL!=lpg) and (DumpDDL!=rpg) and (DumpDDL!=lps) and (DumpDDL!=rps) and (DumpDDL!=lpr) and (DumpDDL!=rpr) and (DumpDDL!=semicolon) and (DumpDDL!=quote) and (DumpDDL!=reverseslash) and (DumpDDL!=comma) and (DumpDDL!=dot) and (DumpDDL!=normalslash) and (DumpDDL!=approx) and (DumpDDL!=plus) and (DumpDDL!=colon) and (DumpDDL!=fullquote) and (DumpDDL!=less) and (DumpDDL!=greater) and (DumpDDL!=questionmark) and (DumpDDL!=percent) and (DumpDDL!=power) and (DumpDDL!=andsign) and (DumpDDL!=multiplication) and (DumpDDL!=dollar) and (DumpDDL!=underscore)and (DumpDDL!=exclamationmark))
			{
				%DumpDDL% = %DumpDDL%%bar%
			}
			else
			{
				If DumpDDL=%accent%
				{
					accent = %accent%%bar%
				}
				If DumpDDL=%minus%
				{
					minus = %minus%%bar%
				}
				If DumpDDL=%equal%
				{
					equal = %equal%%bar%
				}
				If DumpDDL=%lpg%
				{
					lpg = %lpg%%bar%
				}
				If DumpDDL=%rpg%
				{
					rpg = %rpg%%bar%
				}
				If DumpDDL=%lps%
				{
					lps = %lps%%bar%
				}
				If DumpDDL=%rps%
				{
					rps = %rps%%bar%
				}
				If DumpDDL=%lpr%
				{
					lpr = %lpr%%bar%
				}
				If DumpDDL=%rpr%
				{
					rpr = %rpr%%bar%
				}
				If DumpDDL=%semicolon%
				{
					semicolon = %semicolon%%bar%
				}
				If DumpDDL=%quote%
				{
					quote = %quote%%bar%
				}
				If DumpDDL=%reverseslash%
				{
					reverseslash = %reverseslash%%bar%
				}
				If DumpDDL=%comma%
				{
					comma = %comma%%bar%
				}
				If DumpDDL=%dot%
				{
					dot = %dot%%bar%
				}
				If DumpDDL=%normalslash%
				{
					normalslash = %normalslash%%bar%
				}
				If DumpDDL=%approx%
				{
					approx = %approx%%bar%
				}
				If DumpDDL=%plus%
				{
					plus = %plus%%bar%
				}
				If DumpDDL=%colon%
				{
					colon = %colon%%bar%
				}
				If DumpDDL=%fullquote%
				{
					fullquote = %fullquote%%bar%
				}
				If DumpDDL=%less%
				{
					less = %less%%bar%
				}
				If DumpDDL=%greater%
				{
					greater = %greater%%bar%
				}
				If DumpDDL=%questionmark%
				{
					questionmark = %questionmark%%bar%
				}
				If DumpDDL=%percent%
				{
					percent = %percent%%bar%
				}
				If DumpDDL=%power%
				{
					power = %power%%bar%
				}
				If DumpDDL=%andsign%
				{
					andsign = %andsign%%bar%
				}
				If DumpDDL=%multiplication%
				{
					multiplication = %multiplication%%bar%
				}
				If DumpDDL=%dollar%
				{
					dollar = %dollar%%bar%
				}
				If DumpDDL=%underscore%
				{
					underscore = %underscore%%bar%
				}
				If DumpDDL=%exclamationmark%
				{
					exclamationmark = %exclamationmark%%bar%
				}
			}
		}
		; and (DumpDDL!=accent) and (DumpDDL!=minus) and (DumpDDL!=equal) and (DumpDDL!=lpg) and (DumpDDL!=rpg) and (DumpDDL!=lps) and (DumpDDL!=rps) and (DumpDDL!=lpr) and (DumpDDL!=rpr) and (DumpDDL!=semicolon) and (DumpDDL!=quote) and (DumpDDL!=reveseslash) and (DumpDDL!=comma) and (DumpDDL!=dot) and (DumpDDL!=normalslash) and (DumpDDL!=approx) and (DumpDDL!=plus) and (DumpDDL!=colon) and (DumpDDL!=fullquote) and (DumpDDL!=less) and (DumpDDL!=greater) and (DumpDDL!=questionmark) and (DumpDDL!=percent) and (DumpDDL!=power) and (DumpDDL!=andsign) and (DumpDDL!=multiplication) and (DumpDDL!=dollar) and (DumpDDL!=underscore)and (DumpDDL!=exclamationmark))

		;	msgbox None|%1%|%2%|%3%|%4%|%5%|%6%|%7%|%8%|%9%|%0%|%q%|%w%|%e%|%r%|%t%|%y%|%u%|%i%|%o%|%p%|%a%|%s%|%d%|%f%|%g%|%h%|%j%|%k%|%l%|%z%|%x%|%c%|%v%|%b%|%n%|%m%|%accent%|%minus%|%equal%|%lps%|%rps%|%semicolon%|%reverseslash%|%comma%|%dot%|%normalslash%|%approx%|%underscore%|%plus%|%lpg%|%rpg%|%colon%|%fullquote%|%bar%|%less%|%greater%|%questionmark%|%exclamationmark%|%`@%|%`#%|%dollar%|%percent%|%power%|%andsign%|%multiplication%|%lpr%|%rpr%|%F1%|%F2%|%F3%|%F4%|%F5%|%F6%|%F7%|%F8%|%F9%|%F10%|%F11%|%F12%|

		
		ddllist%A_Index%=None|%1%|%2%|%3%|%4%|%5%|%6%|%7%|%8%|%9%|%0%|%q%|%w%|%e%|%r%|%t%|%y%|%u%|%i%|%o%|%p%|%a%|%s%|%d%|%f%|%g%|%h%|%j%|%k%|%l%|%z%|%x%|%c%|%v%|%b%|%n%|%m%|%accent%|%minus%|%equal%|%lps%|%rps%|%semicolon%|%reverseslash%|%comma%|%dot%|%normalslash%|%approx%|%underscore%|%plus%|%lpg%|%rpg%|%colon%|%fullquote%|%less%|%greater%|%questionmark%|%exclamationmark%|%`@%|%`#%|%dollar%|%percent%|%power%|%andsign%|%multiplication%|%lpr%|%rpr%|%Enter%|%Tab%|%Control%|%Shift%|%Alt%|%Up%|%Down%|%Left%|%Right%|%ScrollLock%|%CapsLock%|%Insert%|%Home%|%Del%|%End%|%PgUp%|%PgDn%|%²%|%é%|%¦%|%è%|%ç%|%à%|%£%|%¤%|%ù%|%§%|%ê%|%ë%|%Ë%|%ˍ%|%ˏ%|%ô%|%û%|%³%|%ß%|%Ä%|%Ö%|%Ü%|%F1%|%F2%|%F3%|%F4%|%F5%|%F6%|%F7%|%F8%|%F9%|%F10%|%F11%|%F12%|
		DumpDDLM:=mdddd%A_Index%
		
		If ((DumpDDLM) and (DumpDDLM!="") and (DumpDDLM!="None"))
		{
		%DumpDDLM% = %DumpDDLM%%bar%
		ddllistm%A_Index%=None|%Control%|%Shift%|%Alt%|%¨%|%ˍ%|%ˏ%|
		ddllistmf:=ddllistm%A_Index%
		}
		ddllistf:=ddllist%A_Index%
		If (A_Index=1)
		{
			Gui, Add, Text, %xa1% %ya1%, Key %A_Index%
		}
		else
		{
			Gui, Add, Text, %xa2% %ya2%, Key %A_Index%
		}
		Gui, Add, DropDownList, %xa3% %ya3% w65 gSubber VKeyEditD%A_Index%, %ddllistf%
		Gui, Add, DropDownList, %xa4% %ya4% w65 gKEDM VKeyEditDM%A_Index%, %ddllistmf%
		Gui, Add, Text, %xa5% %ya5% wp hp, Interval %A_Index%
		Gui, Add, Edit, %xa6% %ya6% wp hp gSubber number VIntervalEditD%A_Index%, %intzD%
		If (HDccbx10="Checked"){
			Gui, Add, Edit, %xa7% %ya7% wp hp gSubber number VRMSEditD%A_Index%, %rmzzD%
			Gui, Add, Text, %xa8% %ya8%, Held down`n time(ms)
		}	
		If (SWccbx10="Checked"){
			jerk=%A_Index%
			if Mod(A_Index,2)
			{
				Gui, Add, DropDownList, %xa14% %ya14% w140 gSubber VProgramD%A_Index%, %programlist%
				Gui, Font, S9, Calibri
				Gui, Add, CheckBox, %xa13% %ya13% gSubber VSendToWinD%A_Index%, Send key %A_Index% to window
				narnia:=A_Index+1
				Gui, Add, DropDownList, %xa16% %ya16% w140 gSubber VProgramD%narnia%, %programlist%
				Gui, Font, S8, Calibri
				Gui, Add, CheckBox, %xa15% %ya15% gSubber VSendToWinD%narnia%, Send key %narnia% to window
			}
		}
		If (RDccbx10="Checked"){
			Gui, Font, S9, Calibri
			Gui, Add, CheckBox, %xa9% %ya9% gSubber %SherboxD% VRvD%A_Index%, Random`ndelay
		}
		Gui, Font, S11, Calibri
		Gui, Add, Radio, %xa10% %ya10% gSubber %RedioAD% vMsD%A_Index%, Ms
		Gui, Add, Radio, %xa11% %ya11% gSubber %RedioBD% vSecD%A_Index%, Sec
		Gui, Add, Radio, %xa12% %ya12% gSubber %RedioCD% vMinD%A_Index%, Min
	}
	}
}
Gui, Show, w%pwidth% h%pheight%, Ration's POTMASTEEEEER
gosub subber
return 


magnificentwingetter:
WinGet windows, List
Loop %windows%
{
	id := windows%A_Index%
	WinGetTitle wt, ahk_id %id%
	programlist .= wt . "|"
}
Return


Spum:
Loop, %keys%
{
timez:=timeA%A_Index%
kea:=KeyEdit%A_Index%

	If (kea!="")
	{
	kear%A_Index%:=kea
	kearr:=kear%A_Index%
	gosub KEM
		If (St%A_Index%=timez)
		{
			St%A_Index%=Off
			SetTimer, MLabel%A_Index%, Off
		}
		else
		{
			St%A_Index%:= timez
			Str:=St%A_Index%
			gosub MLabel%A_Index%
			SetTimer, MLabel%A_Index%, %Str%
		}
	}

timex:=timeAD%A_Index%
kedd:=KeyEditD%A_Index%

	If ((kedd) and (kedd!=None))
	{
		kearD%A_Index%:=kedd
		kearrd:=keard%A_Index%
		gosub KEDM
			If (Std%A_Index%=timex)
			{
				Std%A_Index%=Off
				SetTimer, MLabelD%A_Index%, Off
			}
			else
			{
				Std%A_Index%:= timex
				Stdr:=Std%A_Index%
				gosub MLabelD%A_Index%
				SetTimer, MLabelD%A_Index%, %Stdr%
			}
	}
}
Return

KEM:
Gui, Submit, NoHide
If (KeyEditM%A_Index%="Ctrl")
{
	mvar=Control
}
else If (KeyEditM%A_Index%="Alt")
{
	mvar=Alt
}
else If (KeyEditM%A_Index%="Shift")
{
	mvar=Shift
}
else If (KeyEditM%A_Index%="None")
{
	mvar=None
}
Return

KEDM:
Gui, Submit, NoHide
If (KeyEditDM%A_Index%="Ctrl")
{
	mvarD=Control
}
else If (KeyEditDM%A_Index%="Alt")
{
	mvarD=Alt
}
else If (KeyEditDM%A_Index%="Shift")
{
	mvarD=Shift
}
else If (KeyEditDM%A_Index%="None")
{
	mvarD:=""
}
Return

HKeyLabel1:
If (SerpendKey1)
{
	Send %HKey1%
}
gosub spum
Return

HKeyLabel2:
Suspend
Pause,, 1
If (SerpendKey2)
{
	Send %HKey2%
}
If (AnnouncerCCbx)
{
If ((A_IsSuspended=1) and (A_IsPaused=1))
{
TrayTip, Hey!, The POTMASTER has been paused!.
}
If ((A_IsSuspended=0) and (A_IsPaused=0))
{
TrayTip, Hey!, The POTMASTER has been resumed.
}
}
Return

HKeyLabel3:
If (SerpendKey3)
{
	Send %HKey3%
}
Soundbeep, 500, 150
Return

HKeyDDLLabel1:
If (SerpendKey4)
{
	Send %HKeyDDL1%
}
gosub spum
Return

HKeyDDLLabel2:
If (SerpendKey5)
{
	Send %HKeyDDL2%
}
If (AnnouncerCCbx)
{
If ((A_IsSuspended=1) and (A_IsPaused=1))
{
TrayTip, Hey!, The POTMASTER has been paused!.
}
If ((A_IsSuspended=0) and (A_IsPaused=0))
{
TrayTip, Hey!, The POTMASTER has been resumed.
}
}
Return

HKeyDDLLabel3:
If (SerpendKey6)
{
	Send %HKeyDDL3%
}
Soundbeep, 500, 150
Return


Potsubmit:
Gui, Submit, NoHide
keyss:=keys+1
Loop, %keyss%
{
If (normaluskeys="Checked")
{
	keyx:=KeyEdit%A_Index%
	IniWrite, %keyx%, %work%, Key Edit, KeyEdit%A_Index%
	intx:=IntervalEdit%A_Index%
	IniWrite, %intx%, %work%, Interval Edit, IntervalEdit%A_Index%
	rmsx:=RMSEdit%A_Index%
	If (HDccbx10="Checked")
	{
	IniWrite, %rmsx%, %work%, RMS Edit, RMSEdit%A_Index%
	}
	rvccb:=Rv%A_Index%
	mms:=ms%A_Index%
	msec:=sec%A_Index%
	mmin:=min%A_Index%
	If (mms)
	{
		IniWrite, 1, %work%, Radios, ms%A_Index%
		IniWrite, 0, %work%, Radios, sec%A_Index%
		IniWrite, 0, %work%, Radios, min%A_Index%
		time%A_Index%:=IntervalEdit%A_Index%
		timeA%A_Index%:=time%A_Index%
	}
	If (msec)
	{
		IniWrite, 0, %work%, Radios, ms%A_Index%
		IniWrite, 1, %work%, Radios, sec%A_Index%
		IniWrite, 0, %work%, Radios, min%A_Index%
		time%A_Index%:=IntervalEdit%A_Index%
		timeA%A_Index%:=time%A_Index% * 1000
	}
	If (mmin)
	{
		IniWrite, 0, %work%, Radios, ms%A_Index%
		IniWrite, 0, %work%, Radios, sec%A_Index%
		IniWrite, 1, %work%, Radios, min%A_Index%
		time%A_Index%:=IntervalEdit%A_Index%
		timeA%A_Index%:=time%A_Index% * 60 * 1000
	}
	If (rvccb)
	{
		IniWrite, 1, %work%, Checkbox, ccb%A_Index%
	}
	else
	{
		IniWrite, 0, %work%, Checkbox, ccb%A_Index%
	}
}

If (speciallist="Checked")
{
	kedd:=KeyEditD%A_Index%
	If ((kedd) and (kedd!=None))
	{
	keld=kedd
		IniWrite, %kedd%, %work%, Key Edit DDL, DDL%A_Index%
	}
	else If ((kedd) and (kedd="None"))
	{
		IniWrite, %emptyvar%, %work%, Key Edit DDL, DDL%A_Index%
	}
	else If ((kedd) and (kedd=""))
	{
		iniWrite, %emptyvar%, %work%, Key Edit DDL, DDL%A_Index%
	}

	keddM:=KeyEditDM%A_Index%
	If ((keddM) and (keddM!=None))
	{
	keldM=keddM
		IniWrite, %keddM%, %work%, Key Edit DDL, DDLM%A_Index%
	}
	else If ((keddM) and (keddM="None"))
	{
		IniWrite, %emptyvar%, %work%, Key Edit DDL, DDLM%A_Index%
	}
	else If ((keddM) and (keddM=""))
	{
		iniWrite, %emptyvar%, %work%, Key Edit DDL, DDLM%A_Index%
	}
	
	intxD:=IntervalEditD%A_Index%
	IniWrite, %intxD%, %work%, Interval Edit4Lists, IntervalEditD%A_Index%
	rmsxD:=RMSEditD%A_Index%
	IniWrite, %rmsxD%, %work%, RMS Edit4Lists, RMSEditD%A_Index%
	rvccbD:=RvD%A_Index%
	mmsD:=msD%A_Index%
	msecD:=secD%A_Index%
	mminD:=minD%A_Index%
	If (mmsD)
	{
		IniWrite, 1, %work%, Radios4Lists, msD%A_Index%
		IniWrite, 0, %work%, Radios4Lists, secD%A_Index%
		IniWrite, 0, %work%, Radios4Lists, minD%A_Index%
		timeD%A_Index%:=IntervalEditD%A_Index%
		timeAD%A_Index%:=timeD%A_Index%
	}
	If (msecD)
	{
		IniWrite, 0, %work%, Radios4Lists, msD%A_Index%
		IniWrite, 1, %work%, Radios4Lists, secD%A_Index%
		IniWrite, 0, %work%, Radios4Lists, minD%A_Index%
		timeD%A_Index%:=IntervalEditD%A_Index%
		timeAD%A_Index%:=timeD%A_Index% * 1000
	}
	If (mminD)
	{
		IniWrite, 0, %work%, Radios4Lists, msD%A_Index%
		IniWrite, 0, %work%, Radios4Lists, secD%A_Index%
		IniWrite, 1, %work%, Radios4Lists, minD%A_Index%
		timeD%A_Index%:=IntervalEditD%A_Index%
		timeAD%A_Index%:=timeD%A_Index% * 60 * 1000
	}
	If (RDccbx10="Checked")
	{
	If (rvccbD)
	{
		IniWrite, 1, %work%, Checkbox4Lists, ccbD%A_Index%
	}
	else
	{
		IniWrite, 0, %work%, Checkbox4Lists, ccbD%A_Index%
	}
	}
}
	hkdmw:=HKeyDDLM%A_Index%
	If (HKeyDDLM%A_Index%!=""){
	IniWrite, %hkdmw%, %work%, Modifiers, Modifier%A_Index%
	}

	hkm:=KeyEditM%A_Index%
	If (KeyEditM%A_Index%!=""){
	IniWrite, %hkm%, %work%, Modifiers, ModifierB%A_Index%
	}
	
	
}
Return

mypetnamedsteve:
If (SpecialKeys){
	IniWrite, Checked, %work%, CCB4Keys, SpecialKeys
}
else{
	IniWrite, 1, %work%, CCB4Keys, SpecialKeys
}
If (NormalKeys){
	IniWrite, Checked, %work%, CCB4Keys, NormalKeys
}
else{
	IniWrite, 1, %work%, CCB4Keys, NormalKeys
}
If (HDccbx){
	IniWrite, Checked, %work%, Settings, HDccbx
}
else{
	IniWrite, 1, %work%, Settings, HDccbx
}
If (RDccbx){
		IniWrite, Checked, %work%, Settings, RDccbx
}
else{
	IniWrite, 1, %work%, Settings, RDccbx
}
If (SWccbx){
		IniWrite, Checked, %work%, Settings, SWccbx
}
else{
	IniWrite, 1, %work%, Settings, SWccbx
}
	If (SendKeyModeNormal){
		IniWrite, 1, %work%, Settings, Sendmoder
	}
	If (SendKeyModePlay){
		IniWrite, 2, %work%, Settings, Sendmoder
	}
	If (SendKeyModeInput){
		IniWrite, 3, %work%, Settings, Sendmoder
	}
	If (AnnouncerCCbx){
		IniWrite, 1, %work%, Settings, Announcement
	}
	else{
		IniWrite, 2, %work%, Settings, Announcement
	}
Return


statesave:
IniWrite, %StateHK1%, %work%, State, StateHK1
IniWrite, %StateHK2%, %work%, State, StateHK2
IniWrite, %StateHK3%, %work%, State, StateHK3
IniWrite, %StateHKDDL1%, %work%, StateDDL, StateHKDDL1
IniWrite, %StateHKDDL2%, %work%, StateDDL, StateHKDDL2
IniWrite, %StateHKDDL3%, %work%, StateDDL, StateHKDDL3
return

subber:
Gui, Submit, NoHide
IniWrite, %keys%, %work%, Key amount, Keys
IniWrite, %pwidth%, %work%, Width n Height, pwidth
gosub OneHotkey
gosub TooHotkey
gosub TreHotkey
gosub DDLHotkey1
gosub DDLHotkey2
gosub DDLHotkey3
gosub Potsubmit
gosub mypetnamedsteve
gosub statesave
Return

OneHotkey:
Gui, Submit, NoHide
If (StateHK1=1)
{
	StateHK1:=2
	IniRead, HKey1Old, %work%, Hotkeys, 1
	Hotkey, %HKey1Old%, Off, UseErrorLevel OFF
	IniWrite, %HKey1%, %work%, Hotkeys, 2
	If (SerpendKey1)
	{
		Hotkey, $%Hkey1%, HKeyLabel1, UseErrorLevel ON
		IniWrite, 1, %work%, CCb, 1
	}
	else
	{
		Hotkey, %Hkey1%, HKeyLabel1, UseErrorLevel ON
		IniWrite, 0, %work%, CCb, 1
	}
}
else
{
	StateHK1:=1
	IniRead, HKey1Old, %work%, Hotkeys, 2
	Hotkey, %HKey1Old%, Off, UseErrorLevel OFF
	IniWrite, %HKey1%, %work%, Hotkeys, 1
	If (SerpendKey1)
	{
		Hotkey, $%Hkey1%, HKeyLabel1, UseErrorLevel ON
		IniWrite, 1, %work%, CCb, 1
	}
	else
	{
		Hotkey, %Hkey1%, HKeyLabel1, UseErrorLevel ON
		IniWrite, 0, %work%, CCb, 1
	}
}
Return

TooHotkey:
If (StateHK2=1)
{
	StateHK2:=2
	IniRead, HKey2Old, %work%, Hotkeys, 3
	Hotkey, %HKey2Old%, Off, UseErrorLevel OFF
	IniWrite, %HKey2%, %work%, Hotkeys, 4
	If (SerpendKey2)
	{
		Hotkey, $%Hkey2%, HKeyLabel2, UseErrorLevel ON
		IniWrite, 1, %work%, CCb, 2
	}
	else
	{
		Hotkey, %Hkey2%, HKeyLabel2, UseErrorLevel ON
		IniWrite, 0, %work%, CCb, 2
	}
}
else
{
	StateHK2:=1
	IniRead, HKey2Old, %work%, Hotkeys, 4
	Hotkey, %HKey2Old%, Off, UseErrorLevel OFF
	IniWrite, %HKey2%, %work%, Hotkeys, 3
	If (SerpendKey2)
	{
		Hotkey, $%Hkey2%, HKeyLabel2, UseErrorLevel ON
		IniWrite, 1, %work%, CCb, 2
	}
	else
	{
		Hotkey, %Hkey2%, HKeyLabel2, UseErrorLevel ON
		IniWrite, 0, %work%, CCb, 2
	}
}
Return

TreHotkey:
If (StateHK3=1)
{
	StateHK3:=2
	IniRead, HKey3Old, %work%, Hotkeys, 5
	Hotkey, %HKey3Old%, Off, UseErrorLevel OFF
	IniWrite, %HKey3%, %work%, Hotkeys, 6
	If (SerpendKey3)
	{
		Hotkey, $%Hkey3%, HKeyLabel3, UseErrorLevel ON
		IniWrite, 1, %work%, CCb, 3
	}
	else
	{
		Hotkey, %Hkey3%, HKeyLabel3, UseErrorLevel ON
		IniWrite, 0, %work%, CCb, 3
	}
}
else
{
	StateHK3:=1
	IniRead, HKey3Old, %work%, Hotkeys, 6
	Hotkey, %HKey3Old%, Off, UseErrorLevel OFF
	IniWrite, %HKey3%, %work%, Hotkeys, 5
	If (SerpendKey3)
	{
		Hotkey, $%Hkey3%, HKeyLabel3, UseErrorLevel ON
		IniWrite, 1, %work%, CCb, 3
	}
	else
	{
		Hotkey, %Hkey3%, HKeyLabel3, UseErrorLevel ON
		IniWrite, 0, %work%, CCb, 3
	}
}
Return



DDLHotkeyM1:
DDLHotkey1:
Gui, Submit, NoHide
gosub keycreater
If (StateHKDDL1=1)
{
	StateHKDDL1:=2
	IniRead, HKeyDDL1Old, %work%, Hotkeys, 7
	Hotkey, %HKeyDDL1Old%, Off, UseErrorLevel OFF
	IniWrite, %HKeyDDL1%, %work%, Hotkeys, 8
	If (SerpendKey4)
	{
		Hotkey, $%Mdfier1%%HkeyDDL1%, HKeyDDLLabel1, UseErrorLevel ON
		IniWrite, 1, %work%, CCb, 4
	}
	else
	{
		Hotkey, %Mdfier1%%HkeyDDL1%, HKeyDDLLabel1, UseErrorLevel ON
		IniWrite, 0, %work%, CCb, 4
	}
}
else
{
	StateHKDDL1:=1
	IniRead, HKeyDDL1Old, %work%, Hotkeys, 8
	Hotkey, %HKeyDDL1Old%, Off, UseErrorLevel OFF
	IniWrite, %HKeyDDL1%, %work%, Hotkeys, 7
	If (SerpendKey4)
	{
		Hotkey, $%Mdfier1%%HkeyDDL1%, HKeyDDLLabel1, UseErrorLevel ON
		IniWrite, 1, %work%, CCb, 4
	}
	else
	{
		Hotkey, %Mdfier1%%HkeyDDL1%, HKeyDDLLabel1, UseErrorLevel ON
		IniWrite, 0, %work%, CCb, 4
	}
}
gosub keycanceler
return

keycreater:

If (HkeyDDLM1="Control"){
	IniRead, HKeyDDL1Old, %work%, Hotkeys, 7
	Hotkey, %Mdfier1Old%%HKeyDDL1Old%, Off, UseErrorLevel OFF
	IniRead, HKeyDDL1Old, %work%, Hotkeys, 8
	Hotkey, %Mdfier1Old%%HKeyDDL1Old%, Off, UseErrorLevel OFF
	Hotkey, %Mdfier1Old%%HkeyDDL1%, OFF, UseErrorLevel OFF
		Mdfier1=^
		Mdfier1Old=^
}

else If (HkeyDDLM1="Shift"){
	IniRead, HKeyDDL1Old, %work%, Hotkeys, 7
	Hotkey, %Mdfier1Old%%HKeyDDL1Old%, Off, UseErrorLevel OFF
	IniRead, HKeyDDL1Old, %work%, Hotkeys, 8
	Hotkey, %Mdfier1Old%%HKeyDDL1Old%, Off, UseErrorLevel OFF
	Hotkey, %Mdfier1Old%%HkeyDDL1%, OFF, UseErrorLevel OFF
		Mdfier1=+
		Mdfier1Old=+
}

else If (HkeyDDLM1="Alt"){
	IniRead, HKeyDDL1Old, %work%, Hotkeys, 7
	Hotkey, %Mdfier1Old%%HKeyDDL1Old%, Off, UseErrorLevel OFF
	IniRead, HKeyDDL1Old, %work%, Hotkeys, 8
	Hotkey, %Mdfier1Old%%HKeyDDL1Old%, Off, UseErrorLevel OFF
	Hotkey, %Mdfier1Old%%HkeyDDL1%, OFF, UseErrorLevel OFF
		Mdfier1=!
		Mdfier1Old=!
}

else If (HKeyDDLM1="None"){
	IniRead, HKeyDDL1Old, %work%, Hotkeys, 7
	Hotkey, %Mdfier1Old%%HKeyDDL1Old%, Off, UseErrorLevel OFF
	IniRead, HKeyDDL1Old, %work%, Hotkeys, 8
	Hotkey, %Mdfier1Old%%HKeyDDL1Old%, Off, UseErrorLevel OFF
	Hotkey, %Mdfier1Old%%HkeyDDL1%, OFF, UseErrorLevel OFF
	IniRead, HKeyDDL1Old, %work%, Hotkeys, 7
	Hotkey, %Mdfier1%%HKeyDDL1Old%, Off, UseErrorLevel OFF
	IniRead, HKeyDDL1Old, %work%, Hotkeys, 8
	Hotkey, %Mdfier1%%HKeyDDL1Old%, Off, UseErrorLevel OFF
	Hotkey, %Mdfier1%%HkeyDDL1%, OFF, UseErrorLevel OFF
	Mdfier1:=""
}
return

keycanceler:
If (HkeyDDLM1!="")
{
	If (HkeyDDLM1="Control"){
		Hotkey, ^, Off, UseErrorLevel OFF
	}
	If (HkeyDDLM1="Shift"){
		Hotkey, +, Off, UseErrorLevel OFF
	}
	If (HkeyDDLM1="Alt"){
		Hotkey, !, Off, UseErrorLevel OFF
	}
	Mdfier1:=""
}
return


DDLHotkeyM2:
DDLHotkey2:
Gui, Submit, NoHide
gosub keycreater2
If (StateHKDDL2=1)
{
	StateHKDDL2:=2
	IniRead, HKeyDDL2Old, %work%, Hotkeys, 9
	Hotkey, %HKeyDDL2Old%, Off, UseErrorLevel OFF
	IniWrite, %HKeyDDL2%, %work%, Hotkeys, 10
	If (SerpendKey5)
	{
		Hotkey, $%Mdfier2%%HkeyDDL2%, HKeyDDLLabel2, UseErrorLevel ON
		IniWrite, 1, %work%, CCb, 5
	}
	else
	{
		Hotkey, %Mdfier2%%HkeyDDL2%, HKeyDDLLabel2, UseErrorLevel ON
		IniWrite, 0, %work%, CCb, 5
	}
}
else
{
	StateHKDDL2:=1
	IniRead, HKeyDDL2Old, %work%, Hotkeys, 10
	Hotkey, %HKeyDDL2Old%, Off, UseErrorLevel OFF
	IniWrite, %HKeyDDL2%, %work%, Hotkeys, 9
	If (SerpendKey5)
	{
		Hotkey, $%Mdfier2%%HkeyDDL2%, HKeyDDLLabel2, UseErrorLevel ON
		IniWrite, 1, %work%, CCb, 5
	}
	else
	{
		Hotkey, %Mdfier2%%HkeyDDL2%, HKeyDDLLabel2, UseErrorLevel ON
		IniWrite, 0, %work%, CCb, 5
	}
}
gosub keycanceler2
return





keycreater2:

If (HkeyDDLM2="Control"){
	IniRead, HKeyDDL2Old, %work%, Hotkeys, 9
	Hotkey, %Mdfier2Old%%HKeyDDL2Old%, Off, UseErrorLevel OFF
	IniRead, HKeyDDL2Old, %work%, Hotkeys, 10
	Hotkey, %Mdfier2Old%%HKeyDDL2Old%, Off, UseErrorLevel OFF
	Hotkey, %Mdfier2Old%%HkeyDDL2%, OFF, UseErrorLevel OFF
		Mdfier2=^
		Mdfier2Old=^
}

else If (HkeyDDLM2="Shift"){
	IniRead, HKeyDDL2Old, %work%, Hotkeys, 9
	Hotkey, %Mdfier2Old%%HKeyDDL2Old%, Off, UseErrorLevel OFF
	IniRead, HKeyDDL2Old, %work%, Hotkeys, 10
	Hotkey, %Mdfier2Old%%HKeyDDL2Old%, Off, UseErrorLevel OFF
	Hotkey, %Mdfier2Old%%HkeyDDL2%, OFF, UseErrorLevel OFF
		Mdfier2=+
		Mdfier2Old=+
}

else If (HkeyDDLM2="Alt"){
	IniRead, HKeyDDL2Old, %work%, Hotkeys, 9
	Hotkey, %Mdfier2Old%%HKeyDDL2Old%, Off, UseErrorLevel OFF
	IniRead, HKeyDDL2Old, %work%, Hotkeys, 10
	Hotkey, %Mdfier2Old%%HKeyDDL2Old%, Off, UseErrorLevel OFF
	Hotkey, %Mdfier2Old%%HkeyDDL2%, OFF, UseErrorLevel OFF
		Mdfier2=!
		Mdfier2Old=!
}

else If (HKeyDDLM2="None"){
	IniRead, HKeyDDL2Old, %work%, Hotkeys, 9
	Hotkey, %Mdfier2Old%%HKeyDDL2Old%, Off, UseErrorLevel OFF
	IniRead, HKeyDDL2Old, %work%, Hotkeys, 10
	Hotkey, %Mdfier2Old%%HKeyDDL2Old%, Off, UseErrorLevel OFF
	Hotkey, %Mdfier2Old%%HkeyDDL2%, OFF, UseErrorLevel OFF
	IniRead, HKeyDDL2Old, %work%, Hotkeys, 9
	Hotkey, %Mdfier2%%HKeyDDL2Old%, Off, UseErrorLevel OFF
	IniRead, HKeyDDL2Old, %work%, Hotkeys, 10
	Hotkey, %Mdfier2%%HKeyDDL2Old%, Off, UseErrorLevel OFF
	Hotkey, %Mdfier2%%HkeyDDL2%, OFF, UseErrorLevel OFF
	Mdfier2:=""
}
return

keycanceler2:
If (HkeyDDLM2!="")
{
	If (HkeyDDLM2="Control"){
		Hotkey, ^, Off, UseErrorLevel OFF
	}
	If (HkeyDDLM2="Shift"){
		Hotkey, +, Off, UseErrorLevel OFF
	}
	If (HkeyDDLM2="Alt"){
		Hotkey, !, Off, UseErrorLevel OFF
	}
	Mdfier2:=""
}
return



DDLHotkeyM3:
DDLHotkey3:
Gui, Submit, NoHide
gosub keycreater3
If (StateHKDDL3=1)
{
	StateHKDDL3:=2
	IniRead, HKeyDDL3Old, %work%, Hotkeys, 11
	Hotkey, %HKeyDDL3Old%, Off, UseErrorLevel OFF
	IniWrite, %HKeyDDL3%, %work%, Hotkeys, 12
	If (SerpendKey6)
	{
		Hotkey, $%Mdfier3%%HkeyDDL3%, HKeyDDLLabel3, UseErrorLevel ON
		IniWrite, 1, %work%, CCb, 6
	}
	else
	{
		Hotkey, %Mdfier3%%HkeyDDL3%, HKeyDDLLabel3, UseErrorLevel ON
		IniWrite, 0, %work%, CCb, 6
	}
}
else
{
	StateHKDDL3:=1
	IniRead, HKeyDDL3Old, %work%, Hotkeys, 12
	Hotkey, %HKeyDDL3Old%, Off, UseErrorLevel OFF
	IniWrite, %HKeyDDL3%, %work%, Hotkeys, 11
	If (SerpendKey6)
	{
		Hotkey, $%Mdfier3%%HkeyDDL3%, HKeyDDLLabel3, UseErrorLevel ON
		IniWrite, 1, %work%, CCb, 6
	}
	else
	{
		Hotkey, %Mdfier3%%HkeyDDL3%, HKeyDDLLabel3, UseErrorLevel ON
		IniWrite, 0, %work%, CCb, 6
	}
}
gosub keycanceler3
return





keycreater3:
If (HkeyDDLM3="Control"){
	IniRead, HKeyDDL3Old, %work%, Hotkeys, 11
	Hotkey, %Mdfier3Old%%HKeyDDL3Old%, Off, UseErrorLevel OFF
	IniRead, HKeyDDL3Old, %work%, Hotkeys, 12
	Hotkey, %Mdfier3Old%%HKeyDDL3Old%, Off, UseErrorLevel OFF
	Hotkey, %Mdfier3Old%%HkeyDDL3%, OFF, UseErrorLevel OFF
		Mdfier3=^
		Mdfier3Old=^
}

else If (HkeyDDLM3="Shift"){
	IniRead, HKeyDDL3Old, %work%, Hotkeys, 11
	Hotkey, %Mdfier3Old%%HKeyDDL3Old%, Off, UseErrorLevel OFF
	IniRead, HKeyDDL3Old, %work%, Hotkeys, 12
	Hotkey, %Mdfier3Old%%HKeyDDL3Old%, Off, UseErrorLevel OFF
	Hotkey, %Mdfier3Old%%HkeyDDL3%, OFF, UseErrorLevel OFF
		Mdfier3=+
		Mdfier3Old=+
}

else If (HkeyDDLM3="Alt"){
	IniRead, HKeyDDL3Old, %work%, Hotkeys, 11
	Hotkey, %Mdfier3Old%%HKeyDDL3Old%, Off, UseErrorLevel OFF
	IniRead, HKeyDDL3Old, %work%, Hotkeys, 12
	Hotkey, %Mdfier3Old%%HKeyDDL3Old%, Off, UseErrorLevel OFF
	Hotkey, %Mdfier3Old%%HkeyDDL3%, OFF, UseErrorLevel OFF
		Mdfier3=!
		Mdfier3Old=!
}

else If (HKeyDDLM3="None"){
	IniRead, HKeyDDL3Old, %work%, Hotkeys, 11
	Hotkey, %Mdfier3Old%%HKeyDDL3Old%, Off, UseErrorLevel OFF
	IniRead, HKeyDDL3Old, %work%, Hotkeys, 12
	Hotkey, %Mdfier3Old%%HKeyDDL3Old%, Off, UseErrorLevel OFF
	Hotkey, %Mdfier3Old%%HkeyDDL3%, OFF, UseErrorLevel OFF
	IniRead, HKeyDDL3Old, %work%, Hotkeys, 11
	Hotkey, %Mdfier3%%HKeyDDL3Old%, Off, UseErrorLevel OFF
	IniRead, HKeyDDL3Old, %work%, Hotkeys, 12
	Hotkey, %Mdfier3%%HKeyDDL3Old%, Off, UseErrorLevel OFF
	Hotkey, %Mdfier3%%HkeyDDL3%, OFF, UseErrorLevel OFF
	Mdfier3:=""
}
return

keycanceler3:
If (HkeyDDLM3!="")
{
	If (HkeyDDLM3="Control"){
		Hotkey, ^, Off, UseErrorLevel OFF
	}
	If (HkeyDDLM3="Shift"){
		Hotkey, +, Off, UseErrorLevel OFF
	}
	If (HkeyDDLM3="Alt"){
		Hotkey, !, Off, UseErrorLevel OFF
	}
	Mdfier3:=""
}
return


buttonadd:
Gui, Submit, NoHide
If (keys<50)
{
	keys:=keys+1
	pwidth:=pwidth+75
	IniWrite, %keys%, %work%, Key amount, Keys
	IniWrite, %pwidth%, %work%, Width n Height, pwidth
	gosub mypetnamedsteve
	Reload
}
else
{
	Msgbox You can't add more than 50 keys.
}
Return

buttonremove:
Gui, Submit, NoHide
If (keys>5)
{
	keys:=keys-1
	pwidth:=pwidth-75
	IniWrite, %keys%, %work%, Key amount, Keys
	IniWrite, %pwidth%, %work%, Width n Height, pwidth
	gosub mypetnamedsteve
	Reload
}
else
{
	Msgbox You can't have less than 5 keys in this tab.
}
Return

buttonrefresh:
gosub subber
reload
return

buttonapply:
gosub subber
Reload
Return

GuiClose:
Gui, Submit, NoHide
gosub Subber
ExitApp
Return

varsetA:
			yas1=20
			yas2=20
			yas3=70
			yas4=40
			yas5=100
			yas6=120
			yas7=250
			yas8=210
			yas9=280
			yas10=150
			yas11=170
			yas12=190
			yas13=365
			yas14=310
			yas15=385
			yas16=340
			xas1=0
			xas2=65
			xas3=0
			xas4=0
			xas5=0
			xas6=0
			xas7=0
			xas8=0
			xas9=0
			xas10=10
			xas11=0
			xas12=0
			xas13=0
			xas14=0
			xas15=0
			xas16=0
yas100:=0
xas100=135

If ((HDccbx1!="Checked") and (RDccbx1="Checked") and (SWccbx1!="Checked")) ;  rd
{
yas9=210
}
If ((HDccbx1!="Checked") and (RDccbx1="Checked") and (SWccbx1="Checked")) ; rd sw
{
yas9=305
yas13=270
yas14=210
yas15=290
yas16=240
}
If ((HDccbx1!="Checked") and (RDccbx1!="Checked") and (SWccbx1="Checked")) ; sw
{
yas13=270
yas14=210
yas15=290
yas16=240
}
If ((HDccbx1="Checked") and (RDccbx1!="Checked") and (SWccbx1="Checked")) ; sw hd
{
yas13=340
yas14=280
yas15=360
yas16=310
}
return

varsetB:
			yas1:=380+20
			yas2:=380+20
			yas3:=450
			yas4:=360+20+40
			yas5:=420+20+40
			yas6:=440+20+40
			yas7:=570+20+40
			yas8:=530+20+40
			yas9:=600+20+40
			yas10:=470+20+40
			yas11:=490+20+40
			yas12:=510+20+40
			yas13:=675+20+40+5+10
			yas14:=620+20+40+5+10
			yas15:=695+20+40+5+10
			yas16:=640+20+40+5+10+10
			xas1=0
			xas2=65
			xas3=0
			xas4=0
			xas5=0
			xas6=0
			xas7=0
			xas8=0
			xas9=0
			xas10=10
			xas11=0
			xas12=0
			xas13=0
			xas14=0
			xas15=0
			xas16=0
			

If ((HDccbx1="Checked") and (RDccbx1!="Checked") and (SWccbx1!="Checked")) ; hd
{
			yas1:=380+20-40-40-40
			yas2:=380+20-40-40-40
			yas3:=360+20+40-40-50
			yas4:=450-40-40-40-30
			yas5:=420+20+40-40-40-40
			yas6:=440+20+40-40-40-40
			yas7:=570+20+40-40-40-40
			yas8:=530+20+40-40-40-40
			yas9:=600+20+40-40-40-40
			yas10:=470+20+40-40-40-40
			yas11:=490+20+40-40-40-40
			yas12:=510+20+40-40-40-40
			yas13:=675+20+40+5+10-40-40-40
			yas14:=620+20+40+5+10-40-40-40
			yas15:=695+20+40+5+10-40-40-40
			yas16:=640+20+40+5+10+10-40-40-40
}
If ((HDccbx1="Checked") and (RDccbx1="Checked") and (SWccbx1!="Checked")) ; hd rd
{
			yas1:=380+20-40-40-10
			yas2:=380+20-40-40-10
			yas3:=450-40-40-10
			yas4:=360+20+40-40-40-10
			yas5:=420+20+40-40-40-10
			yas6:=440+20+40-40-40-10
			yas7:=570+20+40-40-40-10
			yas8:=530+20+40-40-40-10
			yas9:=600+20+40-40-40-10
			yas10:=470+20+40-40-40-10
			yas11:=490+20+40-40-40-10
			yas12:=510+20+40-40-40-10
			yas13:=675+20+40+5+10-40-40-10
			yas14:=620+20+40+5+10-40-40-10
			yas15:=695+20+40+5+10-40-40-10
			yas16:=640+20+40+5+10+10-40-40-10
}
If ((HDccbx1!="Checked") and (RDccbx1="Checked") and (SWccbx1!="Checked")) ;  rd
{
			yas1:=380+20-40-40-40-40
			yas2:=450-40-40-40-40
			yas3:=380+20-40-40-40-40
			yas4:=360+20+40-40-40-40-40
			yas5:=420+20+40-40-40-40-40
			yas6:=440+20+40-40-40-40-40
			yas7:=570+20+40-40-40-40-40
			yas8:=530+20+40-40-40-40-40
			yas9:=600+20+40-40-40-40-40-40-30
			yas10:=470+20+40-40-40-40-40
			yas11:=490+20+40-40-40-40-40
			yas12:=510+20+40-40-40-40-40
			yas13:=675+20+40+5+10-40-40-40-40
			yas14:=620+20+40+5+10-40-40-40-40
			yas15:=695+20+40+5+10-40-40-40-40
			yas16:=640+20+40+5+10+10-40-40-40-40
}
If ((HDccbx1!="Checked") and (RDccbx1="Checked") and (SWccbx1="Checked")) ; rd sw
{
			yas1:=380+20-20-20-20
			yas2:=380+20-20-20-20
			yas3:=360+20+40-30
			yas4:=450-40-20-20-10
			yas5:=420+20+40-40-20
			yas6:=440+20+40-40-20
			yas7:=570+20+40-40-20
			yas8:=530+20+40-40-20
			yas9:=600+20+40-20-10
			yas10:=470+20+40-40-20
			yas11:=490+20+40-40-20
			yas12:=510+20+40-40-20
			yas13:=675+20+40+5+10-40-20-20-20-20-20-15
			yas14:=620+20+40+5+10-40-20-20-20-20-20-20
			yas15:=695+20+40+5+10-40-20-20-20-20-20-15
			yas16:=640+20+40+5+10+10-40-20-20-20-20-20-20
}
If ((HDccbx1!="Checked") and (RDccbx1!="Checked") and (SWccbx1="Checked")) ; sw
{
			yas1:=380+20-20-20-20-20-10
			yas2:=380+20-20-20-20-20-10
			yas3:=360+20+40-30-20-10
			yas4:=450-40-20-20-10-20-10
			yas5:=420+20+40-40-20-20-10
			yas6:=440+20+40-40-20-20-10
			yas7:=570+20+40-40-20-20-10
			yas8:=530+20+40-40-20-20-10
			yas9:=600+20+40-20-10-20-10
			yas10:=470+20+40-40-20-20-10
			yas11:=490+20+40-40-20-20-10
			yas12:=510+20+40-40-20-20-10
			yas13:=675+20+40+5+10-40-20-20-20-20-20-15-20-10
			yas14:=620+20+40+5+10-40-20-20-20-20-20-20-20-10
			yas15:=695+20+40+5+10-40-20-20-20-20-20-15-20-10
			yas16:=640+20+40+5+10+10-40-20-20-20-20-20-20-20-10
}
If ((HDccbx1="Checked") and (RDccbx1!="Checked") and (SWccbx1="Checked")) ; sw hd
{
			yas1:=380+20-20
			yas2:=380+20-20
			yas3:=450-40-10
			yas4:=360+20+40+20-10
			yas5:=420+20+40-20
			yas6:=440+20+40-20
			yas7:=570+20+40-20
			yas8:=530+20+40-20
			yas9:=600+20+40-10
			yas10:=470+20+40-20
			yas11:=490+20+40-20
			yas12:=510+20+40-20
			yas13:=675+20+40+5+10-40-10
			yas14:=620+20+40+5+10-40-15
			yas15:=695+20+40+5+10-40-10
			yas16:=640+20+40+5+10+10-40-15
}
If ((HDccbx1!="Checked") and (RDccbx1!="Checked") and (SWccbx1!="Checked")) ; none
{
			yas1:=380+20-40-40-40-40-40+10
			yas2:=380+20-40-40-40-40-40+10
			yas3:=360+20+40-40-50-40-40+10
			yas4:=450-40-40-40-30-40-40+10
			yas5:=420+20+40-40-40-40-40-40+10
			yas6:=440+20+40-40-40-40-40-40+10
			yas7:=570+20+40-40-40-40-40-40+10
			yas8:=530+20+40-40-40-40-40-40+10
			yas9:=600+20+40-40-40-40-40-40+10
			yas10:=470+20+40-40-40-40-40-40+10
			yas11:=490+20+40-40-40-40-40-40+10
			yas12:=510+20+40-40-40-40-40-40+10
			yas13:=675+20+40+5+10-40-40-40-40-40+10
			yas14:=620+20+40+5+10-40-40-40-40-40+10
			yas15:=695+20+40+5+10-40-40-40-40-40+10
			yas16:=640+20+40+5+10+10-40-40-40-40-40+10
}
return

iffirst:
			ya1=ym+%yas1%
			ya2=ym+%yas2%
			ya3=ym+%yas3%
			ya4=ym+%yas4%
			ya5=ym+%yas5%
			ya6=ym+%yas6%
			ya7=ym+%yas7%
			ya8=ym+%yas8%
			ya9=ym+%yas9%
			ya10=ym+%yas10%
			ya11=ym+%yas11%
			ya12=ym+%yas12%
			ya13=ym+%yas13%
			ya14=ym+%yas14%
			ya15=ym+%yas15%
			ya16=ym+%yas16%
			xa1=x10
			xa2=xp+%xas2%
			xa3=xp+%xas3%
			xa4=xp+%xas4%
			xa5=xp+%xas5%
			xa6=xp+%xas6%
			xa7=xp+%xas7%
			xa8=xp+%xas8%
			xa9=xp+%xas9%
			xa10=xp+%xas10%
			xa11=xp+%xas11%
			xa12=xp+%xas12%
			xa13=xp+%xas13%
			xa14=xp+%xas14%
			xa15=xp-%xas15%
			xa16=xp+%xas16%
			ya100=ym
			xa100=xp-%xas16%
return

ifsecond:
			ya1=ym+%yas1%
			ya2=ym+%yas2%
			ya3=ym+%yas3%
			ya4=ym+%yas4%
			ya5=ym+%yas5%
			ya6=ym+%yas6%
			ya7=ym+%yas7%
			ya8=ym+%yas8%
			ya9=ym+%yas9%
			ya10=ym+%yas10%
			ya11=ym+%yas11%
			ya12=ym+%yas12%
			ya13=ym+%yas13%
			ya14=ym+%yas14%
			ya15=ym+%yas15%
			ya16=ym+%yas16%
			xa1=x10
			xa2=xp+65
			xa3=xp
			xa4=xp
			xa5=xp
			xa6=xp
			xa7=xp
			xa8=xp
			xa9=xp
			xa10=xp+10
			xa11=xp
			xa12=xp
			xa13=xp
			xa14=xp
			xa15=xp
			xa16=xp
return

ddlkeylisterM1:
None=None
Control=Control
Shift=Shift
Alt=Alt
ˍ= ˍ
ˏ= ˏ
¨= ¨
return



ddlkeylister1:
Enter= Enter
Tab= Tab
CapsLock= CapsLock
Insert= Insert
Home= Home
PgUp= PgUp
PgDn= PgDn
Up= Up
Down= Down
Left= Left
Right= Right
Del=Del
End= End
ScrollLock= ScrollLock
bar= `|
accent= ``
minus= -
equal= =
lpg={
rpg=}
lps=[
rps=]
lpr=(
rpr=)
semicolon= `;
quote= '
reverseslash= \
comma= ,
dot= .
normalslash= /
approx= ~
plus= +
colon= :
fullquote= "
fullquote= "
less= <
greater= >
questionmark= ?
percent= `%
power= ^
andsign= &
multiplication= *
dollar= $
underscore= _
exclamationmark= `!
1=1
2=2
3=3
4=4
5=5
6=6
7=7
8=8
9=9
0=0
q=q
w=w
e=e
r=r
t=t
y=y
u=u
i=i
o=o
p=p
a=a
s=s
d=d
f=f
g=g
h=h
j=j
k=k
l=l
z=z
x=x
c=c
v=v
b=b
n=n
m=m
@=@
#=#
F1=F1
F2=F2
F3=F3
F4=F4
F5=F5
F6=F6
F7=F7
F8=F8
F9=F9
F10=F10
F11=F11
F12=F12

²= ²
é= é
¦= ¦
è= è
ç= ç
à= à
¨= ¨
£= £
¤= ¤
ù= ù
µ= µ
§= §
ê= ê
ë= ë
Ë= Ë
û= û
ô= ô


³= ³
ß= ß
Ä= Ä
Ö= Ö
Ü= Ü

return

MLabelD1:
keakeaD:=kearD1
If (SendToWinD1)
{
	If (programD1){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD1%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD1%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD1!=""){
	Sleepy:=RMSEditD1
}
else{
	Sleepy:=20
}
If (rvD1){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD1)
{
	If (programD1){
		ControlSend, , {%keakeaD% up}, %programD1%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD1%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD2:
keakeaD:=kearD2
If (SendToWinD2)
{
	If (programD2){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD2%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD2%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD2!=""){
	Sleepy:=RMSEditD2
}
else{
	Sleepy:=20
}
If (rvD2){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD2)
{
	If (programD2){
		ControlSend, , {%keakeaD% up}, %programD2%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD2%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD3:
keakeaD:=kearD3
If (SendToWinD3)
{
	If (programD3){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD3%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD3%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD3!=""){
	Sleepy:=RMSEditD3
}
else{
	Sleepy:=20
}
If (rvD3){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD3)
{
	If (programD3){
		ControlSend, , {%keakeaD% up}, %programD3%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD3%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD4:
keakeaD:=kearD4
If (SendToWinD4)
{
	If (programD4){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD4%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD4%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD4!=""){
	Sleepy:=RMSEditD4
}
else{
	Sleepy:=20
}
If (rvD4){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD4)
{
	If (programD4){
		ControlSend, , {%keakeaD% up}, %programD4%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD4%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD5:
keakeaD:=kearD5
If (SendToWinD5)
{
	If (programD5){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD5%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD5%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD5!=""){
	Sleepy:=RMSEditD5
}
else{
	Sleepy:=20
}
If (rvD5){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD5)
{
	If (programD5){
		ControlSend, , {%keakeaD% up}, %programD5%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD5%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD6:
keakeaD:=kearD6
If (SendToWinD6)
{
	If (programD6){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD6%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD6%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD6!=""){
	Sleepy:=RMSEditD6
}
else{
	Sleepy:=20
}
If (rvD6){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD6)
{
	If (programD6){
		ControlSend, , {%keakeaD% up}, %programD6%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD6%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD7:
keakeaD:=kearD7
If (SendToWinD7)
{
	If (programD7){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD7%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD7%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD7!=""){
	Sleepy:=RMSEditD7
}
else{
	Sleepy:=20
}
If (rvD7){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD7)
{
	If (programD7){
		ControlSend, , {%keakeaD% up}, %programD7%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD7%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD8:
keakeaD:=kearD8
If (SendToWinD8)
{
	If (programD8){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD8%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD8%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD8!=""){
	Sleepy:=RMSEditD8
}
else{
	Sleepy:=20
}
If (rvD8){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD8)
{
	If (programD8){
		ControlSend, , {%keakeaD% up}, %programD8%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD8%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD9:
keakeaD:=kearD9
If (SendToWinD9)
{
	If (programD9){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD9%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD9%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD9!=""){
	Sleepy:=RMSEditD9
}
else{
	Sleepy:=20
}
If (rvD9){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD9)
{
	If (programD9){
		ControlSend, , {%keakeaD% up}, %programD9%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD9%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD10:
keakeaD:=kearD10
If (SendToWinD10)
{
	If (programD10){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD10%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD10%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD10!=""){
	Sleepy:=RMSEditD10
}
else{
	Sleepy:=20
}
If (rvD10){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD10)
{
	If (programD10){
		ControlSend, , {%keakeaD% up}, %programD10%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD10%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD11:
keakeaD:=kearD11
If (SendToWinD11)
{
	If (programD11){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD11%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD11%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD11!=""){
	Sleepy:=RMSEditD11
}
else{
	Sleepy:=20
}
If (rvD11){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD11)
{
	If (programD11){
		ControlSend, , {%keakeaD% up}, %programD11%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD11%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD12:
keakeaD:=kearD12
If (SendToWinD12)
{
	If (programD12){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD12%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD12%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD12!=""){
	Sleepy:=RMSEditD12
}
else{
	Sleepy:=20
}
If (rvD12){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD12)
{
	If (programD12){
		ControlSend, , {%keakeaD% up}, %programD12%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD12%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD13:
keakeaD:=kearD13
If (SendToWinD13)
{
	If (programD13){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD13%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD13%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD13!=""){
	Sleepy:=RMSEditD13
}
else{
	Sleepy:=20
}
If (rvD13){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD13)
{
	If (programD13){
		ControlSend, , {%keakeaD% up}, %programD13%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD13%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD14:
keakeaD:=kearD14
If (SendToWinD14)
{
	If (programD14){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD14%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD14%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD14!=""){
	Sleepy:=RMSEditD14
}
else{
	Sleepy:=20
}
If (rvD14){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD14)
{
	If (programD14){
		ControlSend, , {%keakeaD% up}, %programD14%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD14%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD15:
keakeaD:=kearD15
If (SendToWinD15)
{
	If (programD15){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD15%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD15%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD15!=""){
	Sleepy:=RMSEditD15
}
else{
	Sleepy:=20
}
If (rvD15){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD15)
{
	If (programD15){
		ControlSend, , {%keakeaD% up}, %programD15%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD15%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD16:
keakeaD:=kearD16
If (SendToWinD16)
{
	If (programD16){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD16%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD16%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD16!=""){
	Sleepy:=RMSEditD16
}
else{
	Sleepy:=20
}
If (rvD16){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD16)
{
	If (programD16){
		ControlSend, , {%keakeaD% up}, %programD16%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD16%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD17:
keakeaD:=kearD17
If (SendToWinD17)
{
	If (programD17){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD17%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD17%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD17!=""){
	Sleepy:=RMSEditD17
}
else{
	Sleepy:=20
}
If (rvD17){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD17)
{
	If (programD17){
		ControlSend, , {%keakeaD% up}, %programD17%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD17%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD18:
keakeaD:=kearD18
If (SendToWinD18)
{
	If (programD18){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD18%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD18%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD18!=""){
	Sleepy:=RMSEditD18
}
else{
	Sleepy:=20
}
If (rvD18){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD18)
{
	If (programD18){
		ControlSend, , {%keakeaD% up}, %programD18%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD18%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD19:
keakeaD:=kearD19
If (SendToWinD19)
{
	If (programD19){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD19%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD19%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD19!=""){
	Sleepy:=RMSEditD19
}
else{
	Sleepy:=20
}
If (rvD19){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD19)
{
	If (programD19){
		ControlSend, , {%keakeaD% up}, %programD19%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD19%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD20:
keakeaD:=kearD20
If (SendToWinD20)
{
	If (programD20){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD20%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD20%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD20!=""){
	Sleepy:=RMSEditD20
}
else{
	Sleepy:=20
}
If (rvD20){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD20)
{
	If (programD20){
		ControlSend, , {%keakeaD% up}, %programD20%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD20%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD21:
keakeaD:=kearD21
If (SendToWinD21)
{
	If (programD21){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD21%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD21%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD21!=""){
	Sleepy:=RMSEditD21
}
else{
	Sleepy:=20
}
If (rvD21){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD21)
{
	If (programD21){
		ControlSend, , {%keakeaD% up}, %programD21%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD21%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD22:
keakeaD:=kearD22
If (SendToWinD22)
{
	If (programD22){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD22%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD22%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD22!=""){
	Sleepy:=RMSEditD22
}
else{
	Sleepy:=20
}
If (rvD22){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD22)
{
	If (programD22){
		ControlSend, , {%keakeaD% up}, %programD22%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD22%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD23:
keakeaD:=kearD23
If (SendToWinD23)
{
	If (programD23){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD23%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD23%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD23!=""){
	Sleepy:=RMSEditD23
}
else{
	Sleepy:=20
}
If (rvD23){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD23)
{
	If (programD23){
		ControlSend, , {%keakeaD% up}, %programD23%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD23%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD24:
keakeaD:=kearD24
If (SendToWinD24)
{
	If (programD24){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD24%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD24%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD24!=""){
	Sleepy:=RMSEditD24
}
else{
	Sleepy:=20
}
If (rvD24){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD24)
{
	If (programD24){
		ControlSend, , {%keakeaD% up}, %programD24%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD24%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD25:
keakeaD:=kearD25
If (SendToWinD25)
{
	If (programD25){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD25%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD25%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD25!=""){
	Sleepy:=RMSEditD25
}
else{
	Sleepy:=20
}
If (rvD25){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD25)
{
	If (programD25){
		ControlSend, , {%keakeaD% up}, %programD25%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD25%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD26:
keakeaD:=kearD26
If (SendToWinD26)
{
	If (programD26){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD26%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD26%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD26!=""){
	Sleepy:=RMSEditD26
}
else{
	Sleepy:=20
}
If (rvD26){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD26)
{
	If (programD26){
		ControlSend, , {%keakeaD% up}, %programD26%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD26%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD27:
keakeaD:=kearD27
If (SendToWinD27)
{
	If (programD27){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD27%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD27%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD27!=""){
	Sleepy:=RMSEditD27
}
else{
	Sleepy:=20
}
If (rvD27){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD27)
{
	If (programD27){
		ControlSend, , {%keakeaD% up}, %programD27%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD27%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD28:
keakeaD:=kearD28
If (SendToWinD28)
{
	If (programD28){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD28%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD28%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD28!=""){
	Sleepy:=RMSEditD28
}
else{
	Sleepy:=20
}
If (rvD28){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD28)
{
	If (programD28){
		ControlSend, , {%keakeaD% up}, %programD28%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD28%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD29:
keakeaD:=kearD29
If (SendToWinD29)
{
	If (programD29){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD29%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD29%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD29!=""){
	Sleepy:=RMSEditD29
}
else{
	Sleepy:=20
}
If (rvD29){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD29)
{
	If (programD29){
		ControlSend, , {%keakeaD% up}, %programD29%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD29%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD30:
keakeaD:=kearD30
If (SendToWinD30)
{
	If (programD30){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD30%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD30%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD30!=""){
	Sleepy:=RMSEditD30
}
else{
	Sleepy:=20
}
If (rvD30){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD30)
{
	If (programD30){
		ControlSend, , {%keakeaD% up}, %programD30%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD30%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD31:
keakeaD:=kearD31
If (SendToWinD31)
{
	If (programD31){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD31%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD31%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD31!=""){
	Sleepy:=RMSEditD31
}
else{
	Sleepy:=20
}
If (rvD31){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD31)
{
	If (programD31){
		ControlSend, , {%keakeaD% up}, %programD31%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD31%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD32:
keakeaD:=kearD32
If (SendToWinD32)
{
	If (programD32){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD32%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD32%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD32!=""){
	Sleepy:=RMSEditD32
}
else{
	Sleepy:=20
}
If (rvD32){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD32)
{
	If (programD32){
		ControlSend, , {%keakeaD% up}, %programD32%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD32%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD33:
keakeaD:=kearD33
If (SendToWinD33)
{
	If (programD33){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD33%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD33%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD33!=""){
	Sleepy:=RMSEditD33
}
else{
	Sleepy:=20
}
If (rvD33){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD33)
{
	If (programD33){
		ControlSend, , {%keakeaD% up}, %programD33%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD33%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD34:
keakeaD:=kearD34
If (SendToWinD34)
{
	If (programD34){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD34%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD34%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD34!=""){
	Sleepy:=RMSEditD34
}
else{
	Sleepy:=20
}
If (rvD34){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD34)
{
	If (programD34){
		ControlSend, , {%keakeaD% up}, %programD34%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD34%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD35:
keakeaD:=kearD35
If (SendToWinD35)
{
	If (programD35){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD35%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD35%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD35!=""){
	Sleepy:=RMSEditD35
}
else{
	Sleepy:=20
}
If (rvD35){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD35)
{
	If (programD35){
		ControlSend, , {%keakeaD% up}, %programD35%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD35%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD36:
keakeaD:=kearD36
If (SendToWinD36)
{
	If (programD36){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD36%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD36%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD36!=""){
	Sleepy:=RMSEditD36
}
else{
	Sleepy:=20
}
If (rvD36){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD36)
{
	If (programD36){
		ControlSend, , {%keakeaD% up}, %programD36%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD36%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD37:
keakeaD:=kearD37
If (SendToWinD37)
{
	If (programD37){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD37%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD37%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD37!=""){
	Sleepy:=RMSEditD37
}
else{
	Sleepy:=20
}
If (rvD37){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD37)
{
	If (programD37){
		ControlSend, , {%keakeaD% up}, %programD37%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD37%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD38:
keakeaD:=kearD38
If (SendToWinD38)
{
	If (programD38){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD38%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD38%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD38!=""){
	Sleepy:=RMSEditD38
}
else{
	Sleepy:=20
}
If (rvD38){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD38)
{
	If (programD38){
		ControlSend, , {%keakeaD% up}, %programD38%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD38%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD39:
keakeaD:=kearD39
If (SendToWinD39)
{
	If (programD39){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD39%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD39%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD39!=""){
	Sleepy:=RMSEditD39
}
else{
	Sleepy:=20
}
If (rvD39){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD39)
{
	If (programD39){
		ControlSend, , {%keakeaD% up}, %programD39%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD39%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD40:
keakeaD:=kearD40
If (SendToWinD40)
{
	If (programD40){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD40%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD40%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD40!=""){
	Sleepy:=RMSEditD40
}
else{
	Sleepy:=20
}
If (rvD40){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD40)
{
	If (programD40){
		ControlSend, , {%keakeaD% up}, %programD40%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD40%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD41:
keakeaD:=kearD41
If (SendToWinD41)
{
	If (programD41){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD41%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD41%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD41!=""){
	Sleepy:=RMSEditD41
}
else{
	Sleepy:=20
}
If (rvD41){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD41)
{
	If (programD41){
		ControlSend, , {%keakeaD% up}, %programD41%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD41%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD42:
keakeaD:=kearD42
If (SendToWinD42)
{
	If (programD42){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD42%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD42%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD42!=""){
	Sleepy:=RMSEditD42
}
else{
	Sleepy:=20
}
If (rvD42){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD42)
{
	If (programD42){
		ControlSend, , {%keakeaD% up}, %programD42%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD42%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD43:
keakeaD:=kearD43
If (SendToWinD43)
{
	If (programD43){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD43%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD43%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD43!=""){
	Sleepy:=RMSEditD43
}
else{
	Sleepy:=20
}
If (rvD43){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD43)
{
	If (programD43){
		ControlSend, , {%keakeaD% up}, %programD43%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD43%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD44:
keakeaD:=kearD44
If (SendToWinD44)
{
	If (programD44){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD44%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD44%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD44!=""){
	Sleepy:=RMSEditD44
}
else{
	Sleepy:=20
}
If (rvD44){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD44)
{
	If (programD44){
		ControlSend, , {%keakeaD% up}, %programD44%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD44%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD45:
keakeaD:=kearD45
If (SendToWinD45)
{
	If (programD45){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD45%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD45%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD45!=""){
	Sleepy:=RMSEditD45
}
else{
	Sleepy:=20
}
If (rvD45){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD45)
{
	If (programD45){
		ControlSend, , {%keakeaD% up}, %programD45%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD45%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD46:
keakeaD:=kearD46
If (SendToWinD46)
{
	If (programD46){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD46%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD46%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD46!=""){
	Sleepy:=RMSEditD46
}
else{
	Sleepy:=20
}
If (rvD46){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD46)
{
	If (programD46){
		ControlSend, , {%keakeaD% up}, %programD46%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD46%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD47:
keakeaD:=kearD47
If (SendToWinD47)
{
	If (programD47){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD47%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD47%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD47!=""){
	Sleepy:=RMSEditD47
}
else{
	Sleepy:=20
}
If (rvD47){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD47)
{
	If (programD47){
		ControlSend, , {%keakeaD% up}, %programD47%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD47%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD48:
keakeaD:=kearD48
If (SendToWinD48)
{
	If (programD48){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD48%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD48%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD48!=""){
	Sleepy:=RMSEditD48
}
else{
	Sleepy:=20
}
If (rvD48){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD48)
{
	If (programD48){
		ControlSend, , {%keakeaD% up}, %programD48%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD48%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD49:
keakeaD:=kearD49
If (SendToWinD49)
{
	If (programD49){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD49%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD49%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD49!=""){
	Sleepy:=RMSEditD49
}
else{
	Sleepy:=20
}
If (rvD49){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD49)
{
	If (programD49){
		ControlSend, , {%keakeaD% up}, %programD49%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD49%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabelD50:
keakeaD:=kearD50
If (SendToWinD50)
{
	If (programD50){
		If (mvarD!=""){
			ControlSend, , {%mvard% down}, %programD50%
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
		}
		ControlSend, , {%keakeaD% down}, %programD50%
	}
}
else
{
	If (mvarD!=""){
		Send {%mvard% down}
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
	}
	Send {%keakeaD%  down}
}
If (RMSEditD50!=""){
	Sleepy:=RMSEditD50
}
else{
	Sleepy:=20
}
If (rvD50){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWinD50)
{
	If (programD50){
		ControlSend, , {%keakeaD% up}, %programD50%
		If (mvarD!=""){
			SleepMD:=A_Hour/A_Sec
			If (SleepMD>4.9){
				SleepMD:=SleepMD/5
			}
			Sleep, %SleepMD%
			ControlSend, , {%mvard% up}, %programD50%
		}
		
	}
}
else
{
	Send {%keakeaD%  up}
	If (mvarD!=""){
		SleepMD:=A_Hour/A_Sec
		If (SleepMD>4.9){
			SleepMD:=SleepMD/5
		}
		Sleep, %SleepMD%
		Send {%mvard% up}
	}
}
Return

MLabel1:
keakea:=kear1
If (SendToWin1)
{
	If (program1){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program1%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program1%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit1!=""){
	Sleepy:=RMSEdit1
}
else{
	Sleepy:=20
}
If (rv1){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin1)
{
	If (program1){
		ControlSend, , {%keakea% up}, %program1%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program1%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel2:
keakea:=kear2
If (SendToWin2)
{
	If (program2){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program2%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program2%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit2!=""){
	Sleepy:=RMSEdit2
}
else{
	Sleepy:=20
}
If (rv2){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin2)
{
	If (program2){
		ControlSend, , {%keakea% up}, %program2%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program2%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel3:
keakea:=kear3
If (SendToWin3)
{
	If (program3){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program3%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program3%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit3!=""){
	Sleepy:=RMSEdit3
}
else{
	Sleepy:=20
}
If (rv3){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin3)
{
	If (program3){
		ControlSend, , {%keakea% up}, %program3%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program3%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel4:
keakea:=kear4
If (SendToWin4)
{
	If (program4){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program4%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program4%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit4!=""){
	Sleepy:=RMSEdit4
}
else{
	Sleepy:=20
}
If (rv4){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin4)
{
	If (program4){
		ControlSend, , {%keakea% up}, %program4%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program4%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel5:
keakea:=kear5
If (SendToWin5)
{
	If (program5){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program5%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program5%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit5!=""){
	Sleepy:=RMSEdit5
}
else{
	Sleepy:=20
}
If (rv5){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin5)
{
	If (program5){
		ControlSend, , {%keakea% up}, %program5%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program5%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel6:
keakea:=kear6
If (SendToWin6)
{
	If (program6){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program6%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program6%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit6!=""){
	Sleepy:=RMSEdit6
}
else{
	Sleepy:=20
}
If (rv6){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin6)
{
	If (program6){
		ControlSend, , {%keakea% up}, %program6%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program6%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel7:
keakea:=kear7
If (SendToWin7)
{
	If (program7){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program7%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program7%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit7!=""){
	Sleepy:=RMSEdit7
}
else{
	Sleepy:=20
}
If (rv7){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin7)
{
	If (program7){
		ControlSend, , {%keakea% up}, %program7%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program7%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel8:
keakea:=kear8
If (SendToWin8)
{
	If (program8){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program8%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program8%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit8!=""){
	Sleepy:=RMSEdit8
}
else{
	Sleepy:=20
}
If (rv8){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin8)
{
	If (program8){
		ControlSend, , {%keakea% up}, %program8%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program8%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel9:
keakea:=kear9
If (SendToWin9)
{
	If (program9){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program9%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program9%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit9!=""){
	Sleepy:=RMSEdit9
}
else{
	Sleepy:=20
}
If (rv9){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin9)
{
	If (program9){
		ControlSend, , {%keakea% up}, %program9%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program9%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel10:
keakea:=kear10
If (SendToWin10)
{
	If (program10){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program10%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program10%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit10!=""){
	Sleepy:=RMSEdit10
}
else{
	Sleepy:=20
}
If (rv10){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin10)
{
	If (program10){
		ControlSend, , {%keakea% up}, %program10%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program10%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel11:
keakea:=kear11
If (SendToWin11)
{
	If (program11){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program11%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program11%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit11!=""){
	Sleepy:=RMSEdit11
}
else{
	Sleepy:=20
}
If (rv11){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin11)
{
	If (program11){
		ControlSend, , {%keakea% up}, %program11%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program11%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel12:
keakea:=kear12
If (SendToWin12)
{
	If (program12){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program12%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program12%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit12!=""){
	Sleepy:=RMSEdit12
}
else{
	Sleepy:=20
}
If (rv12){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin12)
{
	If (program12){
		ControlSend, , {%keakea% up}, %program12%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program12%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel13:
keakea:=kear13
If (SendToWin13)
{
	If (program13){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program13%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program13%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit13!=""){
	Sleepy:=RMSEdit13
}
else{
	Sleepy:=20
}
If (rv13){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin13)
{
	If (program13){
		ControlSend, , {%keakea% up}, %program13%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program13%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel14:
keakea:=kear14
If (SendToWin14)
{
	If (program14){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program14%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program14%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit14!=""){
	Sleepy:=RMSEdit14
}
else{
	Sleepy:=20
}
If (rv14){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin14)
{
	If (program14){
		ControlSend, , {%keakea% up}, %program14%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program14%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel15:
keakea:=kear15
If (SendToWin15)
{
	If (program15){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program15%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program15%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit15!=""){
	Sleepy:=RMSEdit15
}
else{
	Sleepy:=20
}
If (rv15){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin15)
{
	If (program15){
		ControlSend, , {%keakea% up}, %program15%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program15%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel16:
keakea:=kear16
If (SendToWin16)
{
	If (program16){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program16%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program16%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit16!=""){
	Sleepy:=RMSEdit16
}
else{
	Sleepy:=20
}
If (rv16){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin16)
{
	If (program16){
		ControlSend, , {%keakea% up}, %program16%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program16%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel17:
keakea:=kear17
If (SendToWin17)
{
	If (program17){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program17%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program17%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit17!=""){
	Sleepy:=RMSEdit17
}
else{
	Sleepy:=20
}
If (rv17){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin17)
{
	If (program17){
		ControlSend, , {%keakea% up}, %program17%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program17%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel18:
keakea:=kear18
If (SendToWin18)
{
	If (program18){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program18%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program18%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit18!=""){
	Sleepy:=RMSEdit18
}
else{
	Sleepy:=20
}
If (rv18){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin18)
{
	If (program18){
		ControlSend, , {%keakea% up}, %program18%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program18%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel19:
keakea:=kear19
If (SendToWin19)
{
	If (program19){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program19%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program19%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit19!=""){
	Sleepy:=RMSEdit19
}
else{
	Sleepy:=20
}
If (rv19){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin19)
{
	If (program19){
		ControlSend, , {%keakea% up}, %program19%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program19%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel20:
keakea:=kear20
If (SendToWin20)
{
	If (program20){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program20%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program20%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit20!=""){
	Sleepy:=RMSEdit20
}
else{
	Sleepy:=20
}
If (rv20){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin20)
{
	If (program20){
		ControlSend, , {%keakea% up}, %program20%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program20%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel21:
keakea:=kear21
If (SendToWin21)
{
	If (program21){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program21%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program21%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit21!=""){
	Sleepy:=RMSEdit21
}
else{
	Sleepy:=20
}
If (rv21){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin21)
{
	If (program21){
		ControlSend, , {%keakea% up}, %program21%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program21%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel22:
keakea:=kear22
If (SendToWin22)
{
	If (program22){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program22%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program22%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit22!=""){
	Sleepy:=RMSEdit22
}
else{
	Sleepy:=20
}
If (rv22){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin22)
{
	If (program22){
		ControlSend, , {%keakea% up}, %program22%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program22%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel23:
keakea:=kear23
If (SendToWin23)
{
	If (program23){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program23%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program23%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit23!=""){
	Sleepy:=RMSEdit23
}
else{
	Sleepy:=20
}
If (rv23){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin23)
{
	If (program23){
		ControlSend, , {%keakea% up}, %program23%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program23%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel24:
keakea:=kear24
If (SendToWin24)
{
	If (program24){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program24%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program24%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit24!=""){
	Sleepy:=RMSEdit24
}
else{
	Sleepy:=20
}
If (rv24){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin24)
{
	If (program24){
		ControlSend, , {%keakea% up}, %program24%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program24%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel25:
keakea:=kear25
If (SendToWin25)
{
	If (program25){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program25%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program25%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit25!=""){
	Sleepy:=RMSEdit25
}
else{
	Sleepy:=20
}
If (rv25){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin25)
{
	If (program25){
		ControlSend, , {%keakea% up}, %program25%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program25%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel26:
keakea:=kear26
If (SendToWin26)
{
	If (program26){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program26%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program26%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit26!=""){
	Sleepy:=RMSEdit26
}
else{
	Sleepy:=20
}
If (rv26){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin26)
{
	If (program26){
		ControlSend, , {%keakea% up}, %program26%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program26%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel27:
keakea:=kear27
If (SendToWin27)
{
	If (program27){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program27%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program27%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit27!=""){
	Sleepy:=RMSEdit27
}
else{
	Sleepy:=20
}
If (rv27){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin27)
{
	If (program27){
		ControlSend, , {%keakea% up}, %program27%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program27%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel28:
keakea:=kear28
If (SendToWin28)
{
	If (program28){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program28%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program28%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit28!=""){
	Sleepy:=RMSEdit28
}
else{
	Sleepy:=20
}
If (rv28){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin28)
{
	If (program28){
		ControlSend, , {%keakea% up}, %program28%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program28%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel29:
keakea:=kear29
If (SendToWin29)
{
	If (program29){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program29%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program29%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit29!=""){
	Sleepy:=RMSEdit29
}
else{
	Sleepy:=20
}
If (rv29){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin29)
{
	If (program29){
		ControlSend, , {%keakea% up}, %program29%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program29%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel30:
keakea:=kear30
If (SendToWin30)
{
	If (program30){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program30%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program30%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit30!=""){
	Sleepy:=RMSEdit30
}
else{
	Sleepy:=20
}
If (rv30){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin30)
{
	If (program30){
		ControlSend, , {%keakea% up}, %program30%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program30%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel31:
keakea:=kear31
If (SendToWin31)
{
	If (program31){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program31%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program31%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit31!=""){
	Sleepy:=RMSEdit31
}
else{
	Sleepy:=20
}
If (rv31){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin31)
{
	If (program31){
		ControlSend, , {%keakea% up}, %program31%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program31%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel32:
keakea:=kear32
If (SendToWin32)
{
	If (program32){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program32%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program32%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit32!=""){
	Sleepy:=RMSEdit32
}
else{
	Sleepy:=20
}
If (rv32){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin32)
{
	If (program32){
		ControlSend, , {%keakea% up}, %program32%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program32%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel33:
keakea:=kear33
If (SendToWin33)
{
	If (program33){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program33%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program33%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit33!=""){
	Sleepy:=RMSEdit33
}
else{
	Sleepy:=20
}
If (rv33){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin33)
{
	If (program33){
		ControlSend, , {%keakea% up}, %program33%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program33%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel34:
keakea:=kear34
If (SendToWin34)
{
	If (program34){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program34%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program34%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit34!=""){
	Sleepy:=RMSEdit34
}
else{
	Sleepy:=20
}
If (rv34){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin34)
{
	If (program34){
		ControlSend, , {%keakea% up}, %program34%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program34%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel35:
keakea:=kear35
If (SendToWin35)
{
	If (program35){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program35%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program35%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit35!=""){
	Sleepy:=RMSEdit35
}
else{
	Sleepy:=20
}
If (rv35){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin35)
{
	If (program35){
		ControlSend, , {%keakea% up}, %program35%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program35%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel36:
keakea:=kear36
If (SendToWin36)
{
	If (program36){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program36%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program36%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit36!=""){
	Sleepy:=RMSEdit36
}
else{
	Sleepy:=20
}
If (rv36){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin36)
{
	If (program36){
		ControlSend, , {%keakea% up}, %program36%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program36%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel37:
keakea:=kear37
If (SendToWin37)
{
	If (program37){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program37%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program37%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit37!=""){
	Sleepy:=RMSEdit37
}
else{
	Sleepy:=20
}
If (rv37){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin37)
{
	If (program37){
		ControlSend, , {%keakea% up}, %program37%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program37%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel38:
keakea:=kear38
If (SendToWin38)
{
	If (program38){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program38%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program38%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit38!=""){
	Sleepy:=RMSEdit38
}
else{
	Sleepy:=20
}
If (rv38){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin38)
{
	If (program38){
		ControlSend, , {%keakea% up}, %program38%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program38%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel39:
keakea:=kear39
If (SendToWin39)
{
	If (program39){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program39%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program39%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit39!=""){
	Sleepy:=RMSEdit39
}
else{
	Sleepy:=20
}
If (rv39){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin39)
{
	If (program39){
		ControlSend, , {%keakea% up}, %program39%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program39%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel40:
keakea:=kear40
If (SendToWin40)
{
	If (program40){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program40%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program40%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit40!=""){
	Sleepy:=RMSEdit40
}
else{
	Sleepy:=20
}
If (rv40){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin40)
{
	If (program40){
		ControlSend, , {%keakea% up}, %program40%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program40%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel41:
keakea:=kear41
If (SendToWin41)
{
	If (program41){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program41%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program41%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit41!=""){
	Sleepy:=RMSEdit41
}
else{
	Sleepy:=20
}
If (rv41){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin41)
{
	If (program41){
		ControlSend, , {%keakea% up}, %program41%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program41%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel42:
keakea:=kear42
If (SendToWin42)
{
	If (program42){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program42%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program42%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit42!=""){
	Sleepy:=RMSEdit42
}
else{
	Sleepy:=20
}
If (rv42){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin42)
{
	If (program42){
		ControlSend, , {%keakea% up}, %program42%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program42%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel43:
keakea:=kear43
If (SendToWin43)
{
	If (program43){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program43%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program43%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit43!=""){
	Sleepy:=RMSEdit43
}
else{
	Sleepy:=20
}
If (rv43){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin43)
{
	If (program43){
		ControlSend, , {%keakea% up}, %program43%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program43%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel44:
keakea:=kear44
If (SendToWin44)
{
	If (program44){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program44%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program44%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit44!=""){
	Sleepy:=RMSEdit44
}
else{
	Sleepy:=20
}
If (rv44){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin44)
{
	If (program44){
		ControlSend, , {%keakea% up}, %program44%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program44%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel45:
keakea:=kear45
If (SendToWin45)
{
	If (program45){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program45%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program45%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit45!=""){
	Sleepy:=RMSEdit45
}
else{
	Sleepy:=20
}
If (rv45){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin45)
{
	If (program45){
		ControlSend, , {%keakea% up}, %program45%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program45%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel46:
keakea:=kear46
If (SendToWin46)
{
	If (program46){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program46%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program46%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit46!=""){
	Sleepy:=RMSEdit46
}
else{
	Sleepy:=20
}
If (rv46){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin46)
{
	If (program46){
		ControlSend, , {%keakea% up}, %program46%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program46%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel47:
keakea:=kear47
If (SendToWin47)
{
	If (program47){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program47%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program47%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit47!=""){
	Sleepy:=RMSEdit47
}
else{
	Sleepy:=20
}
If (rv47){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin47)
{
	If (program47){
		ControlSend, , {%keakea% up}, %program47%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program47%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel48:
keakea:=kear48
If (SendToWin48)
{
	If (program48){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program48%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program48%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit48!=""){
	Sleepy:=RMSEdit48
}
else{
	Sleepy:=20
}
If (rv48){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin48)
{
	If (program48){
		ControlSend, , {%keakea% up}, %program48%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program48%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel49:
keakea:=kear49
If (SendToWin49)
{
	If (program49){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program49%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program49%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit49!=""){
	Sleepy:=RMSEdit49
}
else{
	Sleepy:=20
}
If (rv49){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin49)
{
	If (program49){
		ControlSend, , {%keakea% up}, %program49%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program49%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return

MLabel50:
keakea:=kear50
If (SendToWin50)
{
	If (program50){
		If (mvar!=""){
			ControlSend, , {%mvar% down}, %program50%
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
		}
		ControlSend, , {%keakea% down}, %program50%
	}
}
else
{
	If (mvar!=""){
		Send {%mvar% down}
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
	}
	Send {%keakea%  down}
}
If (RMSEdit50!=""){
	Sleepy:=RMSEdit50
}
else{
	Sleepy:=20
}
If (rv50){
	Sleeperer:=(A_Minute/A_Hour/A_Sec)
	If (Sleeperer>10){
		Sleeperer:=Sleeperer/10 
	}
	Sleepy:=Sleepy+Sleeperer
}
Sleep, %Sleepy% 
If (SendToWin50)
{
	If (program50){
		ControlSend, , {%keakea% up}, %program50%
		If (mvar!=""){
			SleepM:=A_Hour/A_Sec
			If (SleepM>4.9){
				SleepM:=SleepM/5
			}
			Sleep, %SleepM%
			ControlSend, , {%mvar% up}, %program50%
		}
		
	}
}
else
{
	Send {%keakea%  up}
	If (mvar!=""){
		SleepM:=A_Hour/A_Sec
		If (SleepM>4.9){
			SleepM:=SleepM/5
		}
		Sleep, %SleepM%
		Send {%mvar% up}
	}
}
Return


	
