//https://www.hackerrank.com/challenges/fraudulent-activity-notifications/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=sorting

import java.io.*;
import java.math.*;
import java.security.*;
import java.text.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.regex.*;

public class Solution {

    static double median(ArrayList<Integer> list) {
        double result = 0;
        if(list.size() % 2 == 0) {
            // System.out.println("@@@ list is " + list);
            double middle1 = list.get(list.size()/2).doubleValue();
            double middle2 = list.get((list.size()/2) + 1).doubleValue();
            result = (middle1 + middle2) / 2;
        } else {
            // System.out.println("@@@ list is " + list);
            result =  list.get(list.size()/2).doubleValue();
            // System.out.println("@@@ median of list is " + result);
        }
        return result;
    }

    // Complete the activityNotifications function below.
    static int activityNotifications(int[] expenditure, int d) {
        int notifications = 0;
        ArrayList<Integer> trailing = new ArrayList<Integer>();
        int i = 0;

        // Initialize trailing days
        while(trailing.size() < d) {
            trailing.add(expenditure[i]);
            i++;
        }

        double med = 0;
        // Check median of last d days compared to next expenditure
        for( ; i < expenditure.length; i++) {
            // System.out.println("@@@ i is " + i);
            Collections.sort(trailing);
            med = median(trailing);
            // System.out.println("@@@ median is " + med);
            if(expenditure[i] >= 2 * med) {
                // System.out.println("@@@ New notification");
                notifications++;
            }
            trailing.remove(trailing.indexOf(expenditure[i-d]));
            trailing.add(expenditure[i]);
        }
        return notifications;
    }

    private static final Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) throws IOException {
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(System.getenv("OUTPUT_PATH")));

        String[] nd = scanner.nextLine().split(" ");

        int n = Integer.parseInt(nd[0]);

        int d = Integer.parseInt(nd[1]);

        int[] expenditure = new int[n];

        String[] expenditureItems = scanner.nextLine().split(" ");
        scanner.skip("(\r\n|[\n\r\u2028\u2029\u0085])?");

        for (int i = 0; i < n; i++) {
            int expenditureItem = Integer.parseInt(expenditureItems[i]);
            expenditure[i] = expenditureItem;
        }

        int result = activityNotifications(expenditure, d);

        bufferedWriter.write(String.valueOf(result));
        bufferedWriter.newLine();

        bufferedWriter.close();

        scanner.close();
    }
}
