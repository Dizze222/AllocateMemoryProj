public class Allocator {
    native int allocateInt(int id, int value);

    native int getAllocatedInt(int id);

    native int editAllocatedInt(int id, int newValue);

    native int atomicAllocateInt(int id, int value);

    native int atomicGetAllocatedInt(int id);

    native int atomicEditAllocatedInt(int id,int newValue);

    native boolean allocateBoolean(int id, boolean value);

    native boolean getAllocatedBoolean(int id);

    native boolean editAllocatedBoolean(int id,boolean newValue);

    static {
        System.loadLibrary("nativeLibC");
    }
}
