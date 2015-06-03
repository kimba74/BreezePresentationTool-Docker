# reveal.js Docker Container
A Docker repository for the reveal.js presentation base container

* Base Image: kimba74/apache2
* Web-Server: Apache2
* Work Dir: /var/www
* Web Framework: Reveal.js 

The stock `reveal.js` release will be downloaded from GitHub and extracted in the `WORKDIR`. Afterwards the default `html` directory will be removed and the unpackaged
`reveal.js` will be renamed into `html` to have Apache2 serve it as default content.
