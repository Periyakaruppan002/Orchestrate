/**
 * HelloRevecast
 * =============================================================
 * Purpose:     Simple greeting class demonstrating Orchestrate
 *              bootstrapping. Returns a greeting string.
 * =============================================================
 * History
 * -------
 * VERSION  AUTHOR       DATE         DETAIL
 * 1.0      Orchestrate  2026-06-30   Created
 */
public with sharing class HelloRevecast {

    /**
     * greet
     * -----------------------------------------------------------
     * Purpose:    Returns a friendly greeting from Revecast.
     * Parameters: None
     * Returns:    String — the greeting message
     */
    public static String greet() {
        System.debug(LoggingLevel.INFO, "Entering HelloRevecast.greet()");

        String message = "Hello from Revecast!";

        System.debug(LoggingLevel.INFO, "Exiting HelloRevecast.greet(): " + message);
        return message;
    }
}
