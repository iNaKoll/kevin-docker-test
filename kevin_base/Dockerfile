from python:3.6

RUN apt-get update && apt-get install -y \
    openssh-server \
    git \
    sudo

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
RUN mkdir /var/run/sshd && chmod 0755 /var/run/sshd

COPY ./src /kevin
#RUN git clone https://github.com/SFTtech/kevin.git
WORKDIR /kevin
RUN python /kevin/setup.py install
RUN pip install docker
