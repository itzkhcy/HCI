/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author kaver
 */
public class holdData {
    public String courseName;
    public String courseNumber;
    public String courseSection;
    public String dueDate;
    public String dueTime;
    public String grade;
    public int courseId;
    public String cndate;
    public String cntime;
    public String emotion;
    

    

    public void holdData(String courseName, String courseNumber, String courseSection, String dueDate, String dueTime, String grade,int courseId,String cndate, String cntime,String emotion){
        this.courseName=courseName;
        this.courseNumber=courseNumber;
        this.courseSection=courseSection;
        this.dueDate=dueDate;
        this.dueTime=dueTime;
        this.grade=grade;
        this.courseId=courseId;
        this.cndate=cndate;
        this.cntime=cntime;
        this.emotion=emotion;
    }

    public int getCourseId() {
        return courseId;
    }

    public void setCourseId(int courseId) {
        this.courseId = courseId;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getCourseNumber() {
        return courseNumber;
    }

    public void setCourseNumber(String courseNumber) {
        this.courseNumber = courseNumber;
    }

    public String getCourseSection() {
        return courseSection;
    }

    public void setCourseSection(String courseSection) {
        this.courseSection = courseSection;
    }

    public String getDueDate() {
        return dueDate;
    }

    public void setDueDate(String dueDate) {
        this.dueDate = dueDate;
    }

    public String getDueTime() {
        return dueTime;
    }

    public void setDueTime(String dueTime) {
        this.dueTime = dueTime;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }
    
    public String getCndate() {
        return cndate;
    }

    public void setCndate(String cndate) {
        this.cndate = cndate;
    }

    public String getCntime() {
        return cntime;
    }

    public void setCntime(String cntime) {
        this.cntime = cntime;
    }

    public String getEmotion() {
        return emotion;
    }

    public void setEmotion(String emotion) {
        this.emotion = emotion;
    }
    
}
