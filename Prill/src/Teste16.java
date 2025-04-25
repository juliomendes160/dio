public class Teste16 {

    public void main(String[] args) {
        int[] numeros = {5, 8, 3, 9, 1, 6};
        int menor = getSmallest(numeros);
        System.out.println("O menor número é: " + menor);
    }

    public int getSmallest(int[] numbers) {
        int result = numbers[0];
        for (int i = 0; i < numbers.length; i++) {
            for (int j = i + 1; j < numbers.length; j++) {
                if (numbers[j] < result) {
                    result = numbers[j];
                }
            }
        }
        return result;
    }
}
