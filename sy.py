from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello World!'

@app.route('/hello/')
@app.route('/hello/<name>')
def hello(name=None):
    return render_template('hello.html', name=name)

@app.route('/index.html')
def hello(name=None):
    return render_template('index.html', name=name)

if __name__ == '__main__':
    app.run(host='127.0.0.1', port=10080)
