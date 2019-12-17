
//
//	Inhalt:
//		Einordnung:			FISI-JK-LS2-AB2-A11
//		Projekt: 			Aufgabe_ls2_10
//
//	Autor:
//		Name:				Markus Breuer
//		Organisaion:		BK-GuT
//
//	Datum:
//		Erstellt:			22.11.2017
//		Letzte Änderung:	09.11.2019
//

import java.util.Scanner;

public class Aufgabe_ls2_10 {

	public static void main(String[] args) {
		double		b, km, d;
		Scanner		input = new Scanner( System.in);
		
		System.out.println("Berechnung des Durchschnittsverbrauchs");
		
		System.out.print("verbrauchter Kraftstoff in l: ");
		b = input.nextDouble();
		System.out.print("gefahrene Strecke in km: ");
		km = input.nextDouble();
		
		if( km != 0) {
			d = b / km * 100;
			System.out.println("Durchschnittverbrauch in l/100 km: " + d);	
		}
		else {
			System.out.println("Ungueltige Strecke eingegeben.");			
		}	
	}

}
