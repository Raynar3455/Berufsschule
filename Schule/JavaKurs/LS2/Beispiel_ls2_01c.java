//
//	Inhalt:
//		Einordnung:		JK-LS2-Beispiel_01
//		Projekt: 		Beispiel_ls2_01c	-	Eingabe aus ASCII-Datei
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


public class Beispiel_ls2_01c {

	public static void main(String[] args) throws IOException {
	    long x;    	  

	    System.out.println("Beispiel_10 - Einfaches Einlesen einer Text-Datei\n");  
	    Scanner input = new Scanner( new FileReader("test2.txt") );

	    while(input.hasNextLong()!= false){
	    	x = input.nextLong();
	    	System.out.println( x);
	    }

	    input.close();      
	}

}
