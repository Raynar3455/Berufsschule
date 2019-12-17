//
//	Inhalt:
//		Einordnung:			FISI-JK-LS2-AB2-A11
//		Projekt: 			Aufgabe_ls2_11
//
//	Autor:
//		Name:				Markus Breuer
//		Organisaion:		BK-GuT
//
//	Datum:
//		Erstellt:			22.11.2017
//		Letzte Änderung:
//


import java.util.Scanner;


public class Aufgabe_ls2_11 {

	public static void main(String[] args) {
		double		a;									// Auftragswert
		double		p;									// Porto
		double		r;									// Rechnungswert
		Scanner		input = new Scanner( System.in);
		
		System.out.println("Berechnung des Rechnungsbetrages");
		
		System.out.print("Auftragssumme in Euro: ");				// Aufragssumme einlesen
		a = input.nextDouble();
		
		if( a < 100) {												// Porto bestimmen
			p = 5.5;	
		}
		else if( a < 200){
			p = 3;			
		}
		else
			p = 0;
		r = a + p;													// Rechnungswert bestimmen
		
		System.out.print("Rechnungsbetrag: " + r + " Euro");		// Rechnungswert ausgeben
	}

}
