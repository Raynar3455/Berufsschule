//
//	Inhalt:
//		Einordnung:		JK-LS1-AB1-A6
//		Projekt: 		Aufgabe_ls_06	- 	Kugelrechner
//
//	Autor:
//		Name:			Markus Breuer
//		Organisaion:	BK-GuT
//
//	Datum:
//		Erstellt:			
//		Letzte Änderung:	26.09.2019
//

import java.util.Scanner;

public class Aufgabe_ls1_06 {
	
	public static void main(String[] args) {
		double r, f, v;
		Scanner input = new Scanner( System.in);

		System.out.println( "Kugel-Rechner");										// Überschrift
		System.out.println( "-------------");
		System.out.println( "");
		
		System.out.print("Radius: ");												// Radius einlesen
		r = input.nextDouble();
		
		f = 4.0 * Math.PI * Math.pow(r,2);											// Oberfläche und Volumen berechnen
		v = 4.0 / 3.0 * Math.PI * Math.pow( r, 3);

		System.out.println("Oberfläche: " + f );									// Oberfläche und Volumen3 ausgeben
		System.out.println("Volumen:    " + v );
		
		return;
	}
	
}

