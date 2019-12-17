//
//	Inhalt:
//		Einordnung:			FISI-JK-LS2-AB2-A9
//		Projekt: 			Aufgabe_ls2_09
//
//	Autor:
//		Name:				Markus Breuer
//		Organisaion:		BK-GuT
//
//	Datum:
//		Erstellt:			09.11.2019
//		Letzte Änderung:
//


import java.util.Scanner;


public class Aufgabe_ls2_09 {

	public static void main(String[] args) {
		double		a, b, c;							// Seitenlängen
		boolean		konstruierbar;						// konstrierbar
		Scanner		input = new Scanner( System.in);
		
		System.out.println("Konstruierbarkeit eines Dreiecks pruefen");
		
		System.out.print("Seite a: ");								// Seitenlängen einlesen
		a = input.nextDouble();
		System.out.print("Seite ab: ");	
		b = input.nextDouble();
		System.out.print("Seite c: ");
		c = input.nextDouble();
		
		konstruierbar = true;										// Konstruierbarkeit prüfen
		if( a + b <= c) {												
			konstruierbar = false;	
		}
		if( a + c <= b) {												
			konstruierbar = false;	
		}
		if( b + c <= a) {												
			konstruierbar = false;	
		}

		if()
		System.out.print("Rechnungsbetrag: " + r + " Euro");		// Rechnungswert ausgeben
	}

}
