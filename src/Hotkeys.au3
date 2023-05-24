#include-once

#include "../vendor/HotKey_21b.au3"

#include "./FileConfig.au3"

Func _SetHotkeys()
	_HotKey_Release()

	_HotKey_Assign(Dec($g_iHotKeyLeftHalf), "_ActionLeftHalf")
	_HotKey_Assign(Dec($g_iHotKeyRightHalf), "_ActionRightHalf")
	_HotKey_Assign(Dec($g_iHotKeyCenterHalf), "_ActionCenterHalf")
	_HotKey_Assign(Dec($g_iHotKeyTopHalf), "_ActionTopHalf")
	_HotKey_Assign(Dec($g_iHotKeyBottomHalf), "_ActionBottomHalf")

	_HotKey_Assign(Dec($g_iHotKeyTopLeft), "_ActionTopLeft")
	_HotKey_Assign(Dec($g_iHotKeyTopRight), "_ActionTopRight")
	_HotKey_Assign(Dec($g_iHotKeyBottomLeft), "_ActionBottomLeft")
	_HotKey_Assign(Dec($g_iHotKeyBottomRight), "_ActionBottomRight")


	_HotKey_Assign(Dec($g_iHotKeyFirstThird), "_ActionFirstThird")
	_HotKey_Assign(Dec($g_iHotKeyCenterThird), "_ActionCenterThird")
	_HotKey_Assign(Dec($g_iHotKeyLastThird), "_ActionLastThird")
	_HotKey_Assign(Dec($g_iHotKeyFirstTwoThirds), "_ActionFirstTwoThirds")
	_HotKey_Assign(Dec($g_iHotKeyLastTwoThirds), "_ActionLastTwoThirds")

	_HotKey_Assign(Dec($g_iHotKeyFirstFourth), "_ActionFirstFourth")
	_HotKey_Assign(Dec($g_iHotKeySecondFourth), "_ActionSecondFourth")
	_HotKey_Assign(Dec($g_iHotKeyThirdFourth), "_ActionThirdFourth")
	_HotKey_Assign(Dec($g_iHotKeyLastFourth), "_ActionLastFourth")
	_HotKey_Assign(Dec($g_iHotKeyFirstThreeFourths), "_ActionFirstThreeFourths")
	_HotKey_Assign(Dec($g_iHotKeyLastThreeFourths), "_ActionLastThreeFourths")
EndFunc