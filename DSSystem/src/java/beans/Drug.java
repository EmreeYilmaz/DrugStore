package beans;



public class Drug {

    private String date;
    private String prescriptionID;
    private String drugName;
    private String type;

    public void setType(String type) {
        this.type = type;
    }

    public String getType() {
        return type;
    }
    

    public String getDate() {
        return date;
    }

    public void setDate(String userID) {
        this.date = userID;
    }

    public String getPrescriptionID() {
        return prescriptionID;
    }

    public void setPrescriptionID(String prescriptionID) {
        this.prescriptionID = prescriptionID;
    }

    public String getDrugName() {
        return drugName;
    }

    public void setDrugName(String drugName) {
        this.drugName = drugName;
    }


}