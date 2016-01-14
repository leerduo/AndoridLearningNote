首先：定义哈夫曼树的节点类，为了方便使用集合类的排序功能，实现了Comparable接口(可以不是实现该接口，此时需要实现排序功能)

[java] view plaincopy
package my.huffmanTree;  
  
public class Node<T> implements Comparable<Node<T>> {  
    private T data;  
    private double weight;  
    private Node<T> left;  
    private Node<T> right;  
      
    public Node(T data, double weight){  
        this.data = data;  
        this.weight = weight;  
    }  
      
    public T getData() {  
        return data;  
    }  
  
    public void setData(T data) {  
        this.data = data;  
    }  
  
    public double getWeight() {  
        return weight;  
    }  
  
    public void setWeight(double weight) {  
        this.weight = weight;  
    }  
  
    public Node<T> getLeft() {  
        return left;  
    }  
  
    public void setLeft(Node<T> left) {  
        this.left = left;  
    }  
  
    public Node<T> getRight() {  
        return right;  
    }  
  
    public void setRight(Node<T> right) {  
        this.right = right;  
    }  
  
    @Override  
    public String toString(){  
        return "data:"+this.data+";weight:"+this.weight;  
    }  
  
    @Override  
    public int compareTo(Node<T> other) {  
        if(other.getWeight() > this.getWeight()){  
            return 1;  
        }  
        if(other.getWeight() < this.getWeight()){  
            return -1;  
        }  
          
        return 0;  
    }  
}  

然后：实现哈夫曼树的主题类，其中包括两个静态的泛型方法，为创建哈夫曼树和广度优先遍历哈夫曼树
[java] view plaincopy
package my.huffmanTree;  
  
import java.util.ArrayDeque;  
import java.util.ArrayList;  
import java.util.Collections;  
import java.util.List;  
import java.util.Queue;  
  
public class HuffmanTree<T> {  
    public static <T> Node<T> createTree(List<Node<T>> nodes){  
        while(nodes.size() > 1){  
            Collections.sort(nodes);  
            Node<T> left = nodes.get(nodes.size()-1);  
            Node<T> right = nodes.get(nodes.size()-2);  
            Node<T> parent = new Node<T>(null, left.getWeight()+right.getWeight());  
            parent.setLeft(left);  
            parent.setRight(right);  
            nodes.remove(left);  
            nodes.remove(right);  
            nodes.add(parent);  
        }  
        return nodes.get(0);  
    }  
      
    public static <T> List<Node<T>> breadth(Node<T> root){  
        List<Node<T>> list = new ArrayList<Node<T>>();  
        Queue<Node<T>> queue = new ArrayDeque<Node<T>>();  
          
        if(root != null){  
            queue.offer(root);  
        }  
          
        while(!queue.isEmpty()){  
            list.add(queue.peek());  
            Node<T> node = queue.poll();  
              
            if(node.getLeft() != null){  
                queue.offer(node.getLeft());  
            }  
              
            if(node.getRight() != null){  
                queue.offer(node.getRight());  
            }  
        }  
        return list;  
    }  
}  
最后：编写一共测试端

[java] view plaincopy
package my.huffmanTree;  
  
import java.util.ArrayList;  
import java.util.List;  
  
public class Test {  
    public static void main(String[] args) {  
        // TODO Auto-generated method stub  
        List<Node<String>> list = new ArrayList<Node<String>>();  
        list.add(new Node<String>("a",7));  
        list.add(new Node<String>("b",5));  
        list.add(new Node<String>("c",4));  
        list.add(new Node<String>("d",2));  
          
        Node<String> root = HuffmanTree.createTree(list);  
        System.out.println(HuffmanTree.breadth(root));  
//      System.out.println(list);  
    }  
}  

其中添加四个节点，其权重为{7,5,4,2}，最终按照广度优先遍历，应为七个节点，为：18,7,11,5,6,2,4；
控制台输出为：

[data:null;weight:18.0, data:a;weight:7.0, data:null;weight:11.0, data:b;weight:5.0, data:null;weight:6.0, data:d;weight:2.0, data:c;weight:4.0]

与实际想符合。