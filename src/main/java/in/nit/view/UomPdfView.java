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

import in.nit.model.Uom;

public class UomPdfView extends AbstractPdfView {

	@SuppressWarnings("unchecked")
	@Override
	public void buildPdfDocument(Map<String, Object> model, Document document, PdfWriter writer,
			HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		//set Download option
		resp.addHeader("Content-Disposition", "attachment;filename=Uom.pdf");
		
		Paragraph p = new Paragraph("Welcome to Uom");
		
		//document.addTitle("ShipmentType");
		document.add(p);
		
		//read from Model
		List<Uom> list =  (List<Uom>) model.get("list");
		
		//creating table with no.of columns
		PdfPTable t = new PdfPTable(4);
		t.addCell("ID");
		t.addCell("TYPE");
		t.addCell("MODEL");
		t.addCell("NOTE");
		
		//adding data to table
		for (Uom u:list) {
			t.addCell(u.getUid().toString());
			t.addCell(u.getuType());
			t.addCell(u.getuModel());
			t.addCell(u.getuDesc());
		}
		
		document.add(t);
		
		document.add(new Paragraph(new Date().toString()));
		
	}

}
