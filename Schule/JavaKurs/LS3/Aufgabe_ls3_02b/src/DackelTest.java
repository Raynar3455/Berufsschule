//
//	Inhalt:
//		Einordnung:		JK-LS3-Aufgabe3
//		Projekt: 		Aufgabe_ls3_02b	- 	Klasse DackelTest
//
//	Autor:
//		Name:			Markus Breuer
//		Organisaion:	BK-GuT
//
//	Datum:
//		Erstellt:			05.12.2019
//		Letzte Änderung:	
//

public class DackelTest {

	public static void main(String[] args) {
		Dackel d1 = new Dackel( "Waldi", 5);
		Dackel d2 = new Dackel( "Fiffi", 7);
		
		d1.bellen();
		d1.bellen(10);
		d1.wieAltBistDu();
		
		d1.beissen(d2);
	}

}
