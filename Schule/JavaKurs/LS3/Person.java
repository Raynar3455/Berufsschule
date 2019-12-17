//
//	Inhalt:
//		Einordnung:		JK-LS3-Beispiel_01
//		Projekt: 		Beispiel_ls3_01	- 	Personen Beispiel 
//
//	Autor:
//		Name:			Markus Breuer
//		Organisaion:	BK-GuT
//
//	Datum:
//		Erstellt:			28.11.2019
//		Letzte Änderung:	
//

public class Person {
	private String	name;								// Attribute
	private int		alter;
	
	public String getName() {							// Setter und Getter
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAlter() {
		return alter;
	}
	public void setAlter(int alter) {
		this.alter = alter;
	}
	
	public void laufen() {								// Spezifische Methoden
		System.out.println( this.name + ": Ich laufe");
	}
}
