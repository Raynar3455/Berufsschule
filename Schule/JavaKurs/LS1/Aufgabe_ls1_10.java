//
//	Inhalt:
//		Einordnung:		JK-LS1-AB1-A10
//		Projekt: 		Aufgabe_ls1_10	- 	Tankinhalt berechnen
//
//	Autor:
//		Name:			Markus Breuer
//		Organisaion:	BK-GuT
//
//	Datum:
//		Erstellt:			15.09.2016
//		Letzte �nderung:	26.09.2019
//

import java.util.Scanner;

public class Aufgabe_ls1_10 {
	
	public static void main(String[] args) {
		double r, l, h, kl, V;
		Scanner input = new Scanner( System.in);

		System.out.println( "Tankinhalt berechnen");								// �berschrift
		System.out.println( "--------------------");
		System.out.println( "");
		
		System.out.print("Radius: ");												// Radius, L�nge und F�llh�he einlesen
		r = input.nextDouble();
		System.out.print("L�nge: ");
		l = input.nextDouble();
		System.out.print("F�llh�he: ");
		h = input.nextDouble();
		System.out.println("");
		
		kl = Math.acos( ( r - h ) / r ) -											// Tankinhalt berechnen
			( r - h) * Math.sqrt( 2 * r * h - Math.pow( h , 2) )
			/ Math.pow( r , 2);
		V = Math.pow( r, 2 ) * l * kl;

		System.out.println("Tankinhalt: " + V );									// Tankinhalt ausgeben
		
		return;
	}
	
}
