
public aspect Secondstep {
	pointcut secondStep() : execution(* Hello.startDialogue(..));

	after() returning() : secondStep() {
		System.out.println("Yeah, you..!");
	}

}
