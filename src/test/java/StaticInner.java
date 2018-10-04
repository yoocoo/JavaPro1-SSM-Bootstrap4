 public class StaticInner {
    private static  int A = 1;
     /**
      * 静态内部类
      * 生成的类名：StaticInner$InnerClass
      */
    public static class InnerClass{ //static修饰的静态内部类
        //静态内部类可以声明静态的成员变量，其他内部类不可以
    private  static  int B = 1;
    public void excute(){
        //静态内部类只能访问静态程序
        System.out.println(A+B);
    }
     }

     public static void main(String[] args) {
         //创建静态内部类
         StaticInner.InnerClass innerClass = new StaticInner.InnerClass();
         innerClass.excute();
     }
}

//打印结果 ： 2
