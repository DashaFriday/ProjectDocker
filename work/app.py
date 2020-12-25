from flask import Flask
from flask import send_file


@app.route('/', methods=['GET'])
	
def download():
	path = "pict123.jpg"
	return send_file(path, as_attachment=True)

if __name__ == '__main__':
	app.run(debug=False, host='0.0.0.0', port=int("80"))
