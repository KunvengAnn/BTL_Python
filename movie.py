from flask import Flask, jsonify
import requests

app = Flask(__name__)

@app.route('/movies')
def getMovies():
    api_key = '240d807ae8e176309f04e8dc32fb160a'
    all_movies = []

    # Define the number of pages you want to fetch
    num_pages = 5  

    for page in range(1, num_pages + 1):
        url = f'https://api.themoviedb.org/3/movie/top_rated?api_key={api_key}&page={page}'
        response = requests.get(url)
        
        # Check if the request was successful
        if response.status_code == 200:
            movies_on_page = response.json()['results']
            all_movies.extend(movies_on_page)

    return {'movies': all_movies}

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=8000)
