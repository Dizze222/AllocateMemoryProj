public class Main {
    static final int userAgeID = 1;

    public static void main(String[] args){
        Allocator test = new Allocator();

        System.out.println(test.allocateBoolean(1,false));
        System.out.println(test.getAllocatedBoolean(1));
        System.out.println(test.editAllocatedBoolean(1,true));
        System.out.println(test.getAllocatedBoolean(1));



//        lib.allocateInt(userAgeID, 20);
//        System.out.println("Челику "+lib.getAllocatedInt(userAgeID) + " лет");
//
//        System.out.println(lib.allocateInt(20, 228));
//        System.out.println(lib.editAllocatedInt(userAgeID,21));
//        System.out.println(lib.getAllocatedInt(userAgeID));
//
//        for (int i = 0; i < 8000; i++) {
//            int finalI = i;
//            new Thread(() -> {
//                test.allocateInt(finalI, finalI);
//
//                // Выполняем некоторые операции
//                test.editAllocatedInt(finalI, finalI + 1);
//
//                // Проверяем результат
//                if (test.getAllocatedInt(finalI) != finalI + 1) {
//                    System.out.println("Нарушение атомарности обнаружено в потоке " + finalI);
//                }
//            }).start();
//        }
    }



}
