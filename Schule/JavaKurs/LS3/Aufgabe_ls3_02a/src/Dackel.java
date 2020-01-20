//
//	Inhalt:
//		Einordnung:		JK-LS3-Aufgabe3
//		Projekt: 		Aufgabe_ls3_02a	- 	Klasse Dackel 
//
//	Autor:
//		Name:			Markus Breuer
//		Organisaion:	BK-GuT
//
//	Datum:
//		Erstellt:			05.12.2019
//		Letzte Änderung:	
//


public class Dackel {
	
	private int 		alter;													// Attribute der Klasse Dackel
	private String 		name;
	
	public Dackel(String name, int alter) {										// Konstruktoren und Destruktoren der Klasse Dackel
		this.alter = alter;
		this.name = name;
	}

	public Dackel(String name) {												
		this.name = name;
	}

	public Dackel() {
	}

	protected void finalize(){
		System.out.println("Dackel " + this.name + " ist gestorben");
	}
	
	public String getName() {													// Setter und Getter der Klasse Dackel
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setAlter(int alter) {
		this.alter = alter;
	}													
	
	public void bellen() {														// Spezifische Methoden
		System.out.println( name + ": " + "Wau! Wau! Wau!");
	}
	
	public void bellen( int anzahl) {														
		int	i;
		System.out.print( name + ": ");
		for( i = 1; i <= anzahl; i++) {
			System.out.print( "Wau! ");
		}
		System.out.println("");
	}
	
	public void wieAltBistDu() {
		int i;
		
		System.out.print( name + ": ");
		for( i = 1; i <= alter; i++) {
			System.out.print( "Wau! ");
		}
		System.out.println("");
	}
	
}
