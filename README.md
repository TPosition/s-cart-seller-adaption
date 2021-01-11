# s-cart-seller-adaption

Develop based on open source https://s-cart.org/ 

Changes: 
1. Added role for seller to make everyone can sell products on platform
    - Limit the display of product based on owner in product management
    - Limit the access of role
2. Fix product cards size to fit web page
3. Removed unnecessary pages and functions for admin side
4. Adapt buyer pages for books
    - banners, product details page's details
    


Develop based on local hosting
1. xampp (Apache, MySQL)
2. Import s-cart.sql to phpmyadmin
3. Put s-cart-selleradaption folder in htdocs
3. Home page url: http://localhost/s-cart/public/index.php
4. Admin side url: http://localhost/s-cart/public/sc_admin/auth/login
 - admin account username/password: admin
 - seller account username/password: aaa/aaaaaa
