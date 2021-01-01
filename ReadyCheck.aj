import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public aspect ReadyCheck {
	pointcut askIfReady() : call(* Hello.startDialogue(..));
	
	before() throws IOException : askIfReady() {
		BufferedReader input = new BufferedReader(new InputStreamReader(System.in));
		System.out.println("Ready? [y/n]");
		String answer = input.readLine();
		if (answer.equals("n")) {
			System.out.println("Kthxbye.");
			System.exit(0);
		} else if (answer.equals("y")) {
			System.out.println("Alright, let's go!");
		} else {
			System.out.println("I'll take that as a yes...");
		}			
	}
}
