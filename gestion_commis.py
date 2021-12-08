import bcrypt

def AjouterNouveauCommis():
    print('Ajouter un commis')
    return False

def ModifierMotDePasse():
    print('Modifier le mot de passe')
    return False

def SupprimerCommis():
    print('Supprimer un commis')
    return False

def OptionMenu():
    choix = 0
    
    try:
        choix = int(input((""" 
        Menu principal - Gestion des commis

            1- Ajouter un nouveau commis
            2- Modifier le mot de passe d'un commis
            3- Supprimer un commis
            4- Quitter

        Veuillez choisir une option : 
        """)))
    except ValueError:
        print("Le choix est invalide")
    return choix


def MenuPrincipale():
    while True:
        choixMenu = OptionMenu()

        if choixMenu == 1:
            AjouterNouveauCommis()

        if choixMenu == 2:
            ModifierMotDePasse()

        if choixMenu == 3:
            SupprimerCommis()

        if choixMenu == 4:
            print("Goodbye!!")
            break


if __name__ == "__main__":
    MenuPrincipale()
