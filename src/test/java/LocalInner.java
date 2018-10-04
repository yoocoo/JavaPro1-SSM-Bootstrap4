/**
 * 局部内部类
 * 1.类似于 局部变量，不能定义为public protected private static类型
 * 2.定义方法中，只能方法中声明为final 类型的变量
 */
 public class LocalInner {
     public void execute(){
         final int a = 1;
         /**
          * create InnerClass 创建局部内部类
          */
         class  InnerClass{
             final int a = 2;
             public  void execute(){
                 System.out.println("LocalInner Class:");
                 //局部内部类只能访问final类型的变量
                 System.out.println("PrintTest LocalInner:"+a);
                 System.out.println("PrintTest InnerClass:"+this.a);
             }

         }
         //只能在 所在方法区域创建
         new InnerClass().execute();
     }

    public static void main(String[] args) {
         //外部不能直接创建局部内部类
        LocalInner localInner = new LocalInner();
        localInner.execute();
    }
}
