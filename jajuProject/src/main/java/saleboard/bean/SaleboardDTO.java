package saleboard.bean;

import java.util.Date;

import lombok.Data;

@Data
public class SaleboardDTO {
	private String sale_subject;
	private String sale_category;
	private String sale_content;
	private String sale_condition;
	private String sale_image1;
	private String sale_image2;
	private String sale_image3;
	private String sale_image4;
	private String sale_image5;
	private String sale_image6;
	private String sale_image7;
	private String sale_image8;
	private String sale_image9;
	private String sale_image10;
	private int sale_price;
	private String sale_nego;
	private String sale_direct;
	private String sale_delivery;
	private String sale_onlineTran;
	private String member_id;
	private String sale_state;
	private int sale_hit;
	private int sale_seq;
	private Date sale_date;
	private String sale_hide;
	private String sale_buyer;
}
