import java.io.IOException;

public class Hello {

	public static void main(String[] args) throws IOException {
		doSomethingFirst();
		startDialogue();
	}
	
	public static void startDialogue() throws IOException {
		System.out.println("Hey you.");
	}
	
	public static void doSomethingFirst() {
		System.out.println("Doing something...");
	}

}
