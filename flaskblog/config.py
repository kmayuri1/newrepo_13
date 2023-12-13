import os
# import pymongo
# import json
# from sqlalchemy import create_engine
# from sqlalchemy.orm import sessionmaker
# from sqlalchemy.ext.declarative import declarative_base


class Config:
    #  SECRET_KEY = 'dff618d5929c620207a6392b4c92504f'
    SQLALCHEMY_DATABASE_URI ='mysql+pymysql://sqluser1:password@localhost:3306/newdb'
   

    SECRET_KEY = os.environ.get('SECRET_KEY')
    # SQLALCHEMY_DATABASE_URI = os.environ.get('SQLALCHEMY_DATABASE_URI')
    MAIL_SERVER = 'smtp.googlemail.com'
    MAIL_PORT = 587
    MAIL_USE_TLS = True
    MAIL_USERNAME =  os.environ.get('EMAIL_USER')
    MAIL_PASSWORD =  os.environ.get('EMAIL_PASS')
    


