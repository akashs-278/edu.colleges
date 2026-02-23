class _6_maxminarr {
    public static void main(String [] args){
        int numbers[] = {45,78,12,89,34,90};
        int max = numbers[0];
        int min = numbers[0];

        System.out.println("Elements of an aaray :");
        for (int i = 0; i < numbers.length; i++) {
            System.out.println(numbers[i]);
            if(numbers[i]>max){
                max=numbers[i];
            }
            if (numbers[i]<min) {
                min=numbers[i];
            }
        }
        System.out.println("\nMaximun element in the array : "+max);
        System.out.println("\nMinimun element in the array : "+min);
    }
}