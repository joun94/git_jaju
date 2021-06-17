package notice.bean;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class NoticeDTO {
	private int seq;
	private String notice_subject; //제목
	private String notice_content ="안녕하세요"; //내용
	private String image0;
	private String image1;
	private String image2;
	private String image3;
	private String image4;
	private String image5;
	private String image6;
	private String image7;
	private String image8;
	private String image9;
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
	private Date sysdate;
	
}
