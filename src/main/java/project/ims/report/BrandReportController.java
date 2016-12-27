package project.ims.report;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.util.JRLoader;

@SuppressWarnings("unused")
@Controller
public class BrandReportController {

	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	boolean flag = false;
	Statement stmt;

	public Connection getConnection() throws SQLException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory", "root", "");

			System.out.println(con);

		} catch (Exception e) {
			e.getMessage();
		}
		return con;
	}

	@RequestMapping(value = "/brandinsert", method = RequestMethod.GET)
	public void multipleInsert() {
		try {
			for (int i = 0; i < 4000; i++) {
				System.out.println("for loop insert method reached");
				String sql = "INSERT INTO brand (brand_name) VALUES (?)";
				Connection connect = getConnection();
				pstmt = (PreparedStatement) connect.prepareStatement(sql);
				//pstmt.setInt(1, i);
				pstmt.setString(1, "lenovo " + i);
				if (pstmt.executeUpdate() == 1) {
					System.out.println("record inserted " +i);
				}
			}

		} catch (Exception e) {
			e.getMessage();
		}
	}

	@RequestMapping(value = "/brandreport", method = RequestMethod.GET)
	public void generateReport(HttpServletResponse response, HttpServletRequest request)
			throws JRException, IOException, SQLException {

		String jrxmlFile = request.getServletContext().getRealPath("/public/report/Brand.jrxml");

		System.out.println("full path is " + jrxmlFile);
		InputStream input = new FileInputStream(new File(jrxmlFile));
		JasperReport jasperreport = JasperCompileManager.compileReport(input);

		JasperPrint jasperPrint = JasperFillManager.fillReport(jasperreport, null, getConnection());

		response.setContentType("application/x-pdf");
		response.setHeader("Content-disposition", "inline; filename=brand.pdf");

		ServletOutputStream outStream = response.getOutputStream();
		outStream.print("the report generation of brand controller");
		JasperExportManager.exportReportToPdfStream(jasperPrint, outStream);
		response.getOutputStream().flush();
		response.getOutputStream().close();
	}
}
