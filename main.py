import pyautogui
import time
import random

def bewege_maus_und_klicke(interval=10, schritte=50):
    print("Programm gestartet. Maus wird bewegt und gelegentlich geklickt.")
    try:
        while True:
            # Aktuelle Mausposition abrufen
            x, y = pyautogui.position()

            pyautogui.moveTo(x + schritte, y, duration=0.5)
            pyautogui.moveTo(x, y, duration=0.5)

            if random.random() < 0.9:
                pyautogui.click()
                print("Klick ausgeführt.")

            time.sleep(interval)
    except KeyboardInterrupt:
        print("Programm beendet.")

if __name__ == "__main__":
    bewege_maus_und_klicke()
