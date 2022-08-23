import com.charleskorn.kaml.Yaml
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.encodeToString
import org.junit.jupiter.api.Assertions
import org.junit.jupiter.api.Test
import org.modelix.workspaces.Credentials

class CredentialsTest {

    @Test
    fun testEncryption() {
        val credentials = Credentials("user", "1A.23bc\$")
        val encrypted = credentials.encrypt()
        val decrypted = encrypted.decrypt()
        Assertions.assertEquals(credentials.password, decrypted.password)
        Assertions.assertArrayEquals(credentials.password.toByteArray(), decrypted.password.toByteArray())
    }

    @Test
    fun testSerialization() {
        val credentials = Credentials("user", "1A.23bc\$")
        val serialized = Yaml.default.encodeToString(credentials)
        val deserialized = Yaml.default.decodeFromString<Credentials>(serialized)
        val encrypted = deserialized.encrypt()
        val serialized2 = Yaml.default.encodeToString(encrypted)
        val deserialized2 = Yaml.default.decodeFromString<Credentials>(serialized2)
        val decrypted = deserialized2.decrypt()
        Assertions.assertEquals(credentials.password, decrypted.password)
        Assertions.assertArrayEquals(credentials.password.toByteArray(), decrypted.password.toByteArray())
    }

}