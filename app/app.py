from flask import Flask
from flask_autoindex import AutoIndex

application = Flask(__name__)
AutoIndex(application, '/files', add_url_rules=True)

if __name__ == '__main__':
    application.run()
