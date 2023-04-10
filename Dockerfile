# Use the official Python 3.10 image as the base image
FROM python:3.10

# Set the working directory
WORKDIR /app

# Install git
RUN apt-get update && apt-get install -y git

# Clone the repository
RUN git clone https://github.com/Cohee1207/TavernAI-extras.git

# Change to the repository directory
WORKDIR /app/TavernAI-extras

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 5100

# Start the service
CMD ["python", "server.py", "--enable-modules=caption,summarize"]
