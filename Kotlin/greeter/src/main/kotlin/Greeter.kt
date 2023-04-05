import java.time.LocalDateTime
import java.util.*

class Greeter {
    fun greet(name: String): String {
        return greet(name, LocalDateTime.now())
    }

    fun greet(name: String, time: LocalDateTime): String {
        var prefix = "Hello"

        when (time.hour) {
            in 6..11 -> prefix = "Good morning"
            in 18..21 -> prefix = "Good evening"
            in 22..24, in 0..6 -> prefix = "Good night"
        }

        return "$prefix ${format(name)}"
    }

    private fun format(name: String) = name.trim()
        .replaceFirstChar {
            if (it.isLowerCase()) it.titlecase(Locale.getDefault()) else it.toString()
        }
}