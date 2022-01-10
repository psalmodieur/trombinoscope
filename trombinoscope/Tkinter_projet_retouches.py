from tkinter import *
from PIL import Image, ImageTk
from tkinter import Tk, Canvas

window = Tk()

window.title("trombinoscope")
window.geometry("900x600")
window.config(background="#20d654")
window.iconbitmap("57122.ico")


# créer la frame principale
frame = Frame(window, bg="#20d654")#, bd=1)

# créer un titre
label_title = Label(frame, text="Tr0mBiNoScOpE", font=("Arial", 50), bg="#20d654", fg="white")
label_title.grid(row=0, column=0,sticky=N)

# Possiblité de convertir l'image :
def covertir():
    imageCharge = Image.open(".\\trombi\\Bertrand_Borel.jpg")
    imageConvertie = ImageTk.PhotoImage(imageCharge)
    laphoto = Label(window, image=imageConvertie)
    laphoto.pack(anchor=W)

Button(window, text = "Button", image = "laphoto", compound=LEFT)

# création d'image
width = 300
height = 300
image = PhotoImage(file=".\\trombi\\Bertrand_Borel.jpg").zoom("15").subsample(32)
canvas = Canvas(frame, width=width, height=height, bg="#20d654")
canvas.create_image(width/2, height/2, image=image)
canvas.grid(row=0, column=0, sticky=S)



# créer une sous-boîte
right_frame = Frame(frame, bg="#20d654")

# on place la sous-boîte à droite de la frame principale
right_frame.grid(row=0, column=1, sticky=W)

# créer un sous-titre
label_title1 = Label(right_frame, text="Qui voulez vous voir?", font=("Arial", 18), bg="#20d654", fg="white")
label_title1.grid(row=0, column=1, sticky=E)


# afficher la frame
frame.pack(expand=YES)


liste = Listbox(right_frame, bg="#20d62e", height=15, fg="white", font= "Arial", relief=FLAT)
liste.insert(1, "LUSTOSA Lucas")
liste.insert(2, "ADAM Thierry")
liste.insert(3, "BOREL Bertrand")
liste.insert(4, "BOUCLY Kevin")
liste.insert(5, "CORLAY Morgan")
liste.insert(6, "COROLLER Loïc")
liste.insert(7, "FAUDEIL Nathan")
liste.insert(8, "GAVANCHA Cassiano")
liste.insert(9, "GUICHOUX Quentin")
liste.insert(10, "HELLER Romain")
liste.insert(11, "IKHENECHE Nacira")
liste.insert(12, "LANNURIEN Victor")
liste.insert(13, "LAXALDE Ewen")
liste.insert(14, "LE DEM Maïna")
liste.insert(15, "LEPELLEY Perrine")
liste.insert(16, "LE ROCH Gwenn")
liste.insert(17, "NAFOUSSI Hichem")
liste.insert(18, "PENFEUNTEUN Sylvia")
liste.insert(19, "PLESSIS Loïc")
liste.insert(20, "POIRRIER Hervé")
liste.insert(21, "SANCHEZ Pauline")
liste.insert(22, "SEPEHRI Shima")
liste.insert(23, "TANGUY Erwan")
liste.insert(24, "TANGUY Franky")
liste.insert(25, "stephane")
liste.grid(row=2, column=1, sticky=NE)


# affichage de la fenêtre
window.mainloop()