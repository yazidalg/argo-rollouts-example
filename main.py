from flask import Flask

app = Flask(__name__)

@app.route('/', methods=['GET'])
def hello():
    return "Kubernetes argo rollouts with python image"

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=80)