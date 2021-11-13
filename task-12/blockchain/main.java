package blockchain;

import java.util.Arrays;

class main {
    public static void main(String[] args) {
        Transaction transaction1 = new Transaction("Aashray", "Hari", 100L);
        Transaction transaction2 = new Transaction("Hari", "Colly", 100L);
        Transaction transaction3 = new Transaction("Java", "Python", 10L);
        Transaction transaction4 = new Transaction("Rubi", "Rails", 1500L);

        Block firstBlock = new Block(0, Arrays.asList(transaction1, transaction2));
        System.out.println("block1");
        System.out.println(firstBlock.hashCode());
        Block secondBlock = new Block(firstBlock.hashCode(), Arrays.asList(transaction3));
        System.out.println(secondBlock.hashCode());
        Block thirdBlock = new Block(secondBlock.hashCode(), Arrays.asList(transaction4));
        System.out.println(thirdBlock.hashCode());
    }
}