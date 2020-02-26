package in.nit.view;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsxView;

import in.nit.model.ShipmentType;


public class ShipmentTypeExcelView extends AbstractXlsxView {
	

	@SuppressWarnings("unchecked")
	@Override
	protected void buildExcelDocument(Map<String, Object> model, Workbook workbook, HttpServletRequest req,
			HttpServletResponse resp) throws Exception {
		
		Sheet sheet;
		List<ShipmentType> list;

		//file name 
		resp.addHeader("Content-Disposition", "attachment;filename=Shipment.xlsx");
		
		//create Sheet
		sheet = workbook.createSheet("Shipment Types");
		
		//Construct Row 0
		setHeader(sheet);
		
		//READ MODEL DATA
		list = (List<ShipmentType>) model.get("list");
		setBody(sheet, list);
	}
	
	//set Header
		private void setHeader(Sheet s) {
			Row row;
			
			//create Row
			row = s.createRow(0);
			//set header row data
			row.createCell(0).setCellValue("ID");
			row.createCell(1).setCellValue("MODE");
			row.createCell(2).setCellValue("CODE");
			row.createCell(3).setCellValue("ENABLE");
			row.createCell(4).setCellValue("GRADE");
			row.createCell(5).setCellValue("NOTE");
		}
	
	//set Body
	private void setBody(Sheet sheet, List<ShipmentType> list) {
		int count = 1;
		Row row;
		
		for(ShipmentType st:list) {
			//create Row
			row = sheet.createRow(count++);			
			row.createCell(0).setCellValue(st.getShipId());
			row.createCell(1).setCellValue(st.getShipMode());
			row.createCell(2).setCellValue(st.getShipCode());
			row.createCell(3).setCellValue(st.getEnabShip());
			row.createCell(4).setCellValue(st.getShipGrade());
			row.createCell(5).setCellValue(st.getShipDesc());
		}
	}

	

}
