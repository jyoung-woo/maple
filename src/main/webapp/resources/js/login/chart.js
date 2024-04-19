class chart {
    constructor() {
       this.init();
    }
    init(){
        this.clickListener();
        this.selectBox1();
        this.lineChart();
        this.mixChart();
    }


    clickListener(){
        let count = 0;
        let count1 = 0;
        let count2 = 0;
        document.getElementById("bcBtn").addEventListener('click',()=>{
            count ++;
            if(count % 2 ===0){
                document.querySelector("#mychart1").style.display = "none";
            }else {
                document.querySelector("#mychart1").style.display = "block";
            }
        })
        document.getElementById("lineBtn").addEventListener('click',()=>{
            count1 ++;
            if(count1%2 ===0){
                document.querySelector("#lineChart1").style.display = 'none';
            }
            else{
                document.querySelector("#lineChart1").style.display = 'block';
            }
        })
        document.getElementById("mixBtn").addEventListener('click',()=>{
            count2 ++;
            if(count2 % 2 ===0){
                document.querySelector("#mixChart1").style.display = 'block';
            }else {
                document.querySelector("#mixChart1").style.display = 'none';
            }
        })

        document.getElementById("xButton1").addEventListener('click',()=>{
            document.querySelector("#mychart1").style.display = "none";
        })
        document.getElementById("xButton2").addEventListener('click',()=>{
            document.querySelector("#lineChart1").style.display = "none";
        })
        document.getElementById("xButton3").addEventListener('click',()=>{
            document.querySelector("mixChart1").style.display = "none";
        })

    }

    selectBox1() {
        axios.get("/selectBox1.do")
            .then((res)=>{
                let data = res.data.list;
                let select = document.querySelector(".select1");
                select.innerHTML = '';
                let html = '';
                for(let i=0; i<data.length; i++) {
                    html = document.createElement("option");
                    html.value = data[i].valueId;
                    html.innerHTML = data[i].valuename;
                    select.appendChild(html);
                }
                    this.barChart(data[0].valueId);
                select.addEventListener('change',()=>{
                    const valueId = select.value;
                    this.barChart(valueId);
                })
            })
    }

    mixChart = async () => {

        let salesArray = [];
        let netIncomeArray = [];
        let todayBenArray = [];
        let dateArray = [];
        let salesAvgArray = [];
        let todayAvgArray = [];
        await axios.get("/chart/mixChart.do")
            .then((res) => {
                let data = res.data.chart;
                for (let i = 0; i < data.length; i++) {
                    let salesData = data[i].salesPrice;
                    let netIncome = data[i].netIncome;
                    let todayBen = data[i].todayBenefic;
                    let date = data[i].date;
                    let salesAvg = salesData / netIncome;
                    let todayAvg = netIncome / todayBen;
                    salesArray.push(salesData);
                    netIncomeArray.push(netIncome);
                    todayBenArray.push(todayBen);
                    dateArray.push(date);
                    salesAvgArray.push(salesAvg);
                    todayAvgArray.push(todayAvg);

                }
            })


        const mixChart = document.querySelector("#mixChart").getContext('2d');
        new Chart(mixChart, {
            type: 'line',
            data: {
                labels: dateArray,
                datasets: [{
                    label: '총이득',
                    data: salesArray,
                    backgroundColor: 'rgba(16, 163, 127, 0.2)',
                    borderColor: 'rgba(16,163,127,1)',
                    borderWidth: 1,
                    yAxisID: 'y1',
                    type: 'bar'
                }, {
                    label: '다른이득',
                    data: netIncomeArray,
                    backgroundColor: 'rgba(0,0,128,0.2)',
                    borderColor: 'rgba(0,0,128,1)',
                    borderWidth: 1,
                    yAxisID: 'y1',
                    type: 'bar',
                }, {
                    label: '하루이득',
                    data: todayBenArray,
                    backgroundColor: 'rgba(255,99,132,0.2)',
                    borderColor: 'rgba(255,99,132,1)',
                    yAxisID: 'y1',
                    type: 'bar'
                }, {
                    label: '다른이득률',
                    data: salesAvgArray,
                    backgroundColor: 'rgba(255,223,0,0.2)',
                    borderColor: 'rgba(255,223,0,1)',
                    borderWidth: 2,
                    yAxisID: 'Y2',
                    type: 'line'
                }, {
                    label: '하루이득률',
                    data: todayAvgArray,
                    backgroundColor: 'rgba(135,206,250,0.2)',
                    borderColor: 'rgba(135,206,250,1)',
                    borderWidth: 2,
                    yAxisID: 'Y2',
                    type: 'line'
                }],
            },
            options: {
                plugins: {
                    zoom: {
                        zoom: {
                            wheel: {
                                enabled: true
                            },
                            pinch: {
                                enabled: true
                            },
                            mode: 'x'
                        }
                    }
                },
                scales: {
                    y1: {
                        position: 'left',
                        ticks: {
                            callback: function (value) {
                                return `${value.toLocaleString()}원`
                            }
                        }
                    },
                    Y2: {
                        beginAtZero: true,
                        position: 'right',
                        grid: {
                            drawOnChartArea: false,
                        },
                        ticks: {
                            callback: function (hello) {
                                return `${hello.toLocaleString()}%`
                            }
                        }
                    }
                }
            }
        });
    }
    barChart = async (valueId) => {
        if(this.myBarChart) {
            this.myBarChart.destroy();
        }
        const labels = [];
        const values = [];
        await axios.get("/selectAbility.do", {params: {valueId:valueId}})
            .then((res) => {
                let data = res.data.data;
                Object.keys(data).forEach(key => {
                    if (key.startsWith('value') && key !== 'valueId' && key !== 'valuename' ) {
                        labels.push(key);
                        values.push(data[key]);
                    }
                })

            });

        const ctx = document.getElementById("mychart").getContext('2d');

        this.myBarChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: labels,
                datasets: [{
                    label: '임시 데이터',
                    data: values,
                    backgroundColor: [
                        'rgba(255,99,132,0.2)',
                        'rgba(54,162,235,0.2)',
                        'rgba(255, 206, 86, 0.2)',
                        'rgba(75, 192, 192, 0.2)',
                        'rgba(153, 102, 255, 0.2)',
                        'rgba(255, 159, 64, 0.2)'
                    ],
                    borderColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)',
                        'rgba(75, 192, 192, 1)',
                        'rgba(153, 102, 255, 1)',
                        'rgba(255, 159, 64, 1)'
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                    plugins: {
                        zoom: {
                            zoom: {
                                wheel: {
                                    enable: true
                                },
                                pinch: {
                                    enabled: true
                                },
                                mode: 'xy',
                            }
                        }
                    },
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        })
    }

    lineChart = async () => {
        const labels = [];
        const values = [];
        await axios.get("/lineChart.do")
            .then((res) => {
                const data = res.data.list;
                data.forEach((item)=>{
                    if(item.usy){
                        labels.push(item.usy);
                        values.push(item.usyValue);
                    }
                })
            })

        const config = document.getElementById("lineChart").getContext('2d');
        new Chart(config, {
            type: 'line',
            data: {
                labels: labels,
                datasets: [{
                    data: values,
                    fill: false,
                    borderColor: 'rgb(75,192,192)',
                    tension: 0.1
                }]
            }
        });
    }


}

export default new chart();