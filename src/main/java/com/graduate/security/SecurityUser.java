package com.graduate.security;

import com.graduate.pojo.Users;
import com.graduate.service.RoleService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;


/**
 * 核心组件值之UserDetails
 * UserDetails => Spring Security基础接口，包含某个用户的账号，密码，权限，状态（是否锁定）等信息。只有getter方法。
 * Authentication => 认证对象，认证开始时创建，认证成功后存储于SecurityContext
 * principal => 用户信息对象，是一个Object，通常可转为UserDetails
 *
 * userDetails 用于表示一个principal，但是一般情况下是作为（你所使用的用户数据库）和（spring security 的安全上下文需要保留的信息）
 *
 *
 * UserDetails有一个默认实现,User(org.springframework.security.core.userdetails).
 * 用户可以从自己的数据库中取出此用户的信息，然后用构造方法填充创建一个User对象即可
 * 注意：实现CredentialsContainer接口是为了在登录成功后，清除用户信息中的密码（登录成功后会将用户信息存储在SecurityContext中）
 *
 *
 * 另外一个 UserDetails => MutableUserDetails => MutableUser  用于InMemoryUserDetailsManager（是spring security内置
 * 的InMemoryUserDetailsManagerConfigurer是Spring Security Config
 * 提供的一个安全配置器SecurityConfigurer,
 * 用来配置一个安全构建器ProviderManagerBuilder(通常可以认为就是AuthenticationManagerBuilder),
 * 它为目标安全构建器提供的是一个基于**内存存储**用户账号详情的用户账号详情管理对象DaoAuthenticationProvider。）
 * 之间的适配器。
 * @author xiyang.ycj
 * @since Jun 24, 2019 23:59:11 PM
 */
public class SecurityUser extends Users implements UserDetails {
    @Autowired
    private RoleService roleService;


    SecurityUser(Users user){
        if (user != null){
            this.setId(user.getId());
            this.setUsername(user.getUsername());
            this.setPassword(user.getPassword());
            this.setAlias(getAlias());
            this.setPhone(user.getPhone());
            this.setRole(roleService.findById(user.getTeacherId()));
        }
    }

    /**
     * 权限集合
     * @return
     */
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        Collection<GrantedAuthority> authorities = new ArrayList<>();
        List<String> roles = this.getRole();
        if(roles != null){
            for (String role : roles) {
                SimpleGrantedAuthority authority = new SimpleGrantedAuthority(role);
                authorities.add(authority);
            }
        }
        return authorities;
    }

    /**
     * 指示用户的账户是否已过期。无法验证过期的账户。
     * @return 如果用户的账户有效（即未过期），则返回true，如果不在有效就返回false
     */
    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    /**
     * 指示用户是锁定还是解锁。无法对锁定的用户进行身份验证。
     * @return 如果用户未被锁定，则返回true，否则返回false
     */
    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    /**
     * 指示用户的凭证（密码）是否已过期。过期的凭证阻止身份验证
     * @return 如果用户的凭证有效（即未过期），则返回true
     *         如果不在有效（即过期），则返回false
     */
    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    /**
     * 指示用户是启用还是禁用。无法对禁用的用户进行身份验证
     * @return 如果启用了用户，则返回true，否则返回false
     */
    @Override
    public boolean isEnabled() {
        return true;
    }
}
