const xValues = [1,2,3,4,5,6,7,8,9,10];

new Chart("myChart", {
  type: "line",
  data: {
    labels: xValues,
    datasets: [{ 
      label:"Temperatura",
      data: [29,16,16,16,17,11,13,21,30,24],
      borderColor: "red",
      fill: false
    }, { 
      label: "Humedad",
      data: [85,90,80,90,75,70,85,90,100,99],
      borderColor: "green",
      fill: false
    }]
  },
  options: {
    legend: {display: false}
  }
});