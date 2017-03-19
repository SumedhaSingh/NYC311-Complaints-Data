import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;


public class Split {

	public static void main(String args[])
	{
		try {
			BufferedReader br= new BufferedReader(new FileReader("D:/311_request_data/Pluto Data/BK.csv"));
			int splitnumber=1;
			FileWriter fw= new FileWriter("D:/311_request_data/Pluto Data/BK"+splitnumber+".csv");
			int linenumber=1;
			String str="";
			
			String header="";
			header= br.readLine();
			fw.write(header);
			fw.write("\n");
			fw.flush();
			while((str=br.readLine())!=null)
			{
				++linenumber;
				if(linenumber%100000==0)
				{
					
					++splitnumber;
					System.out.println("Creating file "+splitnumber);
					fw= new FileWriter("D:/311_request_data/Pluto Data/BK"+splitnumber+".csv");
					fw.write(header);
					fw.write("\n");
					fw.flush();
				}
				fw.write(str);
				fw.write("\n");
				fw.flush();
				
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
