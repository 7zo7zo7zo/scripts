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
    public int darken(int value, int amount) {
        int red = (value >> 16) & 0xFF;
        int green = (value >> 8) & 0xFF;
        int blue = (value) & 0xFF;

        red -= amount;
        green -= amount;
        blue -= amount;

        if(red < 0) red = 0;
        if(red > 255) red = 255;
        if(green < 0) green = 0;
        if(green > 255) green = 255;
        if(blue < 0) blue = 0;
        if(blue > 255) blue = 255;

        return (red << 16) + (green << 8) + blue;
    }
}
