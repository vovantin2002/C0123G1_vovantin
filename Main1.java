public class Main1 {
    public static void main(String[] args) {
        String str = "1\tVilla Beach Front\t25000\t10000000\t10\tvip\tCó hồ bơi\t500\t4\t3\t1\n" +
                "2\tHouse Princess 01\t14000\t5000000\t7\tvip\tCó thêm bếp nướng\tnull\t3\t2\t2\n" +
                "3\tRoom Twin 01\t5000\t1000000\t2\tnormal\tCó tivi\tnull\tnull\t4\t3\n" +
                "4\tVilla No Beach Front\t22000\t9000000\t8\tnormal\tCó hồ bơi\t300\t3\t3\t1\n" +
                "5\tHouse Princess 02\t10000\t4000000\t5\tnormal\tCó thêm bếp nướng\tnull\t2\t3\t2\n" +
                "6\tRoom Twin 02\t3000\t900000\t2\tnormal\tCó tivi\tnull\tnull\t4\t3\n";
        String[] str1 = str.split("\t");
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < str1.length; i++) {
            if (str1[i].matches("^[0-9]+$")) {
                b.append(str1[i] + ",");
            } else if (str1[i].contains("\n")) {
                b.append(")" + ",(" + '"' + str1[i] + '"');
            } else {
                b.append('"' + str1[i] + '"' + ",");
            }
        }


        System.out.println(b);
//        System.out.println("Có hồ bơi", 500, 4, 3, 1),
//                ("
//        Có thêm bếp nướng "," null ",3,2,2),("
//        Có tivi "," null "," null ",4,3),("
//        Có hồ bơi ",300,3,3,1),("
//        Có thêm bếp nướng "," null ",2,3,2),("
//        Có tivi "," null "," null ",4,3);
    }
}
