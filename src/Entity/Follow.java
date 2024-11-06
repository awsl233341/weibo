package Entity;

import java.io.Serializable;

public class Follow implements Serializable {
    private int id;
    private int uid;
    private int followerUid;

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

    public int getFollowerUid() {
        return followerUid;
    }

    public void setFollowerUid(int followerUid) {
        this.followerUid = followerUid;
    }
}
