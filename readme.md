# CoCo Window Catcher

## 🪟 Description

**Come out, come out – The Catcher in the Pane.**

In the vast, sprawling metropolis of your desktop, programs sometimes wander too far, straying into the digital abyss beyond the screen's edge. Like a lost traveler in a foreign land, your application becomes irretrievable — hidden from view.

**The Catcher in the Pane** is your quiet guardian against this digital alienation. Much like the hero of the famous novel, this script stands watch, ready to save your wayward windows before they fall into the unreachable void. It acts as a kind of digital shepherd, effortlessly retrieving any lost or minimized program and gently guiding it back to the visible "field" of your desktop.

No more frantic clicks or keyboard shortcuts. With The Catcher in the Pane, your programs are always safe from harm and just a click away from being returned to the heart of your workspace. It's a simple, elegant solution for anyone who has ever felt their work had been lost in translation.

---

## 🎯 The Challenge

As someone who works across multiple monitor setups, I often encountered a frustrating issue:

- On my desktop PC with a 27" monitor, I also access it remotely via RDP from my laptop.
- My business laptop connects to different monitor configurations in the office and home office.

Sometimes, application windows would open outside the visible area. I could see the program running in the Windows 11 Task Manager or Taskbar, but the window itself was nowhere to be found.

I tried using keyboard shortcuts to move the window, switching virtual desktops, and even restarting the app — but nothing worked unless I reverted to the original monitor setup. That’s not always possible, especially when working remotely.

This project solves that problem.

---

## 🧰 Features

- Detects windows that are partially or fully off-screen.
- Moves windows back into the visible area of the primary monitor.
- Includes both Python (`pywin32`) and AutoHotkey implementations.

---

## 📂 Files

- `move_windows.py`  
  Python script using the `pywin32` library to reposition windows.

- `move_windows.ahk`  
  AutoHotkey script that performs the same task using native AHK functions.

---

## 🚀 Getting Started

### Python Version

**Requirements:**
- Python 3.x
- `pywin32` package

**Install:**
```bash
pip install pywin32
```

## Disclaimer
This project (code and documentation) has been realized using one or more LLMs.