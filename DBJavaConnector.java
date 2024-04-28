import java.sql.*;
import java.util.Scanner;

public class DBJavaConnector {

	static Scanner input = new Scanner(System.in);

	public static void main(String[] args) {

		//for the purpose of privacy, all my personal information has been removed
		//replace (WEBHOSTING_ADDRESS), (DATABASE_NAME), (USERNAME) and (PASSWORD) with your stuff 
		//**Specifically used/tested using phpadmin servers**
		Connection con = null;

		try {
			String host = "(WEBHOSTING_ADDRESS)";
			String port = ":3306/";
			String DB = "(DATABASE_NAME)";
			String username = "(USERNAME)";
			String password = "(PASSWORD)";
			String urlDB = host + port + DB;
			con = DriverManager.getConnection(urlDB, username, password);

			if (con != null) {
				System.out.println("Database connection has been established successfully");
			} else {
				System.out.println("Failure in connecting to database");
			}

			boolean finished = false;
			do {
				System.out.println("Select an option:");
				System.out.println("1. Display interview schedule:");
				System.out.println("2. Display average job salary view:");
				System.out.println("3. Display appliation status view:");
				System.out.println("4. Display candidate skills:");
				System.out.println("5. Display employer job postings view");
				System.out.println("6. Add a new Skill:");
				System.out.println("7. Quit");

				int option = input.nextInt();

				input.nextLine();

				switch (option) {

				case 1:
					System.out.println("Interview Schedule with all candidates that have an upcoming interview:");
					System.out.println("-------------------------------------------");
					String query = "SELECT i.InterviewID, i.InterviewDate, i.InterviewTime, i.InterviewLocation, c.FirstName AS CandidateFirstName, c.LastName AS CandidateLastName, jp.Title AS JobTitle FROM p_interviews i INNER JOIN p_applications a ON i.ApplicationID = a.ApplicationID INNER JOIN p_candidates c ON a.CandidateID = c.CandidateID INNER JOIN p_jobpostings jp ON a.JobID = jp.JobID WHERE i.Status = 'Scheduled'";
					printInterviewSchedule(con, query);
					break;

				case 2:
					System.out.println("Select average job salary view");
					System.out.println("-------------------------------------------");
					query = "SELECT jp.Category, FORMAT(AVG(jp.Salary), 2) AS AverageSalary\n"
							+ "FROM p_jobpostings jp GROUP BY jp.Category;";
					printAverageJobSalary(con, query);
					break;

				case 3:
					System.out.println("Select application status view");
					System.out.println("-------------------------------------------");
					query = "SELECT a.ApplicationID, a.ApplicationDate, a.Status, c.FirstName AS CandidateFirstName, c.LastName AS CandidateLastName, jp.Title AS JobTitle\n"
							+ "FROM p_applications a\n" + "INNER JOIN p_candidates c ON a.CandidateID = c.CandidateID\n"
							+ "INNER JOIN p_jobpostings jp ON a.JobID = jp.JobID\n"
							+ "ORDER BY a.ApplicationDate DESC;\n" + "";
					printApplicationStatus(con, query);
					break;
				case 4:
					System.out.println("Select candidates along with their skills");
					System.out.println("-------------------------------------------");
					query = "SELECT c.FirstName, c.LastName, c.Email, c.Phone, s.SkillName\n" + "FROM p_candidates c\n"
							+ "INNER JOIN p_candidateskills cs ON c.CandidateID = cs.CandidateID\n"
							+ "INNER JOIN p_skills s ON cs.SkillID = s.SkillID;";
					printCandidates(con, query);
					break;
				case 5:
					System.out.println("Select employers along with their job postings");
					System.out.println("-------------------------------------------");
					query = "SELECT e.CompanyName, e.Phone, e.Email AS EmployerEmail, jp.Title AS JobTitle, jp.Description, jp.Location, jp.PostedDate\n"
							+ "FROM p_employers e\n" + "INNER JOIN p_jobpostings jp ON e.EmployerID = jp.EmployerID\n"
							+ "WHERE jp.PostedDate BETWEEN '2024-03-13 09:00:00' AND '2024-03-16 18:00:00';";
					printEmployers(con, query);
					break;

				case 6:
					System.out.println("Inserting a new Skill record:");
					String skillName = input.nextLine();
					PreparedStatement insertSkill = con.prepareStatement("INSERT INTO p_skills(SkillName)VALUES(?)");
					insertSkill.setString(1, skillName);
					int rowsAffected = insertSkill.executeUpdate();

					if (rowsAffected > 0) {
						System.out.println("New skill record inserted successfully");
						break;
					} else {
						System.out.println("The skill record has not been successfully inserted.");
						break;
					}

				case 7:
					finished = true;
					break;
				default:
					System.out.println("This is an invalid option. Please try again");

				}
			} while (!finished);
		} catch (SQLException e) {
			System.err.println("SQL Exception:" + e.getMessage());
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					System.out.println("Error closing connection" + e.getMessage());
				}
			}
			input.close();
		}
	}

	public static void printInterviewSchedule(Connection con, String query) {
		try (Statement stmt = con.createStatement(); ResultSet rs = stmt.executeQuery(query)) {
			while (rs.next()) {
				int interviewID = rs.getInt("InterviewID");
				String interviewDate = rs.getString("InterviewDate");
				String interviewTime = rs.getString("InterviewTime");
				String interviewLocation = rs.getString("InterviewLocation");
				String candidateFirstName = rs.getString("CandidateFirstName");
				String candidateLastName = rs.getString("CandidateLastName");
				String jobTitle = rs.getString("JobTitle");
				System.out.println("Interview ID: " + interviewID + ", Interview Date: " + interviewDate
						+ ", Interview Time: " + interviewTime + ", Interview Location: " + interviewLocation
						+ ", Candidate: " + candidateFirstName + " " + candidateLastName + ", Job Title: " + jobTitle);
			}
			System.out.println("-----------------------------------------");
		} catch (SQLException e) {
			System.err.println("Error fetching interview schedule: " + e.getMessage());
		}
	}

	public static void printApplicationStatus(Connection con, String query) {
		try (Statement stmt = con.createStatement(); ResultSet rs = stmt.executeQuery(query)) {
			while (rs.next()) {
				int applicationID = rs.getInt("ApplicationID");
				String applicationDate = rs.getString("ApplicationDate");
				String applicationStatus = rs.getString("Status");
				String candidateFirstName = rs.getString("CandidateFirstName");
				String candidateLastName = rs.getString("CandidateLastName");
				System.out.println("Application ID: " + applicationID + ", Application Date: " + applicationDate
						+ ", Application Status: " + applicationStatus
						+ ", Candidate: " + candidateFirstName + " " + candidateLastName);
			}
			System.out.println("-----------------------------------------");
		} catch (SQLException e) {
			System.err.println("Error fetching application schedule: " + e.getMessage());
		}
	}
	
	public static void printCandidates(Connection con, String query) {
		try (Statement stmt = con.createStatement(); ResultSet rs = stmt.executeQuery(query)) {
			while (rs.next()) {
				String candidateFirstName = rs.getString("FirstName");
				String candidateLastName = rs.getString("LastName");
				String email = rs.getString("Email");
				String phone = rs.getString("Phone");
				String skillName = rs.getString("SkillName");
				System.out.println("Candidate: " + candidateFirstName + " " + candidateLastName + ", Email: " + email +
						", Phone: " + phone + ", Skill Name: " + skillName);
			}
			System.out.println("-----------------------------------------");
		} catch (SQLException e) {
			System.err.println("Error fetching candidates: " + e.getMessage());
		}
	}
	public static void printEmployers(Connection con, String query) {
		try (Statement stmt = con.createStatement(); ResultSet rs = stmt.executeQuery(query)) {
			while (rs.next()) {
				String companyName = rs.getString("CompanyName");
				String phone = rs.getString("Phone");
				String email = rs.getString("EmployerEmail");
				String jobTitle = rs.getString("JobTitle");
				String description = rs.getString("Description");
				String location = rs.getString("Location");
				String postedDate = rs.getString("PostedDate");
				System.out.println("Company Name: " + companyName + ", Phone: " + phone
						+ ", Email: " + email + ", Job Title: " + jobTitle
						+ ", Description: " + description + ", Location: " + location + ", Posted Date: " + postedDate);
			}
			System.out.println("-----------------------------------------");
		} catch (SQLException e) {
			System.err.println("Error fetching employers and their job postings: " + e.getMessage());
		}
	}static void printAverageJobSalary(Connection con, String query) {
		try (Statement stmt = con.createStatement(); ResultSet rs = stmt.executeQuery(query)) {
			while (rs.next()) {
				String category = rs.getString("Category");
				String avgsalary = rs.getString("AverageSalary");
				System.out.println("Category: " + category + ", Average Salary: " + avgsalary);
			}
			System.out.println("-----------------------------------------");
		} catch (SQLException e) {
			System.err.println("Error fetching average category salary: " + e.getMessage());
		}
	}
}
