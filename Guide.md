# How to use Guide

##### Pre-requisite:

* any IDE which supports python

  (we used vscode & Pycharm)
* admin permissions

#### Let's get started

##### step 1

clone the project repo

##### step 2

Run the code file "main.py" and you will see the program does rest of your work

### working

As soon as we run the program it begins working on it's own, It will first switch on the webcam attached to your device and then start face detection a small window will open which will further detect your iris movement and then it cordinates your mouse movements with your eye movement

![image](https://user-images.githubusercontent.com/76660222/209459228-402c1fd3-9aae-43de-a460-4b45e54f581c.png)

![image](https://user-images.githubusercontent.com/76660222/209459236-7a1cbe17-1fef-4afb-8938-12b18decdc39.png)
Fig. system architecture

![image](https://user-images.githubusercontent.com/76660222/209459237-665d217e-9f95-444a-b3b4-561e69250898.png)


---
#### Now for those who can't get the code running by the first method, here's another one:-

This code can also be run using a Python interpreter. Here's a step-by-step guide on how to run the code:

Install the required libraries: OpenCV (cv2), mediapipe, and PyAutoGUI. You can install them using pip by running the following command:

```
pip install opencv-python-headless
pip install mediapipe
pip install PyAutoGUI
```
Create a new file with a .py extension (e.g., eye_controlled_mouse.py) and paste the code(main.py) into it.

Open a terminal or command prompt and navigate to the directory where you saved the file.

Run the code by typing the following command:

```
python eye_controlled_mouse.py
```

The code will start running and open a window showing the video from your webcam. The video will be processed to detect facial landmarks, and the mouse pointer will be controlled based on the position of your eyes. If the code detects that you're closing your left eye, it will simulate a mouse click.

#### Terminating the program

To stop the code, you can press the "q" key in the "Eye Controlled Mouse" window. The code uses the cv2.waitKey(1) function, which waits for a keyboard event. If the value returned by cv2.waitKey(1) is equal to ord("q"), the code breaks out of the while loop and stops executing. 

---

#### Testing

Generating unit tests for this code would require a comprehensive testing framework that can simulate a camera feed, face detection and landmark detection, mouse movements and clicks.

I have used this as an example of a basic unit test using the unittest framework in Python stpred in the testing-scripts.md file
This code creates two test cases, one to test mouse movement and another to test mouse clicks.
Note: this is just a basic example and you may need to add more tests and assertions depending on your specific requirements but for me, this works just fine.

now to execute this testing script code:
To use the testing script code, you will need to have Python 3 installed along with the OpenCV, MediaPipe, and PyAutoGUI libraries. You will also need a webcam connected to your computer.

Here are the steps to run the testing script code:

-Open a text editor and paste the code.
-Save the file with a .py extension (e.g. "eye_controlled_mouse.py")
-Open a terminal or command prompt window and navigate to the directory where you saved the file.
-Run the code by typing "python eye_controlled_mouse.py" in the terminal and press Enter.
-A window will pop up displaying the webcam feed. The code will track the landmarks on the face and use the position of the eyes to control the mouse.
-To stop the code, you can simply press the "q" key in the webcam window or close the window.

