# Step 1: Use official Python image
FROM python:3.10

# Step 2: Set the working directory
WORKDIR /app

# Step 3: Copy requirements and install them
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Step 4: Copy all code
COPY . .

# Step 5: Run the Python file
CMD ["python", "main.py"]