public class Main {
    public static void main(String[] args) {
        String str="1\tNguyễn Văn An\t1970-11-07\t456231786\t10000000\t0901234121\tannguyen@gmail.com\t295 Nguyễn Tất Thành, Đà Nẵng\t1\t3\t1\n" +
                "2\tLê Văn Bình\t1997-04-09\t654231234\t7000000\t0934212314\tbinhlv@gmail.com\t22 Yên Bái, Đà Nẵng\t1\t2\t2\n" +
                "3\tHồ Thị Yến\t1995-12-12\t999231723\t14000000\t0412352315\tthiyen@gmail.com\tK234/11 Điện Biên Phủ, Gia Lai\t1\t3\t2\n" +
                "4\tVõ Công Toản\t1980-04-04\t123231365\t17000000\t0374443232\ttoan0404@gmail.com\t77 Hoàng Diệu, Quảng Trị\t1\t4\t4\n" +
                "5\tNguyễn Bỉnh Phát\t1999-12-09\t454363232\t6000000\t0902341231\tphatphat@gmail.com\t43 Yên Bái, Đà Nẵng\t2\t1\t1\n" +
                "6\tKhúc Nguyễn An Nghi\t2000-11-08\t964542311\t7000000\t0978653213\tannghi20@gmail.com\t294 Nguyễn Tất Thành, Đà Nẵng\t2\t2\t3\n" +
                "7\tNguyễn Hữu Hà\t1993-01-01\t534323231\t8000000\t0941234553\tnhh0101@gmail.com\t4 Nguyễn Chí Thanh, Huế\t2\t3\t2\n" +
                "8\tNguyễn Hà Đông\t1989-09-03\t234414123\t9000000\t0642123111\tdonghanguyen@gmail.com\t111 Hùng Vương, Hà Nội\t2\t4\t4\n" +
                "9\tTòng Hoang\t1982-09-03\t256781231\t6000000\t0245144444\thoangtong@gmail.com\t213 Hàm Nghi, Đà Nẵng\t2\t4\t4\n" +
                "10\tNguyễn Công Đạo\t1994-01-08\t755434343\t8000000\t0988767111\tnguyencongdao12@gmail.com\t6 Hoà Khánh, Đồng Nai\t2\t3\t2\n";
         String [] str1=str.split("\t");
         StringBuilder b= new StringBuilder();
        for (String s : str1) {
            b.append(s+",");
        }
        System.out.println(b);



    }
}
