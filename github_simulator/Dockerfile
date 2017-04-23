FROM kevin_base

RUN pip install requests tornado

RUN mkdir /my-super-project
WORKDIR /my-super-project
COPY ./.kevin /my-super-project/
RUN git config --global user.email "your@mom.com" && \
    git config --global user.name "Your Mom"
RUN git init &&\
    echo "Super project indeed" > README && \
    git add README && \
    git add .kevin && \
    git commit -m "Initial Commit"

RUN apt install strace

#ENTRYPOINT ["strace", "python3", "-m", "kevin.simulator", "-d", "-vvvvvvvvvvvvvvvvvvvv"]
ENTRYPOINT ["python3", "-m", "kevin.simulator", "-d", "-vvvvvvvvvvvvvvvvvvvv"]

