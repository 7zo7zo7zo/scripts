public class RandomMethods {

    public static void print2DArray(int[][] array) {
        for (int i = 0; i < array.length; i++) {
            for (int j = 0; j < array[0].length; j++) {
                System.out.print(array[i][j] + " ");
            }
            System.out.println();
        }
    }

    public static int[][] multiply2DArray(int[][] array, int size) {
        int[][] newArray = new int[size * array.length][size * array[0].length];
        for (int i = 0; i < array.length; i++) {
            for (int j = 0; j < array[0].length; j++) {
                for (int k = 0; k < size; k++) {
                    for (int f = 0; f < size; f++) {
                        newArray[(size * i) + k][(size * j) + f] = array[i][j];
                    }
                }
            }
        }
        return newArray;
    }
}
