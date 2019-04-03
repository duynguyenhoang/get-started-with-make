import requests
import sys


if __name__ == '__main__':
    github_user = sys.argv[1] if len(sys.argv[1]) > 1 else 'duynguyenhoang'
    result = requests.get('https://api.github.com/users/{}'.format(github_user)).json()

    print('\n--------------- Github profile ------------')
    if (result.get('message', None) == 'Not Found'):
        print(result['message'])
    else:
        print('Name: {}'.format(result['name']))
        print('Company: {}'.format(result['company']))
