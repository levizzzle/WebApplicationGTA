package com.example.webapplicationgta;

public class Application {
    String firstName, lastName, studentID, email, degreeLevel, graduateSemester, gpa, hoursAtUMKC, researchAdvisor,
    major, qualifiedCourses, domesticInternational, gtaCertified;

    public Application(String firstName, String lastName, String studentID, String email, String degreeLevel,
                       String graduateSemester, String gpa, String hoursAtUMKC, String researchAdvisor, String major,
                       String qualifiedCourses, String domesticInternational, String gtaCertified) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.studentID = studentID;
        this.email = email;
        this.degreeLevel = degreeLevel;
        this.graduateSemester = graduateSemester;
        this.gpa = gpa;
        this.hoursAtUMKC = hoursAtUMKC;
        this.researchAdvisor = researchAdvisor;
        this.major = major;
        this.qualifiedCourses = qualifiedCourses;
        this.domesticInternational = domesticInternational;
        this.gtaCertified = gtaCertified;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getStudentID() {
        return studentID;
    }

    public void setStudentID(String studentID) {
        this.studentID = studentID;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDegreeLevel() {
        return degreeLevel;
    }

    public void setDegreeLevel(String degreeLevel) {
        this.degreeLevel = degreeLevel;
    }

    public String getGraduateSemester() {
        return graduateSemester;
    }

    public void setGraduateSemester(String graduateSemester) {
        this.graduateSemester = graduateSemester;
    }

    public String getGpa() {
        return gpa;
    }

    public void setGpa(String gpa) {
        this.gpa = gpa;
    }

    public String getHoursAtUMKC() {
        return hoursAtUMKC;
    }

    public void setHoursAtUMKC(String hoursAtUMKC) {
        this.hoursAtUMKC = hoursAtUMKC;
    }

    public String getResearchAdvisor() {
        return researchAdvisor;
    }

    public void setResearchAdvisor(String researchAdvisor) {
        this.researchAdvisor = researchAdvisor;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getQualifiedCourses() {
        return qualifiedCourses;
    }

    public void setQualifiedCourses(String qualifiedCourses) {
        this.qualifiedCourses = qualifiedCourses;
    }

    public String getDomesticInternational() {
        return domesticInternational;
    }

    public void setDomesticInternational(String domesticInternational) {
        this.domesticInternational = domesticInternational;
    }

    public String getGtaCertified() {
        return gtaCertified;
    }

    public void setGtaCertified(String gtaCertified) {
        this.gtaCertified = gtaCertified;
    }

    @Override
    public String toString() {
        return "Application{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", studentID='" + studentID + '\'' +
                ", email='" + email + '\'' +
                ", degreeLevel='" + degreeLevel + '\'' +
                ", graduateSemester='" + graduateSemester + '\'' +
                ", gpa='" + gpa + '\'' +
                ", hoursAtUMKC='" + hoursAtUMKC + '\'' +
                ", researchAdvisor='" + researchAdvisor + '\'' +
                ", major='" + major + '\'' +
                ", qualifiedCourses='" + qualifiedCourses + '\'' +
                ", domesticInternational='" + domesticInternational + '\'' +
                ", gtaCertified='" + gtaCertified + '\'' +
                '}';
    }
}
