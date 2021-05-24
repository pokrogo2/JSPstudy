package common;

public class ModelAndView {
	private String views;
	private boolean isRedirect;
	
	public ModelAndView() {}
	public ModelAndView(String views,boolean isRedirect) {
		this.views=views;
		this.isRedirect=isRedirect;
	}
	public String getViews() {
		return views;
	}
	public void setViews(String views) {
		this.views = views;
	}
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
	
}
