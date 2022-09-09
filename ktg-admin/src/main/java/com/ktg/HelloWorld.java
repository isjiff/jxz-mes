package com.ktg;

import java.security.SecureRandom;
import java.time.LocalDateTime;

import cn.hutool.core.date.DateUtil;

class HelloWorld {

public static void main(String args[]) throws Exception {

byte[] bytes = new byte[32];

SecureRandom.getInstance("SHA1PRNG").nextBytes(bytes);

System.out.println("SourceRandom nextBytes : " + new String(bytes));
System.out.println(DateUtil.format(LocalDateTime.now(),"yyyyMMddHHmmss"));
}

}