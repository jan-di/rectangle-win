#include-once

#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>

#include "../vendor/HotKeyInput.au3"

#include "./FileConfig.au3"
#include "./Hotkeys.au3"

Opt("GUIOnEventMode", 1)

Global $g_hSettingsGUI

Global $g_idSettingsGUI_hkiLeftHalf
Global $g_idSettingsGUI_hkiRightHalf
Global $g_idSettingsGUI_hkiCenterHalf
Global $g_idSettingsGUI_hkiTopHalf
Global $g_idSettingsGUI_hkiBottomHalf

Global $g_idSettingsGUI_hkiTopLeft
Global $g_idSettingsGUI_hkiTopRight
Global $g_idSettingsGUI_hkiBottomLeft
Global $g_idSettingsGUI_hkiBottomRight

Global $g_idSettingsGUI_hkiFirstThird
Global $g_idSettingsGUI_hkiCenterThird
Global $g_idSettingsGUI_hkiLastThird
Global $g_idSettingsGUI_hkiFirstTwoThirds
Global $g_idSettingsGUI_hkiLastTwoThirds

Global $g_idSettingsGUI_hkiFirstFourth
Global $g_idSettingsGUI_hkiSecondFourth
Global $g_idSettingsGUI_hkiThirdFourth
Global $g_idSettingsGUI_hkiLastFourth
Global $g_idSettingsGUI_hkiFirstThreeFourths
Global $g_idSettingsGUI_hkiLastThreeFourths

Global $g_idSettingsGUI_btnSaveSettings

Func _SettingsGUI_Create()
	$g_hSettingsGUI = GUICreate('RectangleWin', 600, 800)
	;~ GUISetFont(8.5, 400, 0, 'Tahoma')
	GUISetOnEvent($GUI_EVENT_CLOSE, "_SettingsGUI_OnClose")

	GUICtrlCreateLabel('Left Half', 10, 23, 80, 14, $SS_RIGHT)
	GUICtrlCreatePic(@ScriptDir & "\resources\LeftHalf.bmp", 100, 20, 30, 20)
	$g_idSettingsGUI_hkiLeftHalf = _GUICtrlHKI_Create(0, 140, 20, 130, 20)

	GUICtrlCreateLabel('Right Half', 10, 53, 80, 14, $SS_RIGHT)
	GUICtrlCreatePic(@ScriptDir & "\resources\RightHalf.bmp", 100, 50, 30, 20)
	$g_idSettingsGUI_hkiRightHalf = _GUICtrlHKI_Create(0, 140, 50, 130, 20)

	GUICtrlCreateLabel('Center Half', 10, 83, 80, 14, $SS_RIGHT)
	GUICtrlCreatePic(@ScriptDir & "\resources\CenterHalf.bmp", 100, 80, 30, 20)
	$g_idSettingsGUI_hkiCenterHalf = _GUICtrlHKI_Create(0, 140, 80, 130, 20)

	GUICtrlCreateLabel('Top Half', 10, 113, 80, 14, $SS_RIGHT)
	GUICtrlCreatePic(@ScriptDir & "\resources\TopHalf.bmp", 100, 110, 30, 20)
	$g_idSettingsGUI_hkiTopHalf = _GUICtrlHKI_Create(0, 140, 110, 130, 20)

	GUICtrlCreateLabel('Bottom Half', 10, 143, 80, 14, $SS_RIGHT)
	GUICtrlCreatePic(@ScriptDir & "\resources\BottomHalf.bmp", 100, 140, 30, 20)
	$g_idSettingsGUI_hkiBottomHalf = _GUICtrlHKI_Create(0, 140, 140, 130, 20)

	GUICtrlCreateLabel('Top Left', 10, 203, 80, 14, $SS_RIGHT)
	GUICtrlCreatePic(@ScriptDir & "\resources\TopLeft.bmp", 100, 200, 30, 20)
	$g_idSettingsGUI_hkiTopLeft = _GUICtrlHKI_Create(0, 140, 200, 130, 20) 

	GUICtrlCreateLabel('Top Right', 10, 233, 80, 14, $SS_RIGHT)
	GUICtrlCreatePic(@ScriptDir & "\resources\TopRight.bmp", 100, 230, 30, 20)
	$g_idSettingsGUI_hkiTopRight = _GUICtrlHKI_Create(0, 140, 230, 130, 20)

	GUICtrlCreateLabel('Bottom Left', 10, 263, 80, 14, $SS_RIGHT)
	GUICtrlCreatePic(@ScriptDir & "\resources\BottomLeft.bmp", 100, 260, 30, 20)
	$g_idSettingsGUI_hkiBottomLeft = _GUICtrlHKI_Create(0, 140, 260, 130, 20)

	GUICtrlCreateLabel('Bottom Right', 10, 293, 80, 14, $SS_RIGHT)
	GUICtrlCreatePic(@ScriptDir & "\resources\BottomRight.bmp", 100, 290, 30, 20)
	$g_idSettingsGUI_hkiBottomRight = _GUICtrlHKI_Create(0, 140, 290, 130, 20)

	GUICtrlCreateLabel('First Third', 10, 353, 80, 14, $SS_RIGHT)
	GUICtrlCreatePic(@ScriptDir & "\resources\FirstThird.bmp", 100, 350, 30, 20)
	$g_idSettingsGUI_hkiFirstThird = _GUICtrlHKI_Create(0, 140, 350, 130, 20)

	GUICtrlCreateLabel('Center Third', 10, 383, 80, 14, $SS_RIGHT)
	GUICtrlCreatePic(@ScriptDir & "\resources\CenterThird.bmp", 100, 380, 30, 20)
	$g_idSettingsGUI_hkiCenterThird = _GUICtrlHKI_Create(0, 140, 380, 130, 20)

	GUICtrlCreateLabel('Last Third', 10, 413, 80, 14, $SS_RIGHT)
	GUICtrlCreatePic(@ScriptDir & "\resources\LastThird.bmp", 100, 410, 30, 20)
	$g_idSettingsGUI_hkiLastThird = _GUICtrlHKI_Create(0, 140, 410, 130, 20)

	GUICtrlCreateLabel('First Two Thirds', 10, 443, 80, 14, $SS_RIGHT)
	GUICtrlCreatePic(@ScriptDir & "\resources\FirstTwoThirds.bmp", 100, 440, 30, 20)
	$g_idSettingsGUI_hkiFirstTwoThirds = _GUICtrlHKI_Create(0, 140, 440, 130, 20)

	GUICtrlCreateLabel('Last Two Thirds', 10, 473, 80, 14, $SS_RIGHT)
	GUICtrlCreatePic(@ScriptDir & "\resources\LastTwoThirds.bmp", 100, 470, 30, 20)
	$g_idSettingsGUI_hkiLastTwoThirds = _GUICtrlHKI_Create(0, 140, 470, 130, 20)

	GUICtrlCreateLabel('First Fourth', 10, 533, 80, 14, $SS_RIGHT)
	GUICtrlCreatePic(@ScriptDir & "\resources\FirstFourth.bmp", 100, 530, 30, 20)
	$g_idSettingsGUI_hkiFirstFourth = _GUICtrlHKI_Create(0, 140, 530, 130, 20)

	GUICtrlCreateLabel('Second Fourth', 10, 563, 80, 14, $SS_RIGHT)
	GUICtrlCreatePic(@ScriptDir & "\resources\SecondFourth.bmp", 100, 560, 30, 20)
	$g_idSettingsGUI_hkiSecondFourth = _GUICtrlHKI_Create(0, 140, 560, 130, 20)

	GUICtrlCreateLabel('Third Fourth', 10, 593, 80, 14, $SS_RIGHT)
	GUICtrlCreatePic(@ScriptDir & "\resources\ThirdFourth.bmp", 100, 590, 30, 20)
	$g_idSettingsGUI_hkiThirdFourth = _GUICtrlHKI_Create(0, 140, 590, 130, 20)

	GUICtrlCreateLabel('Last Fourth', 10, 623, 80, 14, $SS_RIGHT)
	GUICtrlCreatePic(@ScriptDir & "\resources\LastFourth.bmp", 100, 620, 30, 20)
	$g_idSettingsGUI_hkiLastFourth = _GUICtrlHKI_Create(0, 140, 620, 130, 20)

	GUICtrlCreateLabel('First Three Fourths', 10, 653, 80, 14, $SS_RIGHT)
	GUICtrlCreatePic(@ScriptDir & "\resources\FirstThreeFourths.bmp", 100, 650, 30, 20)
	$g_idSettingsGUI_hkiFirstThreeFourths = _GUICtrlHKI_Create(0, 140, 650, 130, 20)

	GUICtrlCreateLabel('Last Three Fourths', 10, 683, 80, 14, $SS_RIGHT)
	GUICtrlCreatePic(@ScriptDir & "\resources\LastThreeFourths.bmp", 100, 680, 30, 20)
	$g_idSettingsGUI_hkiLastThreeFourths = _GUICtrlHKI_Create(0, 140, 680, 130, 20)

	$g_idSettingsGUI_btnSaveSettings = GUICtrlCreateButton("Save", 200, 740, 200, 30)
	GUICtrlSetOnEvent(-1, "_SettingsGUI_btnSave")

	_KeyLock(0x062E)
EndFunc

Func _SettingsGUI_Show()
	_GUICtrlHKI_SetHotKey($g_idSettingsGUI_hkiLeftHalf, Dec($g_iHotKeyLeftHalf))
	_GUICtrlHKI_SetHotKey($g_idSettingsGUI_hkiRightHalf, Dec($g_iHotKeyRightHalf))
	_GUICtrlHKI_SetHotKey($g_idSettingsGUI_hkiCenterHalf, Dec($g_iHotKeyCenterHalf))
	_GUICtrlHKI_SetHotKey($g_idSettingsGUI_hkiTopHalf, Dec($g_iHotKeyTopHalf))
	_GUICtrlHKI_SetHotKey($g_idSettingsGUI_hkiBottomHalf, Dec($g_iHotKeyBottomHalf))

	_GUICtrlHKI_SetHotKey($g_idSettingsGUI_hkiTopLeft, Dec($g_iHotKeyTopLeft))
	_GUICtrlHKI_SetHotKey($g_idSettingsGUI_hkiTopRight, Dec($g_iHotKeyTopRight))
	_GUICtrlHKI_SetHotKey($g_idSettingsGUI_hkiBottomLeft, Dec($g_iHotKeyBottomLeft))
	_GUICtrlHKI_SetHotKey($g_idSettingsGUI_hkiBottomRight, Dec($g_iHotKeyBottomRight))

	_GUICtrlHKI_SetHotKey($g_idSettingsGUI_hkiFirstThird, Dec($g_iHotKeyFirstThird))
	_GUICtrlHKI_SetHotKey($g_idSettingsGUI_hkiCenterThird, Dec($g_iHotKeyCenterThird))
	_GUICtrlHKI_SetHotKey($g_idSettingsGUI_hkiLastThird, Dec($g_iHotKeyLastThird))
	_GUICtrlHKI_SetHotKey($g_idSettingsGUI_hkiFirstTwoThirds, Dec($g_iHotKeyFirstTwoThirds))
	_GUICtrlHKI_SetHotKey($g_idSettingsGUI_hkiLastTwoThirds, Dec($g_iHotKeyLastTwoThirds))
	
	_GUICtrlHKI_SetHotKey($g_idSettingsGUI_hkiFirstFourth, Dec($g_iHotKeyFirstFourth))
	_GUICtrlHKI_SetHotKey($g_idSettingsGUI_hkiSecondFourth, Dec($g_iHotKeySecondFourth))
	_GUICtrlHKI_SetHotKey($g_idSettingsGUI_hkiThirdFourth, Dec($g_iHotKeyThirdFourth))
	_GUICtrlHKI_SetHotKey($g_idSettingsGUI_hkiLastFourth, Dec($g_iHotKeyLastFourth))
	_GUICtrlHKI_SetHotKey($g_idSettingsGUI_hkiFirstThreeFourths, Dec($g_iHotKeyFirstThreeFourths))
	_GUICtrlHKI_SetHotKey($g_idSettingsGUI_hkiLastThreeFourths, Dec($g_iHotKeyLastThreeFourths))

	GUISetState(@SW_SHOW, $g_hSettingsGUI)
	WinActivate($g_hSettingsGUI)
EndFunc

Func _SettingsGUI_btnSave()
	$g_iHotKeyLeftHalf = Hex(_GUICtrlHKI_GetHotKey($g_idSettingsGUI_hkiLeftHalf))
	$g_iHotKeyRightHalf = Hex(_GUICtrlHKI_GetHotKey($g_idSettingsGUI_hkiRightHalf))
	$g_iHotKeyCenterHalf = Hex(_GUICtrlHKI_GetHotKey($g_idSettingsGUI_hkiCenterHalf))
	$g_iHotKeyTopHalf = Hex(_GUICtrlHKI_GetHotKey($g_idSettingsGUI_hkiTopHalf))
	$g_iHotKeyBottomHalf = Hex(_GUICtrlHKI_GetHotKey($g_idSettingsGUI_hkiBottomHalf))

	$g_iHotKeyTopLeft = Hex(_GUICtrlHKI_GetHotKey($g_idSettingsGUI_hkiTopLeft))
	$g_iHotKeyTopRight = Hex(_GUICtrlHKI_GetHotKey($g_idSettingsGUI_hkiTopRight))
	$g_iHotKeyBottomLeft = Hex(_GUICtrlHKI_GetHotKey($g_idSettingsGUI_hkiBottomLeft))
	$g_iHotKeyBottomRight = Hex(_GUICtrlHKI_GetHotKey($g_idSettingsGUI_hkiBottomRight))

	$g_iHotKeyFirstThird = Hex(_GUICtrlHKI_GetHotKey($g_idSettingsGUI_hkiFirstThird))
	$g_iHotKeyCenterThird = Hex(_GUICtrlHKI_GetHotKey($g_idSettingsGUI_hkiCenterThird))
	$g_iHotKeyLastThird = Hex(_GUICtrlHKI_GetHotKey($g_idSettingsGUI_hkiLastThird))
	$g_iHotKeyFirstTwoThirds = Hex(_GUICtrlHKI_GetHotKey($g_idSettingsGUI_hkiFirstTwoThirds))
	$g_iHotKeyLastTwoThirds = Hex(_GUICtrlHKI_GetHotKey($g_idSettingsGUI_hkiLastTwoThirds))

	$g_iHotKeyFirstFourth = Hex(_GUICtrlHKI_GetHotKey($g_idSettingsGUI_hkiFirstFourth))
	$g_iHotKeySecondFourth = Hex(_GUICtrlHKI_GetHotKey($g_idSettingsGUI_hkiSecondFourth))
	$g_iHotKeyThirdFourth = Hex(_GUICtrlHKI_GetHotKey($g_idSettingsGUI_hkiThirdFourth))
	$g_iHotKeyLastFourth = Hex(_GUICtrlHKI_GetHotKey($g_idSettingsGUI_hkiLastFourth))
	$g_iHotKeyFirstThreeFourths = Hex(_GUICtrlHKI_GetHotKey($g_idSettingsGUI_hkiFirstThreeFourths))
	$g_iHotKeyLastThreeFourths = Hex(_GUICtrlHKI_GetHotKey($g_idSettingsGUI_hkiLastThreeFourths))

	_StoreConfig()
	_SetHotkeys()
	_SettingsGUI_Hide()
EndFunc

Func _SettingsGUI_Hide()
	GUISetState(@SW_HIDE, $g_hSettingsGUI)
EndFunc

Func _SettingsGUI_OnClose()
	_SettingsGUI_Hide()
EndFunc