package application.model.viewmodel.common;

public class ChartDataVM {

    private String label;
    private Double value;

    public ChartDataVM() {
    }

    public ChartDataVM(String label, Long value) {
        this.label = label;
        this.value = Double.valueOf(value);
    }

    public ChartDataVM(Integer label, Double value) {
        this.label = "Tháng " + label.toString();
        this.value = value;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public Double getValue() {
        return value;
    }

    public void setValue(Double value) {
        this.value = value;
    }
}
