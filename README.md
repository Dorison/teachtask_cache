![Typing SVG](https://readme-typing-svg.herokuapp.com?color=%2336BCF7&lines=MultiStage+Dockerfile+and+Cache)
<br>
<h2>Task for optimizing CI-CD pipeline and docker image.</h2>
I have constructed a Dockerfile similar to yours.Here I used the ready-made official Dockerhub solution for image caching, which speeds up the compilation of images many times, there are many similar caching solutions. This should save a lot of build time. Also, for example, I optimized the image using popular practices(alpine,multistage).In your Dockerfile, you need to at least omit the steps that are most often used at the very bottom for the normal operation of the cache,I have provided an example in my Dockerfile.
