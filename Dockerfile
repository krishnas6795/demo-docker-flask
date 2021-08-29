# Defining the base Image.
FROM python:3.9.6-alpine

# Defining the work directory inside the image.
WORKDIR /app

# Copying the requirements.txt
COPY ./requirements.txt /app

# Installing the packages from requirements.txt
RUN pip --no-cache-dir install -r requirements.txt

# Copying all the files from the local system to the work directory.
COPY ./src /app

# Exposing the application on a specific port.
EXPOSE 5000

# Creating the entrypoint.
ENTRYPOINT ["python"]

# Creating the Executable for the container
CMD ["app.py"]