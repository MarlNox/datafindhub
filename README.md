# django_gui

## Make sure chromedriver and tesseract executables are in your PATH variables.

## Steps to run:
  - go to cmd and run ( make sure you run on localhost:8000 or you have to set up oauth callback urls in Drive API):
    ```bash
    python manage.py runserver
    ```
  - currently I've made demo google account for use ( username: my.testing.django@gmail.com ,password: testing_007)
  - API credentials are saved in client_secrets.json
  - The moment you open localhost:8000, you will be prompted to login to google account.
  - You'll see an alert screen<br>
    ![alt text](https://github.com/MakwanaVihas/django_gui/blob/master/alert.PNG)
  - Just click Advanced and click Go to Testing.
  - Then upload a .txt or .csv file and hit submit.


  ### For running using celery:
 - open another terminal window and run (Mac and linux):
   ```bash
   celery -A django_gui worker -l INFO
   ```
 -  ### For Windows you have to run:
    ```bash
    
    celery -A django_gui worker --pool=solo -l info
    ```
 - **Make sure you keep both terminal windows open if you are using celery**
# datafindhub
