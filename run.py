from flask import Flask
from flask_cors import CORS
from app.views import *
from app.database import *

app = Flask(__name__)

#=GET=

#Get All Products 
app.route('/api/products/all/', methods=['GET'])(get_all_products)

#Get All Products in Stock
app.route('/api/products/stock/', methods=['GET'])(get_all__with_stock)

#Get All Products out of Stuck
app.route('/api/products/no_stock/', methods=['GET'])(get_all_with_no_stock)

#Get All Published Products
app.route('/api/products/published/', methods=['GET'])(get_all_published)

#Get All Discontinued Products
app.route('/api/products/discont/', methods=['GET'])(get_all_discontinued)

#Get Product by ID
app.route('/api/products/<int:prod_id>', methods=['GET'])(get_product)



#=POST=
#Post New Product
app.route('/api/products/publish/', methods=['POST'])(post_new_product)



#=PUT=
#Update Product
app.route('/api/products/update/<int:prod_id>', methods=['PUT'])(update_product)

#Update Product Stock
app.route('/api/products/refresh_stock/<int:prod_id>', methods=['PUT'])(stock_update)



#=DELETE=
#Discontinue Product
app.route('/api/products/discont/<int:prod_id>', methods=['DELETE'])(discontinue)

#Delete Physical Data
app.route('/api/products/delete/<int:prod_id>', methods=['DELETE'])(delete)


init_app(app)
CORS(app,origins="*")


if __name__ == '__main__':
    app.run(debug=True)
