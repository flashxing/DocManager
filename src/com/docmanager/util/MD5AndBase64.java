/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.docmanager.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import sun.misc.BASE64Encoder;

public class MD5AndBase64 {
    public static String encryption(String plainText) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(plainText.getBytes());
            byte b[] = md.digest();
            return (new BASE64Encoder()).encodeBuffer(b);          
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return null;
    }
}
