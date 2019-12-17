//
//	Inhalt:
//		Einordnung:			FISI-JK-LS2-AB1-A15
//		Projekt: 			Aufgabe_ls2_15
//
//	Autor:
//		Name:				Markus Breuer
//		Organisaion:		BK-GuT
//
//	Datum:
//		Erstellt:			11.11.2019
//		Letzte Änderung:	
//


import java.util.*;


public class Aufgabe_ls_15 {

	public static void main(String[] args) {
		Scanner input = new Scanner( System.in);
		int 	he, ge, ht, gt;					// HeimErgebnis, GastErgebnis, HeimTipp, GastTipp
		int		erg;							// Wettpunktzahl
		
		System.out.println("Ergebniseingabe: ");	// Ergebnis und Tipp einlesen
		System.out.print("Heimmannschaft ");
		he = input.nextInt();
		System.out.print("Gastmannschaft ");
		ge = input.nextInt();
		System.out.println("");
		System.out.println("Tippeingabe: ");
		System.out.print("Heimmannschaft ");
		ht = input.nextInt();
		System.out.print("Gastmannschaft ");
		gt = input.nextInt();
		System.out.println("");
		
		if((he == ht) && (ge == gt)) {					// Tipp richtig -> 3 Wettpunkte
			erg = 3;
		}
		else if((he - ge) == (ht - gt)) {				// Torabstand richtig -> 2 Wettpunkte
			erg = 2;
		}
		else if(((he < ge) && (ht < gt))				// Sieger richtig -> 1 Wettpunkt
				||((he > ge) && (ht > gt))){				
			erg = 1;
		}
		else  {											// Ganz falsch -> 0 Wettpunkte
			erg = 0;
		}
		
		System.out.println("Wettpunkte: " + erg);
	}

}
