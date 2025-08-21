import win32gui
import win32con
import win32api

def move_window_onscreen(hwnd):
    if win32gui.IsWindowVisible(hwnd):
        rect = win32gui.GetWindowRect(hwnd)
        screen_width = win32api.GetSystemMetrics(0)
        screen_height = win32api.GetSystemMetrics(1)

        x, y, w, h = rect[0], rect[1], rect[2] - rect[0], rect[3] - rect[1]

        # Prüfen, ob das Fenster außerhalb des sichtbaren Bereichs liegt
        if x < 0 or y < 0 or x + w > screen_width or y + h > screen_height:
            new_x = max(0, min(x, screen_width - w))
            new_y = max(0, min(y, screen_height - h))
            win32gui.MoveWindow(hwnd, new_x, new_y, w, h, True)

def enum_windows_callback(hwnd, _):
    move_window_onscreen(hwnd)

# Alle Fenster durchgehen
win32gui.EnumWindows(enum_windows_callback, None)

print("Alle sichtbaren Fenster wurden auf den Hauptbildschirm verschoben.")
