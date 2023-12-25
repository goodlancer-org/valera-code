FROM python:3.11
COPY requirements.txt /tmp/
RUN pip install --quiet --no-cache-dir -r /tmp/requirements.txt

ENTRYPOINT ["solara", "run", "/home/solara-app/app.py", "--host=0.0.0.0", "--port=80"]