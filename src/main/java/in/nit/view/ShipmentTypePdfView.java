package in.nit.view;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.view.document.AbstractPdfView;

import com.lowagie.text.Document;
import com.lowagie.text.Paragraph;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfWriter;

import in.nit.model.ShipmentType;

public class ShipmentTypePdfView extends AbstractPdfView {

	@SuppressWarnings("unchecked")
	@Override
	protected void buildPdfDocument(Map<String, Object> model, Document document, PdfWriter writer,
			HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		//set Download option
		resp.addHeader("Content-Disposition", "attachment;filename=shipment.pdf");
		
		Paragraph p = new Paragraph("Welcome to Shipment Type");
		
		document.addTitle("ShipmentType");
		document.add(p);
		
		//read from Model
		List<ShipmentType> list = (List<ShipmentType>) model.get("list");
		
		//creating table with no.of columns
		PdfPTable t = new PdfPTable(6);
		t.addCell("ID");
		t.addCell("MODE");
		t.addCell("CODE");
		t.addCell("ENABLE");
		t.addCell("GRADE");
		t.addCell("NOTE");
		
		//adding data to table
		for (ShipmentType st:list) {
			t.addCell(st.getShipId().toString());
			t.addCell(st.getShipMode());
			t.addCell(st.getShipCode());
			t.addCell(st.getEnabShip());
			t.addCell(st.getShipGrade());
			t.addCell(st.getShipDesc());
		}
		
		document.add(t);
		
		document.add(new Paragraph(new Date().toString()));
		
	}

}
