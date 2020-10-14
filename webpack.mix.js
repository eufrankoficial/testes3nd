const mix = require('laravel-mix');


const basePath = 'public/assets/';
const assets = __dirname + '/resources/assets/';

mix.styles([
		assets + 'css/bootstrap.min.css',
        assets + 'css/default.css',
    ],
    basePath + 'css/default.min.css'
);

mix.scripts([
		assets + 'js/jquery.min.js',
		assets + 'js/vue.min.js',
		assets + 'js/bootstrap.min.js',
        assets + 'js/default.js',
    ],
    basePath + 'js/default.min.js'
);
