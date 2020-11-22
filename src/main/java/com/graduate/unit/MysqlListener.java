package com.graduate.unit;

import com.mysql.cj.jdbc.AbandonedConnectionCleanupThread;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.sql.DriverManager;

/**
 * 数据库监听器
 */
public class MysqlListener implements ServletContextListener {
    /**
     * 实现其中的初始化函数，当有事件发生时即触发
     * @param sce
     */
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("webService start");
    }

    /**
     * 实现其中的摧毁函数
     * @param sce
     */
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        try {
            while(DriverManager.getDrivers().hasMoreElements()){
                DriverManager.deregisterDriver(DriverManager.getDrivers().nextElement());
            }
            System.out.println("jdbc Driver close");
            AbandonedConnectionCleanupThread.checkedShutdown();
            System.out.println("jdbc close success");
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}
