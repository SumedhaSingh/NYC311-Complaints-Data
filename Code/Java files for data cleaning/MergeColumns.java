import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class MergeColumns {

	public static void main(String args[]) {
		try {
			BufferedReader br = new BufferedReader(
					new FileReader(
							"D:/311_request_data/DataCleaning/311_Service_Requests_2014_Cleanup2.csv"));
			int splitnumber = 1;
			FileWriter fw = new FileWriter(
					"D:/311_request_data/File_Splits/311_Service_Requests_2014_Merged"+ ".csv");
			
			String str = "";

			String header = "";
			header = br.readLine();
			String headerSplit[] = header.split(",");
			headerSplit[10] = "Full Address";
			int i = 11;
			for (i = 11; i < headerSplit.length - 4; i++) {
				headerSplit[i] = headerSplit[i + 4];
			}
			while (i < headerSplit.length) {
				headerSplit[i] = null;
			}
			header = String.join(",", headerSplit);
			fw.write(header);
			fw.write("\n");
			fw.flush();
			while ((str = br.readLine()) != null) {
				

				String split[] = str.split(",");
				split[10] = (split[10].equalsIgnoreCase("NULL") ? ""
						: split[10] + " ")
						+ (split[11].contains("NULL") ? "" : split[11]
								+ " ")
						+ (split[12].contains("NULL") ? "" : split[12]
								+ " ")
						+ (split[13].contains("NULL") ? "" : split[13]
								+ " ")
						+ (split[14].contains("NULL") ? "" : split[14]);
				split[11] = split[12] = split[13] = split[14] = "";
				i = 11;
				for (i = 11; i < split.length - 4; i++) {
					split[i] = split[i + 4];
				}
				while (i < split.length) {
					split[i] = null;
				}
				str = String.join(",", split);
				

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
