from flask import Flask

app = Flask('app')


@app.route('/')
def index():
    return "This is Youngsoo Docker. Nice to meet you ?:)"


if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)