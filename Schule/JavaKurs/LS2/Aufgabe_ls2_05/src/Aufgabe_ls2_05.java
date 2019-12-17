//
//	Inhalt:
//		Einordnung:		FISI-JK-LS2-AB1-A5
//		Projekt: 		Aufgabe_ls2_05 - Messwertdatei einlesen und auswerten
//
//	Autor:
//		Name:				Markus Breuer
//		Organisaion:		BK-GuT
//
//	Datum:
//		Erstellt:			10.12.2016
//		Letzte Änderung:	09.11.2019
//


import java.io.*;
import java.text.DecimalFormat;
import java.util.Scanner;


public class Aufgabe_ls2_05 {

	public static void main(String[] args) throws IOException {
		int		anzahl= 0;
		double	wert, summe = 0, max = 0, min = 0, mittelwert = 0;
		String	dateiname;
		Scanner	input = new Scanner( System.in);
		
		System.out.print("Dateiname: ");					// Dateiname einlesen
		dateiname = input.next();
		input.close();
		
		final long timeStart = System.currentTimeMillis();				// Start Zeitmessung
		
		Scanner datei = new Scanner( new FileReader( dateiname) );		// Messwertdatei öffnen

		System.out.println( "\n\nEingelesene Messwerte:");
		anzahl = 0;
	    while( datei.hasNextDouble() != false) {			// Noch Werte vorhanden?
			wert = datei.nextDouble();						// Wert einlesen
//			System.out.println("\t " + wert);				// Eingelesenen Messwert anzeigen
			if( anzahl == 0){								// Erster Wert
				summe = wert;
				max = wert;
				min = wert;
			}
			else {
				summe = summe + wert;						// Aufsummieren
				if( wert > max){							// Neues Maximum
					max = wert;
				}
				if( wert < min){							// Neues Minimum
					min = wert;
				}
			}
			anzahl++;										// Anzahl hochzählen
		}
		mittelwert = summe / anzahl;
		
	    datei.close();  									// Dateiscanner schliessen    

	    final long timeEnd = System.currentTimeMillis();	// Ende Zeitmessung
	    
		System.out.println("\nStatistische Auswertung:");	// Ergebnisse ausgeben
		System.out.println("\t Anzahl:     " + anzahl);
		System.out.println("\t Summe:      " + summe);
		System.out.println("\t Mittelwert: " + mittelwert);
		System.out.println("\t Maximum:    " + max);
		System.out.println("\t Minimum:    " + min);	
		System.out.println("\nBenötigte Zeit: " + (timeEnd - timeStart) + " Millisek."); 
	}

}
