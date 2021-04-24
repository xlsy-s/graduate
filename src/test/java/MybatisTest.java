import com.graduate.mapper.ForgetMapper;
import com.graduate.mapper.LoginMapper;
import com.graduate.pojo.Users;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * login测试
 */
// 加载配置文件
@ContextConfiguration("classpath:applicationConfig.xml")
// 使用spring-test进行测试 注意，这里使用的junit版本要是4.12以上的
@RunWith(SpringJUnit4ClassRunner.class)
public class MybatisTest {
    @Autowired
    private LoginMapper loginMapper;
    @Autowired
    private ForgetMapper forgetMapper;
    @Test
    public void run1(){
        String name = "admin";
        Users byName = loginMapper.findByName(name);
        System.out.println(byName);
    }
    @Test
    public void run2(){
        Users users = new Users();
        users.setPhone("15730560197");
        users.setPassword("000000");
        forgetMapper.updatePassword(users);
    }

}
