
package in.nit.util;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtils;
import org.jfree.chart.JFreeChart;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;
import org.springframework.stereotype.Component;

@Component
public class UomUtil {
	
	//Pie Chart
	public void generatePie(String path, List<Object[]> data) {
		//1. Create dataset
		DefaultPieDataset dataset = new DefaultPieDataset();
		for(Object[] arr:data) {
			//key = Shipment Mode, Value = Count
			dataset.setValue(arr[0].toString(), Double.valueOf(arr[1].toString()));
		}
		
		//2. Create JFree Chart using Chart factory
		JFreeChart chart = ChartFactory.createPieChart("Uom Types", dataset, true, true, false);

		//3. Save Chart as image by ChartUtils
		try {
			ChartUtils.saveChartAsJPEG(new File(path+"/resources/charts/UomTypesPie.jpg"), chart, 500, 400);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
	//Bar Chart
	public void generateBar(String path, List<Object[]> data) {
		//1. create Dataset
		DefaultCategoryDataset dataset = new DefaultCategoryDataset();
		for(Object[] arr: data) {
			dataset.setValue(Double.valueOf(arr[1].toString()), arr[0].toString(), "");
		}
		
		//2. create JFree chart using Chart Factory
		JFreeChart chart = ChartFactory.createBarChart("Uom Types", "Type", "Count", dataset);
		
		//3. Savem Chart as Jpeg/png image using Cahrt Utils 
		try {
			ChartUtils.saveChartAsJPEG(new File(path+"/resources/charts/UomTypesBar.jpg"), chart, 400, 400);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
}
