# Flask Examples in Docker. x86

- This repo will be public. 
- Make this demo with image or .docx processing tool as a use case?

# References

- https://flask.palletsprojects.com/en/1.1.x/

- https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-i-hello-world

- [Flask Login](https://flask-login.readthedocs.io/en/latest/)
- https://www.digitalocean.com/community/tutorials/how-to-add-authentication-to-your-app-with-flask-login
- https://realpython.com/introduction-to-flask-part-2-creating-a-login-page/
- https://github.com/shekhargulati/flask-login-example/blob/master/flask-login-example.py

```
$ docker build --tag mypython3flask:1.0 .
$ docker run --env PORT=8080 -p 127.0.0.1:8080:8080/tcp -v `pwd`:/app   --rm -it --name mypython3flask mypython3flask:1.0
```
~     
