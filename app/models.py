from app.database import get_db

class Product:
    def __init__(self, id=None, name=None, l_name=None, image=None, desc=None, price=None, stock=None):
        self.id=id
        self.name=name
        self.l_name=l_name
        self.image=image
        self.desc=desc
        self.price=price
        self.stock=stock

    @staticmethod
    def __get_products_by_query(query):
        db = get_db()
        cursor = db.cursor()
        cursor.execute(query)
        rows = cursor.fetchall()
        cursor.close()

        prods = []
        for row in rows:
            prods.append(
                Product(
                    id = row[0],
                    name = row[1],
                    l_name =row[2],
                    image = row[3],
                    desc = row[4],
                    price = row[5],
                    stock = row[6]
                )
            )
        cursor.close()
        return prods
    
    @staticmethod
    def get_product_by_id(prod_id):
        db=get_db()
        cursor=db.cursor()
        cursor.execute("SELECT * FROM Productos WHERE id = %s",(prod_id,))
        row = cursor.fetchone()
        cursor.close()

        if row:
            return Product(
                    id = row[0],
                    name = row[1],
                    l_name =row[2],
                    image = row[3],
                    desc = row[4],
                    price = row[5],
                    stock = row[6]
                )
        return None

    @staticmethod
    def get_all_prods():
        return Product.__get_products_by_query("""
                                                SELECT * FROM Productos 
                                               ORDER BY stock desc, id
                                               """)

    @staticmethod
    def get_all_stock():
        return Product.__get_products_by_query("""
                                               SELECT * FROM Productos 
                                               WHERE stock>0 
                                               ORDER BY id
                                               """)

    @staticmethod
    def get_no_stock():
        return Product.__get_products_by_query(""" 
                                               SELECT * FROM Productos 
                                               WHERE stock=0 
                                               ORDER BY id
                                               """)
    
    @staticmethod
    def get_discont():
        return Product.__get_products_by_query(""" 
                                               SELECT * FROM Productos 
                                               WHERE stock=-1 
                                               ORDER BY id
                                               """) 
    
    @staticmethod
    def get_by_id(prod_id):
        return Product.__get_product_by_id(prod_id)
    
    @staticmethod
    def save(self):
        db = get_db()
        cursor = db.cursor()
        if self.id: 
            cursor.execute("""
                    UPDATE productos
                    SET nombre = %s, l_name= %s, image = %s, description = %s, price = %s
                    WHERE id = %s
                """,
                (self.name, self.l_name, self.image, self.desc, self.price, self.id))

        else:
            cursor.execute(
                """
                    INSERT INTO tareas
                    (nombre, l_name, image, description, price)
                    VALUES (%s, %s, %s, %s, %s)
                """,
                (self.name, self.l_name, self.image, self.desc, self.price))
            self.id = cursor.lastrowid
        db.commit()
        cursor.close()

    @staticmethod
    def set_stock(self,new_stock):
        db = get_db()
        cursor = db.cursor()
        cursor.execute("UPDATE tareas SET stock = %d  WHERE id = %s", (new_stock,self.id,))
        db.commit()
        cursor.close()

    @staticmethod
    def delete(self):
        db = get_db()
        cursor = db.cursor()
        cursor.execute("DELETE tareas WHERE id = %d", (self.id,))
        db.commit()
        cursor.close()

    def serialize(self):
        return {
            'id': self.id,
            'nombre':self.name,
            'long_name': self.l_name,
            'imagen':self.image,
            'descripcion':self.desc,
            'precio':self.price,
            'stock': self.stock
        }