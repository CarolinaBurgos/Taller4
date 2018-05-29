package taller4;

public aspect AspectoGreeting {	
    
	// Define a Pointcut is
    // Collection of JoinPoint call sayHello of class HelloAspectJDemo.
	pointcut callGreeting(): call(* HelloAspectJDemo.greeting()); 
    after() : callGreeting()  {
    	long startTime = System.nanoTime();
    	long estimatedTime = System.nanoTime() - startTime;
    	System.out.println("\n\nTiempo estimado en nano segundos: ");
    	System.out.print(estimatedTime);
    }  
    
}  
