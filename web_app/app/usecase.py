from flask import Flask, render_template, request, redirect, url_for
from flask_sqlalchemy import SQLAlchemy 

app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://testuser:testuser@postgres:5432/devops'
#app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://testuser:testuser@10.27.165.5:5432/devops'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

class student(db.Model):
#    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(16), primary_key=True)
    status = db.Column(db.String(1))
	
@app.route('/')
def index():
   # db.create_all()
    result = student.query.all()
    return render_template('index.html', result=result)

@app.route('/add')
def add():
    return render_template('input.html')

@app.route('/addTrainee', methods=['POST'])
def addTrainee():
    name = request.form['name']
    status = request.form['status']

    trainee = student(name=name, status=status)
    db.session.add(trainee)
    db.session.commit()

    return render_template('input.html')

@app.route('/remove')
def remove():
    return render_template('remove.html')

@app.route('/removeTrainee', methods=['POST'])
def removeTrainee():
    name = request.form['name']

    student.query.filter_by(name=name).delete()
    db.session.commit()

    return render_template('remove.html')


if __name__ == '__main__':
	app.run(host='0.0.0.0', debug=True, port=80)

