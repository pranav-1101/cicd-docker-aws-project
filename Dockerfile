FROM python:3.9-slim 
 
WORKDIR /app 
 
COPY requirements.txt . 
RUN pip install -r requirements.txt 
 
COPY . . 
 
CMD ["python", "app.py"] 

#- FROM: base image - WORKDIR: inside container - COPY: moves files into container - RUN: installs dependencies - CMD: starts the app
