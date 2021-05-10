package com.graduate.security;

import com.graduate.pojo.Users;
import com.graduate.service.LoginService;
import com.graduate.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * 核心组件值之UserDetailsService
 * 用来加载用户信息
 *
 * 默认实现
 * UserDetailsService => UserDetailsManager => InMemoryUserDetailsManager => 存储于内存
 * UserDetailsService => JdbcDaoImpl => 存储于数据库（磁盘）
 *
 * 其中，如果你的数据库设计符合JdbcDaoImpl中的规范，你也就不用自己去实现UserDetailsService了。
 * 但是大多数情况是不符合的，因为你用户表不一定就叫users，可能还有其他前缀什么的，比如叫tb_users。
 * 或者字段名也跟它不一样。如果你一定要使用这个JdbcDaoImpl，你可以通过它的setter方法修改它的数据库查询语句。
 * 注：它是利用Spring框架的JdbcTemplate来查询数据库的
 *
 * UserDetailsService最终注入到AuthenticationProvider的实现类中。
 * 注意：UserDetailsService只单纯的负责存取用户信息，没有其他功能；认证过程是由AuthenticationManager完成
 */
@Component
public class CustomUserDetailsService implements UserDetailsService {
    @Autowired
    private LoginService loginService;
    @Autowired
    private RoleService roleService;
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        try{
            Users user = loginService.findByName(username);
            if (user == null){
                return null;
            }
            List<SimpleGrantedAuthority> authorities = new ArrayList<>();
            List<String> rolePowers = roleService.findById(user.getTeacherId());
            for (String rolePower : rolePowers) {
                authorities.add(new SimpleGrantedAuthority(rolePower));
            }
            UserDetails userDetails = new User(user.getUsername(),user.getPassword(),authorities);
            return userDetails;
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }
}
