package in.nit.view;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsxView;

import in.nit.model.Uom;


public class UomExcelView extends AbstractXlsxView {
	

	@SuppressWarnings("unchecked")
	@Override
	protected void buildExcelDocument(Map<String, Object> model, Workbook workbook, HttpServletRequest req,
			HttpServletResponse resp) throws Exception {
		
		Sheet sheet;
		List<Uom> list;

		//file name 
		resp.addHeader("Content-Disposition", "attachment;filename=Uom.xlsx");
		
		//create Sheet
		sheet = workbook.createSheet("Uom");
		
		//Construct Row 0
		setHeader(sheet);
		
		//READ MODEL DATA
		list = (List<Uom>) model.get("list");
		setBody(sheet, list);
	}
	
	//set Header
		private void setHeader(Sheet s) {
			Row row;
			
			//create Row
			row = s.createRow(0);
			//set header row data
			row.createCell(0).setCellValue("ID");
			row.createCell(1).setCellValue("TYPE");
			row.createCell(2).setCellValue("MODEL");
			row.createCell(3).setCellValue("NOTE");
		}
	
	//set Body
	private void setBody(Sheet sheet, List<Uom> list) {
		int count = 1;
		Row row;
		
		for(Uom u:list) {
			//create Row
			row = sheet.createRow(count++);			
			row.createCell(0).setCellValue(u.getUid());
			row.createCell(1).setCellValue(u.getuType());
			row.createCell(2).setCellValue(u.getuModel());
			row.createCell(3).setCellValue(u.getuDesc());
		}
	}

	

}
