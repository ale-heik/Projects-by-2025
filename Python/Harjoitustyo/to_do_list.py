#Tässä harjoitustyössä teen To Do Listin, jonne voi tallentaa haluamiaan tehtäviä
#Järjestelmä kertoo pyydettäessä mitä tehtäviä on tekemättä
#Tehtävät jäävät muistiin, vaikka lista sammutettaisiin.

#Järjestelmä pyytää ensimmäisenä käyttäjää antamaan numeron minkä perusteella voidaan toteuttaa jatkotehtäviä:
#1: Haluaako käyttäjä lisätä uuden tehtävän
#2: Haluaako käyttäjä tarkastaa mitä tehtäviä on tekemättä
#3: Haluaako käyttäjä merkitä tehtävän valmiiksi
#Tehdävien valmiiksimerkitseminen poistaa tehtävän automaattisesti tiedostosta
#4: Sammutetaan lista

#tiedosto jonne kirjoitetaan
filename = "To_Do_List.txt"


#Tästä alkaa chatGPT:lla avustettu osuus
#Funktio, joka kirjoittaa tiedostoon
def kirjoita_tiedostoon(tehtava):
    with open(filename, "a") as file:
        file.write(tehtava + "\n")



#Funktio, joka lukee tiedostoa        
def lue_tiedostosta():
    try:
        with open(filename, "r") as file:
            tehtavat = file.readlines()
            return tehtavat
#kirjoittaa erorin, jos tiedostoa ei löydy
    except FileNotFoundError:
            return []



#Funktio, joka merkitsee tehtävän tehdyksi    
def merkitse_tehdyksi(tehtava_numero):
     tehtavat = lue_tiedostosta()
#tarkistaa löytyykö käyttäjän antama numero ja positaa sen jos löytyy
     if 1 <= tehtava_numero <= len(tehtavat):
          del tehtavat[tehtava_numero - 1]
#avataan tiedosto uudelleen kirjoitusmuodossa ja kirjoitetaan jäljelle jääneet tehtävät
          with open(filename, "w") as file:
            file.writelines(tehtavat)
            return True
     else:
          return False
#tähän päättyy chatGPT:lla avustettu osuus



#Pää funktio, joka sisältää ohjeet käyttäjälle ja pääsilmukan.
def main():
#Tulostaa ohteet lsitan käyttöön
    print("Tervetuloa käyttämään To Do Listaa")
    print("Valitse haluamasi toiminto numeroilla 1-4")
    print("1: Kirjoita uusi tehtävä listaan (Tyhjä rivi lopettaa kirjoittamisen)")
    print("2: Tarkasta listassa olevat tehtävät")
    print("3: Merkitse tehtävä valmiiksi (Tämä poistaa tehtävän listalta)")
    print("4: Sammuta lista")



#Pääsilmukka
    while True:
        valinta = input("Anna haluamasi toiminto (1-4): ")

#Testaa onko annettu arvo luku
        try:
            valinta_numero = int(valinta)
        except ValueError:
            print("Anna vastaus lukuna")
            continue


#jos luku on 1 toteutetaan tämä tehtävä
        if valinta_numero == 1:
            print("Lisää haluamasi tehtävä (tyhjä lopettaa): ")
            tehtavat = []
#Tehtäviä otetaan vastaan kunnes käyttäjä antaa tyhjän rivin
            while True:
                tehtava = input("Lisää tehtävä: ")
                if not tehtava:
                    break
                tehtavat.append(tehtava)
#kirjoitetaan tiedostoon tannetut tehtävät
            for tehtava in tehtavat:
                kirjoita_tiedostoon(tehtava)
            print("Tehtävät lisätty.")



#jos luku on 2 toteutetaan tämä tehtävä
#luetaan tiedostossa olevat tehtävät
        elif valinta_numero == 2:
            tehtavat = lue_tiedostosta()
#Jos tehtäviä ei ole, siitä ilmoitetaan käyttäjälle
            if not tehtavat:
                print("Ei tehtäviä listassa. Voit lisätä tehtäviä valinnalla (1).")
#Jos tehtäviä löytyy nin ne tulostetaan käyttäjälle
            else:
                print("Tehtavat listassa:")
                for i, tehtava in enumerate(tehtavat, start=1):
                    print(i, tehtava.strip())



#jos luku on 3 toteutetaan tämä tehtävä
#käyttäjä voi merkitä tehtäviään valmiiksi
        elif valinta_numero == 3:
            tehtavat = lue_tiedostosta()
#jos ei ole tehtäviä niin siitä kerrotaan
            if not tehtavat:
                print("Listalla ei ole tehtäviä.")
#Tulostetaan tehtävät listasta ja pyydetään tehtävä, jonka hän haluaa poistaa
            else:
                print("Tehävät listassa:")
                for i, tehtava in enumerate(tehtavat, start=1):
                    print(i, tehtava.strip())
                tehtava_numero = int(input("Anna tehtävänumero, jonka haluat merkitä valmiiksi: "))
#Ilmoitetaan poisto onnistuneeksi tai kerrotaan mikäli se ei onnistu
                if merkitse_tehdyksi(tehtava_numero):
                    print("tehtävä merkitty valmiiksi.")
                else:
                    print("Tätä numeroa ei ole listassa.")



#jos luku on 4 toteutetaan tämä tehtävä
#Sammutetaan lista numerolla 4
        elif valinta_numero == 4:
            print("Sammutetaan lista.")
            break


#Jos luku ei ollut mikään sallituista, pyydetään uutta lukua
        else:
            print("Anna numero väliltä (1-4).")

if __name__ == "__main__":
    main()