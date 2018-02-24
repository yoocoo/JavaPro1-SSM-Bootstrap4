import java.util.Date;

public class TestName extends Date {
    public  static  void  main(String[] args){
        new  TestName().test();
    }

    private void test() {
        System.out.println("获得当前类名："+super.getClass().getName());
        System.out.println("获得父类名："+getClass().getSuperclass().getName());

    }
}
