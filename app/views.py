from flask import jsonify
from app.models import *

def index():
    return jsonify(
        {
            'mensaje': 'Hola Mundo Apis con FLASK'
        }
    )

def get_all_products():
    products = Product.get_all_prods()
    return jsonify([product.serialize() for product in products])

def get_all__with_stock():
    products = Product.get_all_stock()
    return jsonify([product.serialize() for product in products])

def get_all_with_no_stock():
    products = Product.get_no_stock()
    return jsonify([product.serialize() for product in products])

def get_product(prod_id):
    product = Product.get_product_by_id(prod_id)
    if not product:
        return jsonify({'message': 'Task not found'}), 404
    return jsonify(product.serialize())

def post_new_product():
    return

def update_product():
    return

def update_product():
    return

def delete_product():
    return