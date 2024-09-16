# Stage 1: Build stage
FROM python:3.11-slim AS build

WORKDIR /app

# Copy dependency files
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Create a non-root user and group
RUN groupadd -r appgroup && useradd -r -g appgroup appuser

# Stage 2: Runtime stage
FROM python:3.11-slim

WORKDIR /app

# Copy installed dependencies from the build stage
COPY --from=build /usr/local/lib/python3.11/site-packages /usr/local/lib/python3.11/site-packages

# Copy the application code from the build stage
COPY --from=build /app /app

# Create a non-root user and group
RUN groupadd -r appgroup && useradd -r -g appgroup appuser

# Change ownership of the application directory
RUN chown -R appuser:appgroup /app

# Copy gunicorn to a location in the PATH
COPY --from=build /usr/local/bin/gunicorn /usr/local/bin/gunicorn

# Switch to the non-root user
USER appuser

# Expose the port
EXPOSE 5000

# Run the application with Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]

