package a;

import Entity.Blog;

import java.util.List;

public class Page {
    private int totalPageCount=0;//
    private int pageSize=10;//
    private int totalCount;//
    private int currPageNo=1;//
    private List<Blog> blogs;

    public int getTotalPageCount() {
        return totalPageCount;
    }

    public void setTotalPageCount(int totalPageCount) {
        this.totalPageCount=totalPageCount;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        if (pageSize>0){
            this.pageSize = pageSize;
        }
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        if (totalCount>0){
            this.totalCount = totalCount;
            if (this.totalPageCount % pageSize == 0){
                totalPageCount=this.totalCount/pageSize;
            }else {
                totalPageCount=this.totalCount/pageSize+1;
            }
        }

    }

    public int getCurrPageNo() {
        if (totalPageCount==0){
            return 0;
        }
        return currPageNo;
    }

    public void setCurrPageNo(int currPageNo) {
        if (currPageNo>0){
            this.currPageNo = currPageNo;
        }
    }

    public List<Blog> getBlogs() {
        return blogs;
    }

    public void setBlogs(List<Blog> blogs) {
        this.blogs = blogs;
    }
}
