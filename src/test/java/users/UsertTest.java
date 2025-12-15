package users;

import com.intuit.karate.junit5.Karate;

class UserTest {

    @Karate.Test
    Karate testUsuarios() {
        return Karate.run("classpath:features/usuarios");
    }
}
