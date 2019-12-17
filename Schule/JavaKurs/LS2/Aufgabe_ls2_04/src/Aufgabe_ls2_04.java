import java.util.Scanner;

//
//Inhalt:
//	Einordnung:			FISI-JK-LS2-AB1-A4
//	Projekt: 			Aufgabe_ls2_04	- 	Messwertauswertung I
//
//Autor:
//	Name:				Markus Breuer
//	Organisaion:		BK-GuT
//
//Datum:
//	Erstellt:			04.10.2016
//	Letzte Änderung:	09.11.2019
//


import java.util.Scanner;


public class Aufgabe_ls2_04 {

	public static void main(String[] args) {
		int		anzahl;
		Scanner input = new Scanner( System.in);
		int		i;
		double	wert, summe = 0, max = 0, min = 0, mittelwert;
		
		System.out.print("Anzahl Messwerte: ");			// Anzahl einlesen
		anzahl = input.nextInt();
		
		for( i = 1; i <= anzahl; i++) {
			System.out.print(i + ". Messwert: ");		// Messwert einlesen
			wert = input.nextDouble();
			
			if( i == 1){								// Erster Wert
				summe = wert;
				max = wert;
				min = wert;
			}
			else {
				summe = summe + wert;					// Aufsummieren
				if( wert > max){						// Neues Maximum
					max = wert;
				}
				if( wert < min){						// Neues Minimum
					min = wert;
				}
			}
		}
		mittelwert = summe / anzahl;
		
		System.out.println("");							// Ergebnisse ausgeben
		System.out.println("Anzahl:     " + anzahl);
		System.out.println("Summe:      " + summe);
		System.out.println("Mittelwert: " + mittelwert);
		System.out.println("Maximum:    " + max);
		System.out.println("Minimum:    " + min);		
	}

}
