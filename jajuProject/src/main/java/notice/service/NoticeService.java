package notice.service;

import java.util.List;
import java.util.Map;

import notice.bean.NoticeDTO;
import notice.bean.NoticePaging;

public interface NoticeService {

	List<NoticeDTO> getNoticeList(String pg);

	List<NoticeDTO> getNoticeSearchList(Map<String, String> map);

	NoticePaging noticePaging(String pg);
	NoticePaging noticePaging(Map<String, String> map);

}
