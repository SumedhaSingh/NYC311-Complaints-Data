import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;


public class MakeWeatherData {

	
	public static void main(String args[])
	{
		try {
			BufferedReader br= new BufferedReader(new FileReader("D:/311_request_data/Weather Data/StatenIsland.csv"));
			FileWriter fw= new FileWriter("D:/311_request_data/Weather Data/StatenIsland1.csv");
			String header= br.readLine();
			header = "Borough,"+header;
			fw.write(header);
			fw.write("\n");
			fw.flush();
			String str="";
			while((str=br.readLine())!=null)
			{
				str= "STATEN ISLAND,"+str;
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
