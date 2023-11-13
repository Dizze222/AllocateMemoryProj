public class Allocator {
    native int allocateInt(int id, int value);

    native int getAllocatedInt(int id);

    static {
        System.loadLibrary("nativeLibC");
    }
}
