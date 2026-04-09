
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_cloud():
    return "Hello, Cloud! My Python app is running inside a Docker container."

if __name__ == '__main__':    # host='0.0.0.0' is crucial for Docker, it allows external access to the container
    app.run(host='0.0.0.0', port=5000)