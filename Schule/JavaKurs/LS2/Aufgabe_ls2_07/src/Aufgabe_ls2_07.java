//
//	Inhalt:
//		Einordnung:			FISI-JK-LS2-AB1-A7
//		Projekt: 			Aufgabe_ls2_07	- 	Dezimal -> BCD Umsetzer
//
//	Autor:
//		Name:				Markus Breuer
//		Organisaion:		BK-GuT
//
//	Datum:
//		Erstellt:			22.11.2019
//		Letzte Änderung:	
//


import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;


public class Aufgabe_ls2_07 {

	public static void main(String[] args) throws IOException {
	    String	dateiname;
	    String 	zahl;    	  
	    char	ziffer;
	    long	anzahlZahlen = 0;
	    long	anzahlZiffern = 0;
	    
	    System.out.println("Dezimal -> BCD Umsetzer");  
	    System.out.println("-----------------------\n");  
	    
	    Scanner eingabe = new Scanner( System.in );								// Dateiname einlesen
	    System.out.print( "Dateiname (ohne .txt): ");
	    dateiname = eingabe.next();
	    
	    Scanner dateieingabe = new Scanner( new FileReader(dateiname + ".txt") );		// Dezimaldatei öffnen

	    FileWriter dateiausgabe = new FileWriter(dateiname + "BCD.txt");				// BCD-Datei öffnen
	    
	    while(dateieingabe.hasNext() != false){									// Dezimaldatei zeilenweise durchlaufen
	    	anzahlZahlen++;
	    	zahl = dateieingabe.nextLine();
	    	for( int i = 0; i < zahl.length(); i++) {							// Zahl ziffernweise durchlaufen und BCD-Code schreiben
	    		anzahlZiffern++;
	    		if ( i != 0) { dateiausgabe.write(".");}						// Punkt für 4er Blöcke
	    		ziffer = zahl.charAt(i);
	    		switch( ziffer) { 
	    		case '0': { dateiausgabe.write("0000"); break;}
	    		case '1': { dateiausgabe.write("0001"); break;}
	    		case '2': { dateiausgabe.write("0010"); break;}
	    		case '3': { dateiausgabe.write("0011"); break;}
	    		case '4': { dateiausgabe.write("0100"); break;}
	    		case '5': { dateiausgabe.write("0101"); break;}
	    		case '6': { dateiausgabe.write("0110"); break;}
	    		case '7': { dateiausgabe.write("0111"); break;}
	    		case '8': { dateiausgabe.write("1000"); break;}
	    		case '9': { dateiausgabe.write("1001"); break;}
	    		}
	    	}
	    	dateiausgabe.write(System.getProperty("line.separator")); 	    	// Zeilenvorschub
	    }

	    dateieingabe.close();      												// Dezimaldatei schliessen
	    
    	dateiausgabe.flush();													// BCD-Datei schliessen
    	dateiausgabe.close();			

    	System.out.println("");   												// Benutzerinformation	
    	System.out.println("Eingabedatei (Dezimal-Zahlen): " + dateiname + ".txt");   		
    	System.out.println("Ausgabedatei (BCD-Zahlen):     " + dateiname + "BCD.txt");   	
    	System.out.println("Anzahl umgesetzter Zahlen:     " + anzahlZahlen);   	
    	System.out.println("Anzahl umgesetzter Ziffern:    " + anzahlZiffern);   	
	}

}
