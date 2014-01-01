package com.docmanager.util;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class MapUtil {
	public static String SPLITTER = ":::";
	public static String POINTER = "@@@";
	public static String packageString(Map<String, String> map){
		StringBuilder stringBuilder = new StringBuilder(500);
		for(Entry<String, String> entry:map.entrySet()){
			stringBuilder.append(entry.getKey());
			stringBuilder.append(POINTER);
			stringBuilder.append(entry.getValue());
			stringBuilder.append(SPLITTER);
		}
		stringBuilder.delete(stringBuilder.length()-3, stringBuilder.length());
		return stringBuilder.toString();
	}
	
	public static Map<String, String> parserString(String string){
		Map<String, String> map = new HashMap<String, String>();
		String[] strings= string.split(SPLITTER,20);
		for(String str:strings){
			System.out.println(str);
			String[] strs = str.split(POINTER);
			if(strs.length>1){
				map.put(strs[0], strs[1]);
			}else{
				map.put(strs[0], "");
			}
		}
		return map;
	}
	
	public static Map<String, String> generateMapFromArray(String[] keys, String[] values){
		Map<String, String> map = new HashMap<String, String>();
		int i = 0;
		for(String key: keys){
			if(i >= values.length){
				return map;
			}
			map.put(key, values[i]);
		}
		return map;
	}
	
	public static Map<String, String> generateMapFromArray(List<String> keys, List<String> values){
		Map<String, String> map = new HashMap<String, String>();
		int i = 0;
		for(String key: keys){
			if(i >= values.size()){
				return map;
			}
			map.put(key, values.get(i));
		}
		return map;
	}
	
	public static Map<String, String> generateMapFromArray(String[] arrays){
		Map<String, String> map = new HashMap<String, String>();
		int i = 0;
		for(String str: arrays){
			map.put(i+"", str);
			i++;
		}
		return map;
	}
	
	public static void main(String[] args){
		Map<String, String> map = new HashMap<String, String>();
		map.put("123", "test123");
		map.put("321", "test321");
		map.put("223", "");
		String string = packageString(map);
		System.out.println(string);
		System.out.println(parserString(string));
	}
}
