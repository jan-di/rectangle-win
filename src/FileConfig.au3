#include-once

#include "..\vendor\HotKey_21b.au3"
#include "..\vendor\vkConstants.au3"

Global $g_sConfigFile = @ScriptDir & "\config.ini"

Global $g_iHotKeyLeftHalf
Global $g_iHotKeyRightHalf
Global $g_iHotKeyCenterHalf
Global $g_iHotKeyTopHalf
Global $g_iHotKeyBottomHalf

Global $g_iHotKeyTopLeft
Global $g_iHotKeyTopRight
Global $g_iHotKeyBottomLeft
Global $g_iHotKeyBottomRight

Global $g_iHotKeyFirstThird
Global $g_iHotKeyCenterThird
Global $g_iHotKeyLastThird
Global $g_iHotKeyFirstTwoThirds
Global $g_iHotKeyLastTwoThirds

Global $g_iHotKeyFirstFourth
Global $g_iHotKeySecondFourth
Global $g_iHotKeyThirdFourth
Global $g_iHotKeyLastFourth
Global $g_iHotKeyFirstThreeFourths
Global $g_iHotKeyLastThreeFourths

Func _LoadConfig()
	$g_iHotKeyLeftHalf = IniRead($g_sConfigFile, "Hotkeys", "LeftHalf", Hex(BitOR($CK_CONTROL, $CK_WIN, $VK_LEFT)))
	$g_iHotKeyRightHalf = IniRead($g_sConfigFile, "Hotkeys", "RightHalf", Hex(BitOR($CK_CONTROL, $CK_WIN, $VK_RIGHT)))
	$g_iHotKeyCenterHalf = IniRead($g_sConfigFile, "Hotkeys", "CenterHalf", Hex(0))
	$g_iHotKeyTopHalf = IniRead($g_sConfigFile, "Hotkeys", "TopHalf", Hex(BitOR($CK_CONTROL, $CK_WIN, $VK_UP)))
	$g_iHotKeyBottomHalf = IniRead($g_sConfigFile, "Hotkeys", "BottomHalf", Hex(BitOR($CK_CONTROL, $CK_WIN, $VK_DOWN)))

	$g_iHotKeyTopLeft = IniRead($g_sConfigFile, "Hotkeys", "TopLeft", Hex(BitOR($CK_CONTROL, $CK_WIN, $VK_U)))
	$g_iHotKeyTopRight = IniRead($g_sConfigFile, "Hotkeys", "TopRight", Hex(BitOR($CK_CONTROL, $CK_WIN, $VK_I)))
	$g_iHotKeyBottomLeft = IniRead($g_sConfigFile, "Hotkeys", "BottomLeft", Hex(BitOR($CK_CONTROL, $CK_WIN, $VK_J)))
	$g_iHotKeyBottomRight = IniRead($g_sConfigFile, "Hotkeys", "BottomRight", Hex(BitOR($CK_CONTROL, $CK_WIN, $VK_K)))

	$g_iHotKeyFirstThird = IniRead($g_sConfigFile, "Hotkeys", "FirstThird", Hex(BitOR($CK_CONTROL, $CK_WIN, $VK_D)))
	$g_iHotKeyCenterThird = IniRead($g_sConfigFile, "Hotkeys", "CenterThird", Hex(BitOR($CK_CONTROL, $CK_WIN, $VK_F)))
	$g_iHotKeyLastThird = IniRead($g_sConfigFile, "Hotkeys", "LastThird", Hex(BitOR($CK_CONTROL, $CK_WIN, $VK_G)))
	$g_iHotKeyFirstTwoThirds = IniRead($g_sConfigFile, "Hotkeys", "FirstTwoThirds", Hex(BitOR($CK_CONTROL, $CK_WIN, $VK_E)))
	$g_iHotKeyLastTwoThirds = IniRead($g_sConfigFile, "Hotkeys", "LastTwoThirds", Hex(BitOR($CK_CONTROL, $CK_WIN, $VK_T)))

	$g_iHotKeyFirstFourth = IniRead($g_sConfigFile, "Hotkeys", "FirstFourth", Hex(0))
	$g_iHotKeySecondFourth = IniRead($g_sConfigFile, "Hotkeys", "SecondFourth", Hex(0))
	$g_iHotKeyThirdFourth = IniRead($g_sConfigFile, "Hotkeys", "ThirdFourth", Hex(0))
	$g_iHotKeyLastFourth = IniRead($g_sConfigFile, "Hotkeys", "LastFourth", Hex(0))
	$g_iHotKeyFirstThreeFourths = IniRead($g_sConfigFile, "Hotkeys", "FirstThreeFourths", Hex(0))
	$g_iHotKeyLastThreeFourths = IniRead($g_sConfigFile, "Hotkeys", "LastThreeFourths", Hex(0))
EndFunc

Func _StoreConfig()
	IniWrite($g_sConfigFile, "Hotkeys", "LeftHalf", $g_iHotKeyLeftHalf)
	IniWrite($g_sConfigFile, "Hotkeys", "RightHalf", $g_iHotKeyRightHalf)
	IniWrite($g_sConfigFile, "Hotkeys", "CenterHalf", $g_iHotKeyCenterHalf)
	IniWrite($g_sConfigFile, "Hotkeys", "TopHalf", $g_iHotKeyTopHalf)
	IniWrite($g_sConfigFile, "Hotkeys", "BottomHalf", $g_iHotKeyBottomHalf)

	IniWrite($g_sConfigFile, "Hotkeys", "TopLeft", $g_iHotKeyTopLeft)
	IniWrite($g_sConfigFile, "Hotkeys", "TopRight", $g_iHotKeyTopRight)
	IniWrite($g_sConfigFile, "Hotkeys", "BottomLeft", $g_iHotKeyBottomLeft)
	IniWrite($g_sConfigFile, "Hotkeys", "BottomRight", $g_iHotKeyBottomRight)

	IniWrite($g_sConfigFile, "Hotkeys", "FirstThird", $g_iHotKeyFirstThird)
	IniWrite($g_sConfigFile, "Hotkeys", "CenterThird", $g_iHotKeyCenterThird)
	IniWrite($g_sConfigFile, "Hotkeys", "LastThird", $g_iHotKeyLastThird)
	IniWrite($g_sConfigFile, "Hotkeys", "FirstTwoThirds", $g_iHotKeyFirstTwoThirds)
	IniWrite($g_sConfigFile, "Hotkeys", "LastTwoThirds", $g_iHotKeyLastTwoThirds)

	IniWrite($g_sConfigFile, "Hotkeys", "FirstFourth", $g_iHotKeyFirstFourth)
	IniWrite($g_sConfigFile, "Hotkeys", "SecondFourth", $g_iHotKeySecondFourth)
	IniWrite($g_sConfigFile, "Hotkeys", "ThirdFourth", $g_iHotKeyThirdFourth)
	IniWrite($g_sConfigFile, "Hotkeys", "LastFourth", $g_iHotKeyLastFourth)
	IniWrite($g_sConfigFile, "Hotkeys", "FirstThreeFourths", $g_iHotKeyFirstThreeFourths)
	IniWrite($g_sConfigFile, "Hotkeys", "LastThreeFourths", $g_iHotKeyLastThreeFourths)
EndFunc