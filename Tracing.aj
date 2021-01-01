import java.util.logging.Level;
import java.util.logging.Logger;

import org.aspectj.lang.Signature;


public aspect Tracing {
	Logger logger = Logger.getAnonymousLogger(null);
	
	pointcut traced() : execution(* *.*(..)) && !within(Tracing);
	
	before() : traced() {
		Signature sig = thisJoinPointStaticPart.getSignature();
		logger.log(Level.INFO, "Entering [" + sig.toShortString() + "]");
	}
}
