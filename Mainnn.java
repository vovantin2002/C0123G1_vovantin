import java.util.*;

public class Mainnn {
    public static void main(String[] args) {
        char[]arr={'a','b','c'};
        System.out.println(arr);
        String s = "abcbdcef";
        System.out.println(solution(s));
    }

    public static char[] solution(String s) {
//        Set<Character> a = new LinkedHashSet();
//        for (int i = 0; i < s.length(); i++) {
//            int cout = 0;
//            for (int j = 0; j < s.length(); j++) {
//                if (s.charAt(i) == s.charAt(j)) {
//                    cout++;
//                }
//            }
//            if (cout >= 2) {
//                a.add(s.charAt(i));
//            }
//        }
//        char[] b = a.toString().toCharArray();
//        return b;

            Set<Character> set = new LinkedHashSet<>();
            for (int i = 0; i < s.length(); i++) {
                int count = 0;
                for (int j = 0; j <s.length(); j++) {
                    if (s.charAt(i) == s.charAt(j)) {
                        count++;
                    }
                }
                if (count >= 2) {
                    set.add(s.charAt(i));
                }
            }
            char[] result = new char[set.size()];
            int index = 0;
            for (Character c : set) {
                result[index++] = c;
            }
            return result;

    }
}
