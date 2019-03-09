# Agriprima Theme for OJS 2.4.8-4

*Curenly in Pre-Release Version*

Responsive & modern theme Untuk OJS Ver.2.4.8-4, Theme ini dibuat dan digunakan untuk [Agriprima, Journal of Applied Agricultural Sciences](https://agriprima.polije.ac.id), [Politeknik Negeri Jember](https://www.polije.ac.id). Theme ini juga dapat didistribusikan / digunakan secara gratis dibawah lisensi [GNU General Public License](https://github.com/pkp/ojs/blob/master/docs/COPYING) oleh pengguna / pengelola jurnal lainnya, tanpa **GARANSI** dari kami.

## How to Install

Berikut cara instalasi Theme Agriprima:
1. Download release [`V.1.0.0-Pre`](https://github.com/JPPPOLIJE/agriprima/releases/tag/V.1.0.0-Pre)
2. Extrak file .zip / .tar.gz 
3. Rename folder utama menjadi **`agriprima`**
4. Upload folder ke **`plugins/theme`** (direktori instalasi OJS anda)

## How to Change Color Scheme  

Anda dapat merubah warna theme sesuai selera anda melalui edit file **`agriprima/css/screen.css`**, berikut contoh skema (code) warna:

```
/* Main Link Colors */
a:link {
	color: #0D7F54;
}
a:visited {
	color: #0D7F54;
}
a:hover, a:focus {
	color: #006A42;
}
a:active {
	color: #FEC010;
}

/*Top Nav Link Colors */
nav a:link {
	color: white;
}
nav a:visited {
	color: white;
}
nav a:hover, nav a:focus { 
	color: #FEC010;
} 
nav a:active {
	color: #FEC010;
}

/* Footer Link Colors */
#pageFooter a:hover, #pageFooter a:focus {
	color: #006A42;
}
#pageFooter a:active { 
	color: #FEC010;
}

/* Button Colors */
.button, .action, .options, .toggleExtras-inactive, .toggleExtras-active, .largeButton a {
	background-color: #0D7F54;
	border-color: #006A42;
}
.button:hover, .action:hover, .options:hover, .toggleExtras-inactive:hover, .toggleExtras-active:hover, .largeButton a:hover,
.button:focus, .action:focus, .options:focus, .toggleExtras-inactive:focus, .toggleExtras-active:focus, .largeButton a:focus,
.button:active, .action:active, .options:active, .toggleExtras-inactive:active, .toggleExtras-active:active, .largeButton a:active {
	background-color: #4DB080;
	color: white;
}
```
## Contact Support For Installation and Customize

**Afif Sugi Hendrianto** [(afif_sugi@polije.ac.id)](mailto:afif_sugi@polije.ac.id)\
[Jurusan Produksi Pertanian](https://jpp.polije.ac.id) | [Politeknik Negeri Jember](https://www.polije.ac.id)
