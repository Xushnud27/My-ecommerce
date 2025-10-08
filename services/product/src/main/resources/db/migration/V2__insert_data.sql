-- Insert into category using sequence
insert into category (id, description, name) values
                                                 (nextval('category_seq'), 'Electronic devices and gadgets', 'Electronics'),
                                                 (nextval('category_seq'), 'Kitchen and home appliances', 'Home Appliances'),
                                                 (nextval('category_seq'), 'Books across various genres', 'Books');

-- Insert into product using sequence
insert into product (id, description, name, available_quantity, price, category_id) values
                                                                                        (nextval('product_seq'), 'Smartphone with 6GB RAM and 128GB storage', 'Smartphone', 50, 299.99, (select id from category where name = 'Electronics')),
                                                                                        (nextval('product_seq'), 'Microwave oven with digital display', 'Microwave Oven', 20, 150.00, (select id from category where name = 'Home Appliances')),
                                                                                        (nextval('product_seq'), 'Science fiction novel by famous author', 'Sci-Fi Novel', 100, 15.50, (select id from category where name = 'Books')),
                                                                                        (nextval('product_seq'), 'Bluetooth wireless headphones', 'Headphones', 75, 89.99, (select id from category where name = 'Electronics')),
                                                                                        (nextval('product_seq'), 'Electric kettle with auto shut-off', 'Electric Kettle', 30, 35.25, (select id from category where name = 'Home Appliances'));
