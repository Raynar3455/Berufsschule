//
//	Inhalt:
//		Einordnung:			FISI-JK-LS2-AB1-A3
//		Projekt: 			Aufgabe_ls2_03a	- 	Taschenrechner
//							Lösung mit SWITCH-Anweisung
//
//	Autor:
//		Name:				Markus Breuer
//		Organisaion:		BK-GuT
//
//	Datum:
//		Erstellt:			06.10.2016
//		Letzte Änderung:	22.11.2019
//


import java.util.Scanner;


public class Aufgabe_ls2_03 {

	public static void main(String[] args) {
		char	op;
		Scanner input = new Scanner(System.in);
		double	z1, z2, erg;
		
		do{
//			System.out.println( "\n\n");
			System.out.println("Taschenrechner");		// Auswahlmenü
			System.out.println("+ Addition");
			System.out.println("- Subtraktion");
			System.out.println("* Multiplikation");
			System.out.println("/ Division");
			System.out.println("e Ende");
			System.out.print("Ihre Auswahl:");
			op = input.next().charAt(0);
			
			if( op == 'e') {							// Bei Ende nichts mehr machen
				break;
			}
			else if ((op != '+') && (op != '-') &&		// Unbekannter Befehl
					 (op != '*') && (op != '/')){
				System.out.println("Unbekannter Befehl " + op);
				continue;
			}
			
			System.out.print("z1 = ");					// Zahlen einlesen
			z1 = input.nextDouble();
			System.out.print("z2 = ");
			z2 = input.nextDouble();
			
			erg = 0;
			switch( op){								// Berechnung
			case '+':
				erg = z1 + z2;
				break;
			case '-':
				erg = z1 - z2;
				break;
			case '*':
				erg = z1 * z2;
				break;
			case '/':
				erg = z1 / z2;
				break;
			}
														// Ausgabe
			System.out.println( z1 + " " + op + " " + z2 + " = " + erg);
		} while(op != 'e');
	}

}
