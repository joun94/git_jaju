package report.bean;

import java.util.Date;

import org.springframework.beans.factory.annotation.Value;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class ReportDTO {
	private int sale_seq = 1; //신고 글번호
	private String sale_id; //신고 아이디
	private int report_seq; //글번호
	private String report_id = "kim"; //아이디
	private String report_name = "호랑이"; //이름
	private String reportType; //신고 유형
	private String report_tal; //전화번호
	private String report_subject; //신고 제목
	private String report_content; //신고 내용
	private String report_image1;
	private String report_image2;
	private String report_image3;
	private String report_state = "처리중"; //처리 상태
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
	private Date logtime;
	
}
