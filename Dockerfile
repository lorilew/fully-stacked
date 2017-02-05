FROM python:3.5

ENV PYTHONUNBUFFERED 1

RUN mkdir /fullystacked/

ADD . /fullystacked/

WORKDIR /fullystacked

ADD requirements /code/requirements

RUN pip install -r requirements/production.txt

CMD ['./manage.py', 'migrate', '--settings=fullystacked.settings.production']
CMD ["./manage.py", "runserver", "0.0.0.0:8000", "--settings=fullystacked.settings.production"]
