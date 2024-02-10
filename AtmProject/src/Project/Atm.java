package Project;

import java.util.Scanner;
import java.sql.*;

public class Atm {

	public static void main(String[] args) throws SQLException, ClassNotFoundException {

		String url = "jdbc:mysql://localhost:3306/ATM";
		String uname = "root";
		String pass = "";

		// Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, uname, pass);
		Statement st = con.createStatement();

		Scanner scan = new Scanner(System.in);
		System.out.println("WELCOME TO OUR ATM");
		System.out.println("Please enter your pin number");
		int pin = scan.nextInt();
		ResultSet rs = st.executeQuery("select * from accountholders where pin_no=" + pin);

		String Name = null;
		int AccNo = 0;
		int Balance = 0;
		int count = 0;
		while (rs.next()) {
			Name = rs.getString(3);
			Balance = rs.getInt(4);
			AccNo = rs.getInt(2);
			count++;
		}

		int Amount = 0;
		int Withdrawl_Amount = 0;
		if (count > 0) {
			System.out.println("Hello " + Name);
			System.out.println("Your Account number is: " + AccNo);
			while (true) {
				System.out.println("Enter 1 to check Balance");
				System.out.println("Enter 2 to Deposit");
				System.out.println("Enter 3 to  Withdrawl");
				System.out.println("Enter 4 to Print receipt");
				System.out.println("Enter 5 to exit");
				System.out.println();
				System.out.println("Enter your choice");
				int choice = scan.nextInt();
				switch (choice) {
				case 1:
					System.out.println("Balance is : " + Balance);
					break;
				case 2:
					System.out.println("How much amount did you want to Deposit");
					Amount = scan.nextInt();
					Balance += Amount;
					int Bal = st.executeUpdate("update accountholders set Balance = " + Balance + " where pin_no=" + pin);
					System.out.println("Sucessfully added and your current balance is: " + Balance);
					break;
				case 3:
					System.out.println("How much amount did you want to withdrawl");
					Withdrawl_Amount = scan.nextInt();
					if (Withdrawl_Amount > Balance) {
						System.out.println("You have insufficient Balance");
					} else {

						Balance -= Withdrawl_Amount;
						int Wdrl = st.executeUpdate("update accountholders set Balance = " + Balance + " where pin_no=" + pin);
						System.out.println("Withdrawl successfully and your current balance is: " + Balance);
					}
					break;
				case 4:

					System.out.println("Your current Balance is: " + Balance);
					System.out.println("Deposited Amount: " + Amount);
					System.out.println("Withdrawl Amount: " + Withdrawl_Amount);
					break;
				}
				if (choice == 5) {
					System.out.println("Thank you  for using our ATM");
					break;
				}
			}

		}

		else {
			System.out.println("Wrong pin " + " Please try again ");
		}

	}
}
