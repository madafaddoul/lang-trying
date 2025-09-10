import java.util.Arrays;

public class SimpleStats {
    public static void main(String[] args) {
        int[] nums = {1,2,3,4};

        System.out.println("Numbers: " + Arrays.toString(nums));

        int sum = 0, min = nums[0], max = nums[0];
        for (int n : nums) {
            sum += n;
            if (n < min) min = n;
            if (n > max) max = n;
        }
        double avg = sum / (double) nums.length;

        int[] sorted = nums.clone();
        Arrays.sort(sorted);

        System.out.println("Sum = " + sum);
        System.out.println("Average = " + String.format("%.2f", avg));
        System.out.println("Min = " + min);
        System.out.println("Max = " + max);
        System.out.println("Sorted = " + Arrays.toString(sorted));
    }
}
