FROM python:3
ADD main.py /
RUN pip install flask
RUN pip install flask_restful
RUN pip install requests
RUN pip install hdbcli
EXPOSE 5000
CMD [ "python", "./main.py"]

