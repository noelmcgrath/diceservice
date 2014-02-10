#!/usr/bin/env python

from bottle import get, post, request, default_app, run
from diceroll import roll

app = default_app()

@get('/')
def display():
    return '''
        <form action="/" method="post">
            Enter dice roll e.g. 2d6 <input name="roll" type="text" />
        </form>
    '''

@post('/')
def do_roll():
    spec = request.forms.get('roll')
    return str(roll(spec))

if __name__ == '__main__':
    run(host='localhost', port=8080, debug=True)
