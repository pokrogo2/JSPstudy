package common;

public class ModelAndView {
	private String view;
	private boolean isRedirect;
	
	public ModelAndView() {
		
	}

	public ModelAndView(String view, boolean isRedirect) {
		super();
		this.view = view; //jsp파일명
		this.isRedirect = isRedirect; //이동방식
	}

	public String getView() {
		return view;
	}

	public void setView(String view) {
		this.view = view;
	}

	public boolean isRedirect() {
		return isRedirect;
	}

	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
	
	
}

