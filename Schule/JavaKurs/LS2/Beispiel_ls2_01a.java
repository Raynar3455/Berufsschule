//
//	Inhalt:
//		Einordnung:		JK-LS2-Beispiel_01
//		Projekt: 		Beispiel_LS2_01a	-	Ausgabe in ASCII-Datei
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


public class Beispiel_ls2_01a {
		
	public static void main(String[] args) throws IOException {

		System.out.println("Beispiel_08");
		System.out.println("Zwei Zeilen in Datei test1.txt schreiben");
		
		FileWriter writer = new FileWriter("test1.txt");					// Datei öffnen
//		FileWriter writer = new FileWriter("test1.txt", true);				// Datei öffnen; anhängen
		
		writer.write("Hallo Wie gehts?");									// Datei beschreiben
		writer.write(System.getProperty("line.separator")); 
		writer.write("Danke mir gehts gut!");
				  
		writer.flush();														// Datei schliessen
		writer.close();			
		}

}
