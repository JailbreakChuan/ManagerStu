package bean;

public class Student {

        public Integer Sid;
        public String Sname;
        public Integer Cid ;
        public Integer Sclass;
        public String Scollege;
        public Integer Sage;
        public String Saddress;
    private String cname;
    private int score;
//        public Integer score;
//        public String Cname;

    @Override
//    public String toString(); 这个函数能主动调用 toString 库函数，用toString函数产生的字符串来输出要输出的东西.
    public String toString() {
        return "Student{" +
                "Sid=" + Sid +
                ", Sname='" + Sname + '\'' +
                ", Cid=" + Cid +
                ", Sclass=" + Sclass +
                ", Scollege='" + Scollege + '\'' +
                ", Sage=" + Sage +
                ", Saddress='" + Saddress + '\'' +
//                ", score=" + score +
//                ", Cname='" + Cname + '\'' +
                '}';
    }

    public Integer getSid() {
        return Sid;
    }

    public void setSid(Integer sid) {
        Sid = sid;
    }

    public String getSname() {
        return Sname;
    }

    public void setSname(String sname) {
        Sname = sname;
    }

    public Integer getCid() {
        return Cid;
    }

    public void setCid(Integer cid) {
        Cid = cid;
    }

    public Integer getSclass() {
        return Sclass;
    }

    public void setSclass(Integer sclass) {
        Sclass = sclass;
    }

    public String getScollege() {
        return Scollege;
    }

    public void setScollege(String scollege) {
        Scollege = scollege;
    }

    public Integer getSage() {
        return Sage;
    }

    public void setSage(Integer sage) {
        Sage = sage;
    }

    public String getSaddress() {
        return Saddress;
    }

    public void setSaddress(String saddress) {
        Saddress = saddress;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public String getCname() {
        return cname;
    }

    public int getScore() {
        return score;
    }

//    public Integer getScore() {
//        return score;
//    }
//
//    public void setScore(Integer score) {
//        this.score = score;
//    }
//
//    public String getCname() {
//        return Cname;
//    }
//
//    public void setCname(String cname) {
//        Cname = cname;
//    }
}

