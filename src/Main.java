public class Main {
    public static void main(String[] args) {
        Allocator lib = new Allocator();
        lib.allocateInt(1,200);
        System.out.println(lib.getAllocatedInt(1));
        System.out.println(lib.allocateInt(20,228));
    }
}
