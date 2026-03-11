class _1_negative_index_of_array{
    public static void main(String[] args) {
        try {
            int number[] = new int[-2];
        } catch (NegativeArraySizeException e) {
            System.out.println("Negative Array Size Exception caught! Array size can't be negative.");
        }
    }
}