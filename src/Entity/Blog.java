package Entity;

import java.io.Serializable;

public class Blog implements Serializable {
    private int id;
    private int uid;
    private String content;
    private String images;
    private String time;
    private int state;
    private int fromBid;
    private User user = new User();
    private Blog origin;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Blog getOrigin() {
        return origin;
    }

    public void setOrigin(Blog origin) {
        this.origin = origin;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public int getFromBid() {
        return fromBid;
    }

    public void setFromBid(int fromBid) {
        this.fromBid = fromBid;
    }
}
