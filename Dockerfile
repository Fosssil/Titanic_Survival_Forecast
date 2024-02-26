FROM fedora:latest
# LABEL Author="fossil"
# RUN yum update -y
RUN yum install python3 python3-pip git -y
RUN git clone https://github.com/Fosssil/Titanic_Survival_Forecast.git
RUN cd Titanic_Survival_Forecast
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]
