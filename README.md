# Docker image for help

This image is for help a used cluster by rancher or other orchestral tools.
The docker container is builded with Image base, **ubuntu** latest

#### Instaled Tools
* ***MongoDB Latest***
* ***Redis Latest***
* ***Git***
* ***Curl***
* ***Vim***
* ***Wget***
* ***Iodine***
* ***Screen***
* ***OpenSSL***
* ***dnsutils***

#### Create image.
```sh
sudo docker build -t inviron/docker-container-help:latest .
```

#### Running up
```sh
sudo docker run -d --name=ubuntu-image-help -t inviron/docker-container-help:latest
```

#### Execute shell
```sh
sudo docker exec -it ubuntu-image-help /bin/bash
```

### License 

The MIT License (MIT)

Copyright (c) 2017 THIAGO ZILLI SARMENTO

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
