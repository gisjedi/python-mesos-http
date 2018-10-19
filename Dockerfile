FROM python:2

COPY requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt 

COPY . /tmp

RUN cp /tmp/sample/test.py /test.py \
	&& cd /tmp \
	&& python setup.py install

CMD ["python", "/test.py"]
