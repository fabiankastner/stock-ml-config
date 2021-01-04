from flask import Flask
import yaml

app = Flask(__name__)

@app.route("/")
def home():
    return "This is the config master for stock-ml project"

@app.route("/config", methods=['GET'])
def get_config():
    with open("config.yml") as cfg:
        config = yaml.load(cfg, Loader=yaml.FullLoader)
    return config


if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0')