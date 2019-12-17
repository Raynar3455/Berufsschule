//
//	Inhalt:
//		Einordnung:			FISI-JK-LS2-AB1-A6
//		Projekt: 			Aufgabe_ls2_06 - Quadratdreieckszahlen
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


public class Aufgabe_ls2_06 {

	public static void main(String[] args) 
	{
		long	ober;
		long	u0 = 0, u1 = 1, u2, u2q;
		long	anz = 0;
		Scanner	input = new Scanner( System.in);

		System.out.print("Obergrenze: ");					// Obergrenze einlesen				
		ober = input.nextLong();

		System.out.println("");								// Überschrift ausgeben
		System.out.println("Quadratdreieckszahlen");

		System.out.println(u1); 
		anz++;
		do
		{
			u2 = 6 * u1 - u0;
			u2q = u2 * u2;
			System.out.println(u2q);
			anz++;
			u0 = u1;
			u1 = u2;
		}
		while( u2 * u2 <= ober);

		System.out.println("");	
		System.out.println("Gefundene Quadratdreieckszahlen: " + anz);

		return;
	}

}
