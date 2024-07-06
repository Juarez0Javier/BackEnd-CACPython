from flask import jsonify, request
from app.models import Product

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
        return jsonify({'message': 'Not found'}), 404
    return jsonify(product.serialize())

def post_new_product():
    data = request.json
    new_prod = Product(
        nombre=data['nombre'],
        l_name=data['long name'],
        image=data['imagen'],
        description=data['descripcion'],
        price=data['precio']
    )
    new_prod.save()
    return jsonify({'message': 'Created successfully'}), 201

def update_product(prod_id):
    product = Product.get_by_id(prod_id)
    if not product:
        return jsonify({'message': 'Not found'}), 404
    data = request.json
    product.nombre=data['nombre']
    product.l_name=data['long name']
    product.image=data['imagen']
    product.description=data['descripcion']
    product.price=data['precio']
    product.save()
    return jsonify({'message': 'Updated successfully'})

def stock_update(prod_id):
    data = request.json
    product = Product.get_product_by_id(prod_id)
    if not product:
        return jsonify({'message': 'Not found'}), 404
    product.set_stock(product,data["stock"])
    return jsonify({'message': 'Stock updated successfully'})

def discontinue(prod_id):
    product = Product.get_product_by_id(prod_id)
    if not product:
        return jsonify({'message': 'Not found'}), 404
    product.set_stock(product,-1)
    return jsonify({'message': 'Product discontinued'})