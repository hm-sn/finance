import org.apache.ibatis.session.*;

import java.io.*;
import java.sql.Connection;
import java.util.*;
import java.text.*;
import java.math.*;

public class Main {


        public static  int strStr(String source, String target) {
            if (source == null || target == null) {
                return -1;
            }

            int i, j;
            for (i = 0; i < source.length() - target.length() + 1; i++) {
                for (j = 0; j < target.length(); j++) {
                    if (source.charAt(i + j) != target.charAt(j)) {
                        break;
                    }
                }
                if (j == target.length()) {
                    return i;
                }
            }
            return -1;
        }


    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String s1 = sc.next();
        String s2 = sc.next();
        System.out.println(strStr(s1,s2));
    }
}
