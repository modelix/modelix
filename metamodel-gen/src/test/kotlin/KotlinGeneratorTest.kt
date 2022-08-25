import com.charleskorn.kaml.Yaml
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import org.junit.Test
import org.modelix.metamodel.definition.Language
import org.modelix.metamodel.generator.KotlinGenerator
import java.io.File
import kotlin.io.path.Path

class KotlinGeneratorTest {

    @Test
    fun test() {
        val input = """
            name: org.modelix.entities
            concepts:
            - name: Entity
              properties:
              - name: name
              children:
              - name: properties
                type: Property
                multiple: true
                optional: true
            - name: Property
              children:
              - name: type
                type: Type
                optional: false
            - name: Type
            - name: EntityType
              extends:
              - Type
              references:
              - name: entity
                type: Entity
                optional: false
        """.trimIndent()

        val language = Yaml.default.decodeFromString<Language>(input)
        val outputDir = File(".").toPath().resolve("build").resolve("test-generator-output")
        KotlinGenerator(outputDir).generate(listOf(language))
    }

}