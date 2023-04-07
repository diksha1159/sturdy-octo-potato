# Set the base image
FROM python:3.8-slim-buster

# Copy the code to the container
COPY . /app
WORKDIR /app

# Install dependencies
RUN pip install --upgrade pip
RUN pip install opencv-python-headless pyautogui mediapipe

# Set the default command to run when the container starts
CMD ["python", "eye_controlled_mouse.py"]

# """

# #got this error about not hvaing this lib while building the docker image so here we are.....
# RUN apt-get update && \
#     apt-get install -y libgl1-mesa-glx

# #urghhhhh another error
# RUN apt-get update && \
#     apt-get install -y libglib2.0-0

# #and another one

# # Set the environment variable
# ENV DISPLAY=:0

# """