package freeboard.bean;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class FreeboardDTO {
	private int board_seq;
	private String board_id;
	private String board_subject;
	private String board_content;
	private String image1;
	private String image2;
	private String image3;
	private int board_hit;
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy.MM.dd")
	private Date logtime;
	
}
