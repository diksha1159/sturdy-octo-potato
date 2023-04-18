---

# Eye Controlled Mouse - Version 1

This Python script uses computer vision and machine learning techniques to create an eye-controlled mouse. The script works with a standard webcam and uses the Mediapipe library for face detection and facial landmark detection. The landmarks are used to detect the position of the left eye and determine whether the eye is closed or open based on the difference in height between the top and bottom landmarks of the eye.



## Installation

Before you can run the script, you will need to install the necessary libraries. To install these libraries, run the following commands:

```
pip install opencv-python-headless
pip install mediapipe
pip install pyautogui
```



### **Usage**

To use the script, run the following command:

```
python eye_controlled_mouse.py
```

Once the script is running, position your face in front of the webcam and move your eyes to control the mouse pointer. If you close your left eye, the script will simulate a left mouse click.



### Future Updates

This is version 1 of the Eye Controlled Mouse script, and there is the possibility of future updates with additional features and improvements. Some potential updates might include:



Incorporating more advanced machine learning techniques to improve the accuracy and speed of eye detection and movement tracking

Expanding the script to include support for other eye movements or gestures, such as blinking or looking in a certain direction

### Conclusion

Overall, this script provides a solid foundation for further development of eye-controlled applications. We can expect to see more updates and improvements in the future as the field continues to evolve. If you have any questions or feedback, please feel free to contact the project maintainers.
