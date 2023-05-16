public class Main1 {
//        public static void main(String[] args) {
//        String str = "1\n" +
//                "\n" +
//                "May Giat\n" +
//                "\n" +
//                "3\n" +
//                "\n" +
//                "2\n" +
//                "\n" +
//                "Tu Lanh\n" +
//                "\n" +
//                "5\n" +
//                "\n" +
//                "3\n" +
//                "\n" +
//                "Dieu Hoa\n" +
//                "\n" +
//                "7\n" +
//                "\n" +
//                "4\n" +
//                "\n" +
//                "Quat\n" +
//                "\n" +
//                "1\n" +
//                "\n" +
//                "5\n" +
//                "\n" +
//                "Bep Dien\n" +
//                "\n" +
//                "2";
//        String[] str1 = str.split("\t");
//        StringBuilder b = new StringBuilder();
//        for (int i = 0; i < str1.length; i++) {
//            if (str1[i].matches("^[0-9]+$")) {
//                b.append(str1[i] + ",");
//            } else if (str1[i].contains("\n")) {
//                b.append(")" + ",(" + '"' + str1[i] + '"');
//            } else {
//                b.append('"' + str1[i] + '"' + ",");
//            }
//        }


//        System.out.println(b);
//        System.out.println("Có hồ bơi", 500, 4, 3, 1),
//                ("
//        Có thêm bếp nướng "," null ",3,2,2),("
//        Có tivi "," null "," null ",4,3),("
//        Có hồ bơi ",300,3,3,1),("
//        Có thêm bếp nướng "," null ",2,3,2),("
//        Có tivi "," null "," null ",4,3);
//    }
    public static void main(String[] args) {
        String str = "DATE_ADD(ngay_sinh, INTERVAL 18 YEAR) <= CURDATE() AND DATE_ADD(ngay_sinh, INTERVAL 50 YEAR) >= CURDATE()";
        String str2 = str.toLowerCase();
        System.out.println(str2);

    }

}
