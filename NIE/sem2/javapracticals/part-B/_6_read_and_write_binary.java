import java.io.*;
public class _6_read_and_write_binary
{
public static void main(String args[]) throws IOException
{
try
{
String data="Read and Write data to the File";
FileOutputStream fileOut = new FileOutputStream("demo.txt");
FileInputStream fileIn = new FileInputStream("demo.txt");
fileOut.write(data.getBytes());
int data1;
while ((data1 = fileIn.read()) != -1)
{
System.out.print((char)data1);
}
}
catch(FileNotFoundException e)
{
System.out.println("Check File Exists");
}
}
}