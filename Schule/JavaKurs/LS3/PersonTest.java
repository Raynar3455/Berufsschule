//
//	Inhalt:
//		Einordnung:		JK-LS3-Beispiel_01
//		Projekt: 		Beispiel_ls3_01	- 	Personen Beispiel - Testklasse
//
//	Autor:
//		Name:			Markus Breuer
//		Organisaion:	BK-GuT
//
//	Datum:
//		Erstellt:			28.11.2019
//		Letzte Änderung:	
//


public class PersonTest {

	public static void main(String[] args) {
		Person		p1 = new Person();				// Personen anlegen		
		p1.setName("Hugo");
		Person		p2 = new Person();					
		
		p1.laufen();								// Personen in Aktion
		p2.laufen();
		return;
	}

}
