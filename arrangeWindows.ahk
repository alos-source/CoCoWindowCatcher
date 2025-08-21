SetTitleMatchMode, 2  ; Teilweise Übereinstimmung mit Fenstertiteln

WinGet, idList, List  ; Alle Fenster-Handles holen

SysGet, screenWidth, 78  ; Bildschirmbreite
SysGet, screenHeight, 79 ; Bildschirmhöhe

Loop, %idList%
{
    hwnd := idList%A_Index%
    WinGetPos, x, y, w, h, ahk_id %hwnd%

    ; Prüfen, ob Fenster sichtbar ist
    if !WinExist("ahk_id " hwnd)
        continue

    ; Prüfen, ob Fenster außerhalb des sichtbaren Bereichs liegt
    if (x < 0 || y < 0 || x + w > screenWidth || y + h > screenHeight)
    {
        newX := Max(0, Min(x, screenWidth - w))
        newY := Max(0, Min(y, screenHeight - h))
        WinMove, ahk_id %hwnd%, , newX, newY, w, h
    }
}

MsgBox, Alle sichtbaren Fenster wurden auf den Bildschirm verschoben.
