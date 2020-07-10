package com.pmsj.cinema.business.util;

import com.pmsj.cinema.business.exception.NullParametersException;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/**
 * @author mhd
 * @className ReflectUtil
 * @description TODO
 * @create 2020/7/9
 * @since 1.0.0
 */
public class ReflectUtil<T> {
    /**
     * 首字母大写
     *
     * @param fildeName
     * @return
     */
    public static String getMethodName(String fildeName) {
        byte[] items = fildeName.getBytes();
        items[0] = (byte) ((char) items[0] - 'a' + 'A');
        return new String(items);
    }

    /**
     * 判断对象中属性是否为空
     */
    public void throwNullParametersException(T obj) {
        Class<?> class1 = obj.getClass();
        String name =  class1.getName().substring(class1.getName().lastIndexOf(".")+1);
        Field[] fields = class1.getDeclaredFields();
        for (Field field : fields) {
            Method m = null;
            try {
                m = (Method) class1.getMethod("get" + getMethodName(field.getName()));
            } catch (NoSuchMethodException e) {
                e.printStackTrace();
            }
            Object val = null;// 调用getter方法获取属性值
            try {
                val = m.invoke(obj);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (InvocationTargetException e) {
                e.printStackTrace();
            }
            if (val == null && !getMethodName(field.getName()).equals(name+"Id")) {
                throw new NullParametersException(getMethodName(field.getName()) + " is null");
            }
        }

    }
}
