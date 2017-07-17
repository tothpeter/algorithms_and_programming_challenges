package practice;

public class BinaryTreeNode {

    public int value;
    public BinaryTreeNode left;
    public BinaryTreeNode right;

    public BinaryTreeNode(int value) {
        this.value = value;
    }
    
    @Override
    public String toString() {
    	return this.value + "";
    }
}