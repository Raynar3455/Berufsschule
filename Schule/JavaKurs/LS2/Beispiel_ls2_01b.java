//
//	Inhalt:
//		Einordnung:		JK-LS2-Beispiel_091
//		Projekt: 		Beispiel_ls2_01b	-	Eingabe aus ASCII-Datei
//
//	Autor:
//		Name:			Markus Breuer
//		Organisaion:	BK-GuT
//
//	Datum:
//		Erstellt:			03.10.2016
//		Letzte Änderung:	15.11.2017
//


import java.io.*;
import java.util.*;


public class Beispiel_ls2_01b {

	public static void main(String[] args) throws IOException {
	    String s;    	  

	    System.out.println("Beispiel09 - Einfaches Einlesen einer Text-Datei\n");  
	    Scanner input = new Scanner( new FileReader("test1.txt") );

	    while(input.hasNext() != false){
	    	s = input.nextLine();
	    	System.out.println( s );
	    }

	    input.close();      
	}

}
