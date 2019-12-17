//
//	Inhalt:
//		Einordnung:			FISI-JK-LS2-AB2-A12
//		Projekt: 			Aufgabe_ls2_12
//
//	Autor:
//		Name:				Markus Breuer
//		Organisaion:		BK-GuT
//
//	Datum:
//		Erstellt:			22.11.2017
//		Letzte Änderung:	09.11.2019
//


import java.util.*;


public class Aufgabe_ls2_12 {

	public static void main(String[] args) {
		Scanner input = new Scanner( System.in);
		double	einkommen;
		int		anzahl;
		double 	kindergeld;
		
		//
		//	Einkommen und Anzahl der Kinder einlesen
		//
		System.out.print("Ihr Jahreseinkommen in D$: ");
		einkommen = input.nextDouble();
		System.out.print("Anzahl der Kinder: ");
		anzahl = input.nextInt();
		
		//
		//	Kindergeld berechnen
		//
		if( einkommen < 45000){
			if( anzahl == 1){
				kindergeld = 70;
			} 
			else if( anzahl == 2){
				kindergeld = 70 + 130;
			}
			else if( anzahl == 3){
				kindergeld = 70 + 130 + 220;
			}
			else {
				kindergeld = 70 + 130 + 220 + (anzahl-3) * 240;
			}
		}
		else {
			if( anzahl == 1){
				kindergeld = 70;
			} 
			else if( anzahl == 2){
				kindergeld = 70 + 70;
			}
			else if( anzahl == 3){
				kindergeld = 70 + 70 + 140;
			}
			else {
				kindergeld = 70 + 130 + 140 + (anzahl-3) * 140;
			}
		}
		
		//
		//	Ergebnis ausgeben
		//
		System.out.println("Ergebnis: " + kindergeld + " D$ Kindergeld");
	}

}
