;FirestoneTest.ahk

#Include Functions\subFunctions\BigClose.ahk

FirestoneTest() {
    ; check for status of slot 2
    MsgBox, , Slot 2 Status ,Checking status of slot 2..., 2
    MouseMove, 1202, 944
    Sleep, 1000
    Click
    Sleep, 500
    PixelSearch, X, Y, 562, 245, 754, 311, 0x8C4221, 10, Fast RGB
    If (ErrorLevel = 0){
        MsgBox, , Slot 2 Status, Slot 2 is in progress., 2
        Slot2InProcess := 1
        BigClose()
    }
    else {
        MsgBox, , Slot 2 Status, Slot 2 is not in progress., 2
        Slot2InProcess := 0
    }

    ; check for status of slot 1
    MsgBox, , Slot 1 Status, Checking status of slot 1... , 2
    MouseMove, 554, 939
    Sleep, 1000
    Click
    Sleep, 500
    PixelSearch, X, Y, 562, 245, 754, 311, 0x8C4221, 10, Fast RGB
    If (ErrorLevel = 0){
        MsgBox, , Slot 1 Status, Slot 1 is in progress., 2
        Slot1InProcess := 1
        BigClose()
        Return
    } Else {
        MsgBox, , Slot 1 Status, Slot 1 is not in progress., 2
        Slot1InProcess := 0
    }
}
