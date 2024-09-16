from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def index():
    try:
        # Your main logic
        return "Hello, World!"
    except Exception as e:
        app.logger.error(f"Error occurred: {e}")
        return jsonify({"error": "Internal Server Error"}), 500

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)

