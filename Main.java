public class Main {
    public static void main(String[] args) {
        String str="1\n" +
                "\n" +
                "1\n" +
                "\n" +
                "3/21/2006\n" +
                "\n" +
                "Null\n" +
                "\n" +
                "2\n" +
                "\n" +
                "2\n" +
                "\n" +
                "3/23/2006\n" +
                "\n" +
                "Null\n" +
                "\n" +
                "3\n" +
                "\n" +
                "1\n" +
                "\n" +
                "3/16/2006\n" +
                "\n" +
                "Null";
         String [] str1=str.split("\t");
         StringBuilder b= new StringBuilder();
        for (String s : str1) {
            b.append(s+",");
        }
        System.out.println(b);



    }
}
