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
        String str = "SELECT DISTINCT dv.ma_dich_vu, dv.ten_dich_vu, dv.dien_tich, dv.chi_phi_thue, ldv.ten_loai_dich_vu \n" +
                "FROM dich_vu dv \n" +
                "JOIN loai_dich_vu ldv ON dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu \n" +
                "LEFT JOIN hop_dong hd ON dv.ma_dich_vu = hd.ma_dich_vu \n" +
                "WHERE ldv.ma_loai_dich_vu NOT IN (\n" +
                "    SELECT DISTINCT dv.ma_loai_dich_vu \n" +
                "    FROM dich_vu dv \n" +
                "    JOIN hop_dong hd ON dv.ma_dich_vu = hd.ma_dich_vu \n" +
                "    WHERE YEAR(hd.ngay_lam_hop_dong) = 2021 AND MONTH(hd.ngay_lam_hop_dong) IN (1, 2, 3)\n" +
                ");";
        String str2 = str.toLowerCase();
        System.out.println(str2);

    }

}
