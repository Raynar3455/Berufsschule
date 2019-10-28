//
//	Inhalt:
//		Einordnung:		JK-LS1-AB1-A4
//		Projekt: 		Aufgabe_ls_04	- 	Gesamtwiderstand einer Parallelschaltung berechnen
//
//	Autor:
//		Name:			Markus Breuer
//		Organisaion:	BK-GuT
//
//	Datum:
//		Erstellt:			26.09.2019
//		Letzte Änderung:	04.10.2019
//

import java.util.Scanner;

public class Aufgabe_ls1_04 {
	
	public static void main(String[] args) {
		double r1, r2 , r3;
		Scanner input = new Scanner( System.in);

		System.out.println( "Gesamtwiderstand einer Parallelschaltung berechnen");	// Überschrift
		System.out.println( "--------------------------------------------------");
		System.out.println( "");
		
		System.out.print( "Widerstand 1 (Ohm): ");									// Widerstandswerte einlesen
		r1 = input.nextDouble();
		System.out.print( "Widerstand 2 (Ohm): ");
		r2 = input.nextDouble();
		
		r3 = (r1 * r2)/(r1 + r2);													// Gesamtwiderstand berechnen

		System.out.println( "\nDer Gesamtwiderstand beträgt " + r3 + " Ohm\n");		// Gesamtwiderstand ausgeben
		return;
	}
	
}

