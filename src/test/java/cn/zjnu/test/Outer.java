package cn.zjnu.test;

public class Outer {
    //======================================
    int out_x = 0;
    public void method(){
    Inner1 inner1 = new  Inner1();
     class Inner2{
        //在方法体内部定义的内部类
        public void method(){
            out_x =3;
        }
    }
    Inner2 inner2 = new Inner2();
    }

    private class Inner1 {
        //在方法体外面定义的内部类
        //1. 在方法体外面定义的内部类访问类型可以是protected public 默认的 private 四种类型
    }
    //======================================

    //创建内部类的实力对象，一定要先创建外部类的实力杜希昂，然后用这个外部类实力对象去创建内部类的实力对象

    Outer outer = new Outer();
    Outer.Inner1 inner1 = outer.new Inner1();
    //======================================
    //创建匿名内部类 ，即定义某一接口或类的子类的同时，还创建了该子类的实例对象，无需为该子类定义名称
    public  void  start(){
        new Thread(
                new Runnable() {
                    @Override
                    public void run() {

                    }
                }
        ).start();
    }
}

