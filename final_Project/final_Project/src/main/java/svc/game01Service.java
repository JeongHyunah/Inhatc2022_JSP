package svc;

public class game01Service {
	public static boolean getP2Answer(String answer) {
		String P2Answer = "1996.11.11";
		if(answer.equals(P2Answer))
			return true;
		else
			return false;
	}
	
	public static boolean getP3Answer(String answer) {
		String P3Answer = "이민우";
		if(answer.equals(P3Answer))
			return true;
		else
			System.out.println(answer);
			return false;
	}
	
	public static boolean getP4Answer(String answer) {
		String P3Answer = "961111";
		if(answer.equals(P3Answer))
			return true;
		else
			System.out.println(answer);
			return false;
	}
}
