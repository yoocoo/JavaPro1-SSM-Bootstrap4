package cn.zjnu.test;

public class FindK {
    public static void main(String[] args) {
        //自定义链表数据
        LinkNode head = new LinkNode();
        LinkNode second = new LinkNode();
        LinkNode third = new LinkNode();
        LinkNode forth = new LinkNode();
        head.nextNode = second;
        second.nextNode = third;
        third.nextNode = forth;
        head.data = 1;
        second.data=2;
        third.data=3;
        forth.data=4;
        FindK test = new FindK();
        LinkNode resultListNode = test.findLastK(head,3);
        System.out.println("PrintTest:"+resultListNode.data);

}

    private LinkNode findLastK(LinkNode head, int k) {
        if (head == null || k == 0) {return null;}
        LinkNode resultNode = null; //我要找的节
        LinkNode headListNode = head; //第一个节点
        for (int i = 0; i < k; i++) {
            if (headListNode.nextNode != null) {
                headListNode = headListNode.nextNode;
            } else {
                return null;

            }
        }//让第一个节点挪到k-1个位置上
        resultNode = head; //紧接着两个指针同步，间隔K ,直到第一个节点到尾部，第二个节点也移到了距离尾部节点K的位置上
        while (headListNode!=null){
            resultNode = resultNode.nextNode;
            headListNode = headListNode.nextNode;
        }
        return resultNode;
    }
    }