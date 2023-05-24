#include-once

#include <AutoItConstants.au3>
#include <WinAPIGdi.au3>
#include <WinAPISysWin.au3>

Global Const $MONITOR_INFO_ARRAY_SIZE = 11
Global Const $MONITOR_INFO_HANDLE = 0
Global Const $MONITOR_INFO_DEVICE_NAME = 1
Global Const $MONITOR_INFO_IS_PRIMARY = 2
Global Const $MONITOR_INFO_SIZE_X = 3
Global Const $MONITOR_INFO_SIZE_Y = 4
Global Const $MONITOR_INFO_SIZE_WIDTH = 5
Global Const $MONITOR_INFO_SIZE_HEIGHT = 6
Global Const $MONITOR_INFO_WORKAREA_X = 7
Global Const $MONITOR_INFO_WORKAREA_Y = 8
Global Const $MONITOR_INFO_WORKAREA_WIDTH = 9
Global Const $MONITOR_INFO_WORKAREA_HEIGHT = 10

Global Const $WINDOW_INFO_ARRAY_SIZE = 7
Global Const $WINDOW_INFO_HANDLE = 0
Global Const $WINDOW_INFO_SIZE_X = 1
Global Const $WINDOW_INFO_SIZE_Y = 2
Global Const $WINDOW_INFO_SIZE_WIDTH = 3
Global Const $WINDOW_INFO_SIZE_HEIGHT = 4
Global Const $WINDOW_INFO_CLIENT_WIDTH = 5
Global Const $WINDOW_INFO_CLIENT_HEIGHT = 6

Global Const $PROCESS_DPI_UNAWARE = 0
Global Const $PROCESS_SYSTEM_DPI_AWARE = 1
Global Const $PROCESS_PER_MONITOR_DPI_AWARE = 2


;~ Func _Maximize()
;~ 	_MoveToRel(0, 0, 1, 1)
;~ EndFunc

;~ Func _AlmostMaximize()
;~ 	_MoveToRel(0.05, 0.05, 0.9, 0.9)
;~ EndFunc

Func _ActionLeftHalf()
	_MoveToRel(0, 0, 1/2, 1)
EndFunc

Func _ActionRightHalf()
	_MoveToRel(1/2, 0, 1/2, 1)
EndFunc

Func _ActionCenterHalf()
	_MoveToRel(1/4, 0, 1/2, 1)
EndFunc

Func _ActionTopHalf()
	_MoveToRel(0, 0, 1, 1/2)
EndFunc

Func _ActionBottomHalf()
	_MoveToRel(0, 1/2, 1, 1/2)
EndFunc

Func _ActionTopLeft()
	_MoveToRel(0, 0, 1/2, 1/2)
EndFunc

Func _ActionTopRight()
	_MoveToRel(1/2, 0, 1/2, 1/2)
EndFunc

Func _ActionBottomLeft()
	_MoveToRel(0, 1/2, 1/2, 1/2)
EndFunc

Func _ActionBottomRight()
	_MoveToRel(1/2, 1/2, 1/2, 1/2)
EndFunc

Func _ActionFirstThird()
	_MoveToRel(0, 0, 1/3, 1)
EndFunc

Func _ActionCenterThird()
	_MoveToRel(1/3, 0, 1/3, 1)
EndFunc

Func _ActionLastThird()
	_MoveToRel(2/3, 0, 1/3, 1)
EndFunc

Func _ActionFirstTwoThirds()
	_MoveToRel(0, 0, 2/3, 1)
EndFunc

Func _ActionLastTwoThirds()
	_MoveToRel(1/3, 0, 2/3, 1)
EndFunc

Func _ActionFirstFourth()
	_MoveToRel(0, 0, 1/4, 1)
EndFunc

Func _ActionSecondFourth()
	_MoveToRel(1/4, 0, 1/4, 1)
EndFunc

Func _ActionThirdFourth()
	_MoveToRel(2/4, 0, 1/4, 1)
EndFunc

Func _ActionLastFourth()
	_MoveToRel(3/4, 0, 1/4, 1)
EndFunc

Func _ActionFirstThreeFourths()
	_MoveToRel(0, 0, 3/4, 1)
EndFunc

Func _ActionLastThreeFourths()
	_MoveToRel(1/4, 0, 3/4, 1)
EndFunc

Func _MoveToRel($fX, $fY, $fW, $fH)
	Local $aWindow = _GetActiveWindow()
	Local $aMonitor = _GetNearestMonitorFromWindow($aWindow)

	_MoveWindow($aWindow, $aMonitor, $fX, $fY, $fW, $fH)
EndFunc

Func _GetActiveWindow()
	Local $hWindow = WinGetHandle("[active]")

	Return _GetWindowInfo($hWindow)
EndFunc

Func _GetWindowInfo($hWindow)
	Local $aWindowSize = WinGetPos($hWindow)
	Local $aClientSize = WinGetClientSize($hWindow)

	Local $aResult[$WINDOW_INFO_ARRAY_SIZE]
	$aResult[$WINDOW_INFO_HANDLE] = $hWindow
	$aResult[$WINDOW_INFO_SIZE_X] = $aWindowSize[0]
	$aResult[$WINDOW_INFO_SIZE_Y] = $aWindowSize[1]
	$aResult[$WINDOW_INFO_SIZE_WIDTH] = $aWindowSize[2]
	$aResult[$WINDOW_INFO_SIZE_HEIGHT] = $aWindowSize[3]
	$aResult[$WINDOW_INFO_CLIENT_WIDTH] = $aClientSize[0]
	$aResult[$WINDOW_INFO_CLIENT_HEIGHT] = $aClientSize[1]

	Return $aResult
EndFunc

Func _GetNearestMonitorFromWindow($aWindow)
	Local $tagRect = _WinAPI_GetWindowRect($aWindow[$WINDOW_INFO_HANDLE])
	Local $hMonitor = _WinAPI_MonitorFromRect($tagRect, $MONITOR_DEFAULTTONEAREST)

	Return _GetMonitorInfo($hMonitor)
EndFunc

Func _GetMonitorInfo($hMonitor)
	Local $aData = _WinAPI_GetMonitorInfo($hMonitor)

	Local $aResult[$MONITOR_INFO_ARRAY_SIZE]
	$aResult[$MONITOR_INFO_HANDLE] = $hMonitor
	$aResult[$MONITOR_INFO_DEVICE_NAME] = $aData[3]
	$aResult[$MONITOR_INFO_IS_PRIMARY] = $aData[2]
	$aResult[$MONITOR_INFO_SIZE_X] =  DllStructGetData($aData[0], 1)
	$aResult[$MONITOR_INFO_SIZE_Y] =  DllStructGetData($aData[0], 2)
	$aResult[$MONITOR_INFO_SIZE_WIDTH] =  DllStructGetData($aData[0], 3) - $aResult[$MONITOR_INFO_SIZE_X]
	$aResult[$MONITOR_INFO_SIZE_HEIGHT] = DllStructGetData($aData[0], 4) - $aResult[$MONITOR_INFO_SIZE_Y]
	$aResult[$MONITOR_INFO_WORKAREA_X] =  DllStructGetData($aData[1], 1)
	$aResult[$MONITOR_INFO_WORKAREA_Y] = DllStructGetData($aData[1], 2)
	$aResult[$MONITOR_INFO_WORKAREA_WIDTH] = DllStructGetData($aData[1], 3) - $aResult[$MONITOR_INFO_WORKAREA_X]
	$aResult[$MONITOR_INFO_WORKAREA_HEIGHT] =  DllStructGetData($aData[1], 4) - $aResult[$MONITOR_INFO_WORKAREA_Y]

	Return $aResult
EndFunc

Func _MoveWindow($aWindow, $aMonitor, $fX, $fY, $fW, $fH)
	Local $iWindowState = WinGetState($aWindow[$WINDOW_INFO_HANDLE], "")
	If BitAND($iWindowState, $WIN_STATE_MAXIMIZED) Then
		WinSetState($aWindow[$WINDOW_INFO_HANDLE], "",  @SW_RESTORE)
	EndIf

	Local $iX = $aMonitor[$MONITOR_INFO_WORKAREA_X] + $aMonitor[$MONITOR_INFO_WORKAREA_WIDTH] * $fX
	Local $iY = $aMonitor[$MONITOR_INFO_WORKAREA_Y] + $aMonitor[$MONITOR_INFO_WORKAREA_HEIGHT] * $fY
	Local $iW = $aMonitor[$MONITOR_INFO_WORKAREA_WIDTH] * $fW
	Local $iH = $aMonitor[$MONITOR_INFO_WORKAREA_HEIGHT] * $fH

	WinMove($aWindow[$WINDOW_INFO_HANDLE], "", $iX, $iY, $iW, $iH)
EndFunc
