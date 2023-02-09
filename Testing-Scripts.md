import unittest
import cv2
import mediapipe as mp
import pyautogui

class TestEyeControlledMouse(unittest.TestCase):
    def setUp(self):
        self.cam = cv2.VideoCapture(0)
        self.face_mesh = mp.solutions.face_mesh.FaceMesh(refine_landmarks=True)
        self.screen_w, self.screen_h = pyautogui.size()
    
    def test_mouse_movement(self):
        _, frame = self.cam.read()
        frame = cv2.flip(frame, 1)
        rgb_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
        output = self.face_mesh.process(rgb_frame)
        landmark_points = output.multi_face_landmarks
        frame_h, frame_w, _ = frame.shape
        if landmark_points:
            landmarks = landmark_points[0].landmark
            for id, landmark in enumerate(landmarks[474:478]):
                x = int(landmark.x * frame_w)
                y = int(landmark.y * frame_h)
                if id == 1:
                    screen_x = self.screen_w * landmark.x
                    screen_y = self.screen_h * landmark.y
                    current_mouse_position = pyautogui.position()
                    self.assertNotEqual(current_mouse_position, (screen_x, screen_y))
                    break
    
    def test_mouse_click(self):
        _, frame = self.cam.read()
        frame = cv2.flip(frame, 1)
        rgb_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
        output = self.face_mesh.process(rgb_frame)
        landmark_points = output.multi_face_landmarks
        frame_h, frame_w, _ = frame.shape
        if landmark_points:
            landmarks = landmark_points[0].landmark
            left = [landmarks[145], landmarks[159]]
            if (left[0].y - left[1].y) < 0.004:
                current_mouse_clicks = pyautogui.click()
                self.assertGreater(current_mouse_clicks, 0)
                break
                
    def tearDown(self):
        self.cam.release()
        cv2.destroyAllWindows()

if __name__ == '__main__':
    unittest.main()
