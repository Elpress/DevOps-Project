FROM python:3.6-alpine
LABEL maintainer="Elvis BALO" email="elvisbalo9@gmail.com"
WORKDIR /opt
COPY . /opt/
RUN pip install flask==1.1.2
EXPOSE 8080
ENV ODOO_URL="https://www.odoo.com"
ENV PGADMIN_URL="https://www.pgadmin.org"
ENTRYPOINT ["python"]
CMD ["app.py"]