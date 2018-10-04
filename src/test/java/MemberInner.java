/**
 * 成员内部类（member inner classes）
 * 成员内部类可以访问 外部类的静态 与 非静态的方法 和 成员变量
 * 生成 成员内部类对象 的方法： OuterClass.InnerClass inner = new  OuterClass().new InnerClass();
 * 在 局部内部类 中访问 外部类的成员变量 方法： OuterClass.this.a
 */
public class MemberInner {
    private int a = 1;

    public void execute() {
        //在外部类中创建成员内部类
        InnerClass innerClass = this.new InnerClass();
    }

    public class InnerClass {
        //内部类可以创建与外部类同名的成员变量
        private int a = 2;

        public void execute() {
            //this引用的是内部类
            System.out.println("this.a" + this.a);
            //在内部类中使用外部类的成员变量的方法
            System.out.println("PrintTest:" + MemberInner.this.a);
        }
    }

    public static void main(String[] args) {
        //创建成员内部类，并执行
        MemberInner.InnerClass innerClass = new MemberInner().new InnerClass();
        innerClass.execute();
    }
}
//打印结果
//this.a2
// PrintTest:1