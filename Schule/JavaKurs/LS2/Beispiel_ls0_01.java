//
//	Inhalt:
//		Einordnung:		JK-LS0-Beispiel_01
//		Projekt: 		Beispiel_ls0_01	-	Deutsches und Englisches Ein- und Ausgabeformat
//
//	Autor:
//		Name:			Markus Breuer
//		Organisaion:	BK-GuT
//
//	Datum:
//		Erstellt:			10.10.2017
//		Letzte Änderung:	15.11.2019
//


import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;
import java.util.Scanner;


public class Beispiel_ls0_01 {

	public static void main(String[] args)  {
		Scanner 	eingabe = new Scanner ( System.in);
		double 		x;

		Locale lc = new Locale("en", "GB");									// Eingabeformat setzen
//		Locale lc = new Locale("de", "DE");
		eingabe.useLocale(lc);
		
		DecimalFormatSymbols dfs = DecimalFormatSymbols.getInstance();		// Ausgabeformat setzen
		dfs.setDecimalSeparator('.');
//		dfs.setDecimalSeparator(',');
		DecimalFormat dFormat = new DecimalFormat("0.00", dfs);
		
		System.out.print("X: ");
		x = eingabe.nextDouble();
		
		System.out.println("X: " + dFormat.format(x));
	}
}
