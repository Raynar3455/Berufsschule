//
//	Inhalt:
//		Einordnung:		JK-LS1-AB1-A3
//		Projekt: 		Aufgabe_ls_03	- 	Gesamtwiderstand einer Reihenschaltung berechnen
//
//	Autor:
//		Name:			Markus Breuer
//		Organisaion:	BK-GuT
//
//	Datum:
//		Erstellt:			30.08.2016
//		Letzte Änderung:	26.09.2019
//

import java.util.Scanner;

public class Aufgabe_ls1_03 {
	
	public static void main(String[] args) {
		double r1, r2 , r3;
		Scanner input = new Scanner( System.in);

		System.out.print( "Widerstand 1 (Ohm): ");									// Widerstandswerte einlesen
		r1 = Double.parseDouble( input.nextLine());
		System.out.print( "Widerstand 2 (Ohm): ");
		r2 = Double.parseDouble( input.nextLine());
		
		r3 = r1 + r2;																// Gesamtwiderstand berechnen

		System.out.println( "\nDer Gesamtwiderstand beträgt " + r3 + " Ohm\n");		// Gesamtwiderstand ausgeben
		return;
	}
	
}
