# Flask Examples in Docker. x86

- This repo will be public. 
- Make this demo with image or .docx processing tool as a use case?

# References

https://flask.palletsprojects.com/en/1.1.x/


```
$ docker build --tag mypython3flask:1.0 .
$ docker run --env PORT=8080 -p 127.0.0.1:8080:8080/tcp -v `pwd`:/app   --rm -it --name mypython3flask mypython3flask:1.0
```
~     
