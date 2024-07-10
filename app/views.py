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


def get_all_published():
    products = Product.get_published()
    return jsonify([product.serialize() for product in products])



def get_all_discontinued():
    products = Product.get_discont()
    return jsonify([product.serialize() for product in products])

def get_product(prod_id):
    product = Product.get_product_by_id(prod_id)
    if not product:
        return jsonify({'message': 'Not found'}), 404
    return jsonify(product.serialize())

def post_new_product():
    data = request.json
    new_prod = Product(
        name=data['name'],
        l_name=data['l_name'],
        image=data['image'],
        desc=data['desc'],
        price=data['price'],
        stock=data['stock']
    )
    new_prod.save(new_prod)
    return jsonify({'message': 'Created successfully'}), 201

def update_product(prod_id):
    product = Product.get_product_by_id(prod_id)
    if not product:
        return jsonify({'message': 'Not found'}), 404
    data = request.json
    product.name=data['name']
    product.l_name=data['l_name']
    product.image=data['image']
    product.desc=data['desc']
    product.price=data['price']
    product.stock=data['stock']

    product.save(product)
    return jsonify({'message': 'Updated successfully'})

def stock_update(prod_id):
    data = request.json
    product = Product.get_product_by_id(prod_id)
    if not product:
        return jsonify({'message': 'Not found'}), 404
    product.stock = data['stock']
    product.save(product)
    return jsonify({'message': 'Stock updated successfully'})

def discontinue(prod_id):
    product = Product.get_product_by_id(prod_id)
    if not product:
        return jsonify({'message': 'Not found'}), 404
    product.delete(product)
    return jsonify({'message': 'Product discontinued'})

def delete(prod_id):
    product = Product.get_product_by_id(prod_id)
    if not product:
        return jsonify({'message': 'Not found'}), 404
    product.delete()
    return jsonify({'message': 'Product deleted'})