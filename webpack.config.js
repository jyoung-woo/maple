const path = require('path');
const fs = require("fs");
const appDir = fs.realpathSync(process.cwd());

module.exports = {
    entry: path.resolve(appDir, 'src/main/webapp/resources/js/login/chart.js'),
    output: {
        filename: 'chart.js', // 번들링된 파일의 이름
        path: path.resolve(appDir, './front','js'), // 번들링된 파일이 저장될 경로
    },
    module: {
        rules: [
            {
                test: /\.js$/, // .js 확장자를 가진 파일에 대해
                exclude: /node_modules/, // node_modules 디렉토리는 제외
                use: {
                    loader: 'babel-loader', // babel-loader를 사용하여 ES6+ 코드를 변환
                    options: {
                        presets: ['@babel/preset-env'],
                    },
                },
            },
        ],
    },
};
