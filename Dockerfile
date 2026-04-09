# 1. Use an official lightweight Python image
FROM python:3.11-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy your requirement file and install the dependencies
COPY requirement.txt .
RUN pip install --no-cache-dir -r requirement.txt

# 4. Copy the rest of your code (app.py) into the container
COPY . .

# 5. Tell Docker that the container listens on port 5000
EXPOSE 5000

# 6. Define the command to run your app
CMD ["python", "app.py"]
