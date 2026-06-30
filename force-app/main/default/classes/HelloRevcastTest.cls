/**
 * HelloRevcastTest
 * =============================================================
 * Purpose:     Unit tests for HelloRevecast.greet()
 *              Covers: happy path, return value assertion, bulk-safe
 *              (static method — no DML/bulk scenarios needed)
 * =============================================================
 * History
 * -------
 * VERSION  AUTHOR       DATE         DETAIL
 * 1.0      Orchestrate  2026-06-30   Created
 */
@isTest
private class HelloRevcastTest {

    /**
     * testGreet_returnsExpectedString
     * -----------------------------------------------------------
     * Tests that greet() returns the expected greeting string.
     * Expected: "Hello from Revecast!"
     */
    @isTest
    static void testGreet_returnsExpectedString() {
        // Arrange — no setup required for a static utility method

        // Act
        Test.startTest();
        String result = HelloRevecast.greet();
        Test.stopTest();

        // Assert
        System.assertNotEquals(null, result, "greet() should not return null");
        System.assertEquals(
            "Hello from Revecast!",
            result,
            "greet() should return the canonical Revecast greeting"
        );
    }

    /**
     * testGreet_isIdempotent
     * -----------------------------------------------------------
     * Tests that calling greet() multiple times returns the same value.
     */
    @isTest
    static void testGreet_isIdempotent() {
        String first  = HelloRevecast.greet();
        String second = HelloRevecast.greet();
        System.assertEquals(first, second, "greet() must be idempotent — same result every call");
    }
}
