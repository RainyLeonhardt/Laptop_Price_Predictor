# Use a base Python image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project into the container
COPY . .

# Expose the port that your Flask app will listen on
EXPOSE 8501

# Set the entry point for the container to run your Flask app
CMD ["streamlit", "run", "app.py"]
