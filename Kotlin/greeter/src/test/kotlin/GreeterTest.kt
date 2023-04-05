import java.time.LocalDateTime
import kotlin.test.Test
import kotlin.test.assertEquals

// 1. Write a `Greeter` class with `greet` function that receives a `name`
//    as input and outputs `Hello <name>`.
//    You are allowed to construct `Greeter` object as you please.
// 2. `greet` trims the input
// 3. `greet` capitalizes the first letter of the name
// 4. `greet` returns `Good morning <name>` when the time is 06:00-12:00
// 5. `greet` returns `Good evening <name>` when the time is 18:00-22:00
// 6. `greet` returns `Good night <name>` when the time is 22:00-06:00
class GreeterTest {
    private val greeter = Greeter()

    @Test
    fun shouldReturnHelloName() {
        assertEquals("Hello Chris", greeter.greet("Chris"))
    }

    @Test
    fun shouldTrimLeadingAndTrailingSpaces() {
        assertEquals("Hello Chris", greeter.greet("    Chris   "))
    }

    @Test
    fun shouldCapitalizeTheFirstLetter() {
        assertEquals("Hello Chris", greeter.greet("chris"))
    }

    @Test
    fun shouldReturnGoodMorning_whenItsMorning() {
        val time = LocalDateTime.now().withHour(9)

        assertEquals("Good morning Chris", greeter.greet("Chris", time))
    }

    @Test
    fun shouldReturnGoodEvening_whenItIsEvening() {
        val time = LocalDateTime.now().withHour(19)

        assertEquals("Good evening Chris", greeter.greet("Chris", time))
    }

    @Test
    fun shouldReturnGoodNight_whenItIsBetween10AndMidnight() {
        val time = LocalDateTime.now().withHour(23)

        assertEquals("Good night Chris", greeter.greet("Chris", time))
    }

    @Test
    fun shouldeturnGoodNight_whenItIsEarlyMorning() {
        val time = LocalDateTime.now().withHour(4)

        assertEquals("Good night Chris", greeter.greet("Chris", time))
    }
}