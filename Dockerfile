# অফিসিয়াল পিএইচপি অ্যাপাচি ইমেজ ব্যবহার করা হচ্ছে
FROM php:8.1-apache

# প্রয়োজনীয় এক্সটেনশন ইনস্টল (যদি প্রয়োজন হয়)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# বর্তমান ফোল্ডারের সব ফাইল অ্যাপাচির ডিফল্ট ডিরেক্টরিতে কপি করা
COPY . /var/www/html/

# সঠিক পারমিশন সেট করা
RUN chown -www-data:www-data /var/www/html/* -R

# পোর্ট ৮০ উন্মুক্ত করা
EXPOSE 80
