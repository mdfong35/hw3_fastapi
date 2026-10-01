# Use python:3.13-slim as a base image 
FROM python:3.13-slim

# Set /Day8 as a working directory
WORKDIR /fastapi

# Copy environment.yml
# the / is the key for the homework
COPY * ./

# Install required packages/libs
RUN pip install -r requirements.txt

# #xpose port 8501
EXPOSE 8000

# Run streamlit
CMD ["sh", "-c", "fastapi run main.py --host 0.0.0.0 --port ${PORT:-8000}"]