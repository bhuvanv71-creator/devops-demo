from flask import Flask, jsonify
import os

app = Flask(__name__)

products = [
    {"id": 1, "name": "Laptop", "price": 999.99, "stock": 50},
    {"id": 2, "name": "Phone", "price": 499.99, "stock": 100},
    {"id": 3, "name": "Tablet", "price": 299.99, "stock": 75},
]

@app.route("/health")
def health():
    return jsonify({"status": "healthy", "service": "product-svc"})

@app.route("/products")
def get_products():
    return jsonify({"products": products, "count": len(products)})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=int(os.environ.get("PORT", 5000)))
