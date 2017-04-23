FROM kevin_base

RUN pip install requests tornado
COPY ./ssh_config /root/.ssh/config

ENTRYPOINT ["python3", "-m", "kevin", "-d", "-vvvvvvvvvvvv"]

