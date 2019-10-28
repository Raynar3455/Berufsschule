//
//	Inhalt:
//		Einordnung:		JK-LS1-AB1-A5
//		Projekt: 		Aufgabe_ls_05	- 	Kreisrechner
//
//	Autor:
//		Name:			Markus Breuer
//		Organisaion:	BK-GuT
//
//	Datum:
//		Erstellt:			26.09.2019
//		Letzte �nderung:	
//

import java.util.Scanner;

public class Aufgabe_ls1_05 {
	
	public static void main(String[] args) {
		double r, d, u, f;
		Scanner input = new Scanner( System.in);

		System.out.println( "Kreis-Rechner");										// �berschrift
		System.out.println( "-------------");
		System.out.println( "");
		
		System.out.print("Radius: ");												// Radius einlesen
		r = input.nextDouble();
		
		d = 2 * r;																	// Durchmesser, Umfang und Fl�che berechnen
		u = 2 * Math.PI * r;
		f = Math.PI * r * r;
		
		System.out.println("Durchmesser " + d );									// Durchmesser, Umfang und Fl�che ausgeben
		System.out.println("Umfang " + u );
		System.out.println("Fl�che " + f );
		return;
	}
	
}

