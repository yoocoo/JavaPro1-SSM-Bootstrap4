package cn.zjnu.test;

import java.util.*;

public class Test {
    public static void main(String[] args) {
        List<String> str = new ArrayList<>();
        str.add("a");
        str.add("bb");
        StringBuffer stre = new StringBuffer();
        stre.append("avvv").append(0);
        System.out.println("PrintTest1:" + stre);
        System.out.println("PrintTest2:" + str.add(stre.toString()));
        Map<String, Integer> mapopq = new HashMap<>();
        mapopq.put("green", 1);
        mapopq.put("yellow", 2);
        mapopq.put("red", 2);
        mapopq.put("red", 0);
        System.out.println("PrintTestMap:" + mapopq.get("red"));
        System.out.println("PrintTestMap1:" + mapopq);
        System.out.println("PrintList:" + str);

        Set<String> set = new HashSet<>();
        set.add("aa");
        set.add("cc");
        set.add("bb");
        set.add("aa");
        System.out.println("PrintHashSetTest:"+set);
        Set<String> treeSet = new TreeSet<>();
        treeSet.add("cc");
        treeSet.add("bb");
        treeSet.add("cc");
        System.out.println("PrintTreeSetTest:"+treeSet);
        for(String S:str){
            System.out.println("PrintTestS:"+S);
        }
        Iterator<String> iterator = str.iterator();
        while (iterator.hasNext()){
           String s= iterator.next();
           System.out.println("PrintIteratorTest:"+s);
        }
        System.out.println("PrintTest:"+str.subList(1,2));
    }
}
