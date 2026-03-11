class _2_null_pointer_exception {
    public static void main(String[] args) {
        String str=null;
        try {
            System.out.println(str.length());
        } catch (NullPointerException e) {
            System.out.println("Null Pointer Exception caught");
        }
    }
}
