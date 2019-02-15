package com.yongfeng.L;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class MD5 {
    @Test
    public void index1(){
        Md5Hash md5_1 = new Md5Hash("123");
        System.out.println(md5_1);
        Md5Hash md5_2 = new Md5Hash("123", "admin");
        System.out.println(md5_2);
        Md5Hash md5_3 = new Md5Hash("123", "feng", 1024);
        System.out.println(md5_3);
    }
}
