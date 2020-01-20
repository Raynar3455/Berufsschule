import java.util.Random;

//
//	Inhalt:
//		Einordnung:		JK-LS3-Aufgabe3
//		Projekt: 		Aufgabe_ls3_02b	- 	Klasse Dackel 
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
	private int			lebenspunkte;
	
	public Dackel(String name, int alter) {										// Konstruktoren und Destruktoren der Klasse Dackel
		this.alter = alter;
		this.name = name;
		lebenspunkte = bestimmeStartwert();
	}

	public Dackel(String name) {												
		this.name = name;
		lebenspunkte = bestimmeStartwert();
	}

	public Dackel() {
		lebenspunkte = bestimmeStartwert();
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
			System.out.print( "MIAU! ");
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
	
	public void beissen( Dackel d) {
		System.out.println( name + ": " + "Fass!");		
		d.gebissen( this);
		
	}
	
	public void gebissen( Dackel d) {
		Random 	wuerfel = new Random();
		
		lebenspunkte--;
		schreien();
		if( lebenspunkte <= 0) {													// Sterben
			System.out.println( name + ": " + "Ich bin am Ende");	
			finalize();
			}
		else if( (lebenspunkte <= 3) && (wuerfel.nextInt(2) == 0)) {                // Fliehen oder weiterkämpfen
			System.out.println( name + ": " + "Ich haue ab.");	
			System.out.println( name + ": " + "Flieh, flieh, fliehhhhh.");	
			}
		else {																		// Weiterkämpfen
			System.out.println( name + ": " + "Vedammt! Wer beist mich?");	
			System.out.println( name + ": " + "Jetzt gibts aber Kontra!");	
			beissen( d);
			}
	}
	
	public void schreien( ) {
		System.out.println( name + ": " + "Aua!");
	}
	
	public int bestimmeStartwert() {
		Random 	wuerfel = new Random();
		int		wert;
		
		wert = wuerfel.nextInt( 10);
		
		return wert;
	}
}	// Ende Klasse Dackel
