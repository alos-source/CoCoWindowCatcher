WinTitleMatchMode := 2  ; Teilweise Übereinstimmung mit Fenstertiteln

idList := WinGet("List")  ; Alle Fenster-Handles holen

screenWidth := SysGet(78)  ; Bildschirmbreite
screenHeight := SysGet(79) ; Bildschirmhöhe

for hwnd in idList {
    try {
        x := 0, y := 0, w := 0, h := 0
        WinGetPos(&x, &y, &w, &h, hwnd)

        ; Prüfen, ob Fenster sichtbar ist
        if !WinExist(hwnd)
            continue

        ; Prüfen, ob Fenster außerhalb des sichtbaren Bereichs liegt
        if (x < 0 || y < 0 || x + w > screenWidth || y + h > screenHeight) {
            newX := Max(0, Min(x, screenWidth - w))
            newY := Max(0, Min(y, screenHeight - h))
            WinMove(hwnd, , newX, newY, w, h)
        }
    }
}

MsgBox("Alle sichtbaren Fenster wurden auf den Bildschirm verschoben.")
