
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
;


public class MybatisTest {

    public static void main(String[] args) {
        BCryptPasswordEncoder cryptPasswordEncoder = new BCryptPasswordEncoder();
        System.out.println(cryptPasswordEncoder.encode("123456"));
    }
}
