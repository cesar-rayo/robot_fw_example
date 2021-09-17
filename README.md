## Robot Framework Example
Running tests cases by suite
```shell
$ robot -v BROWSER:chrome -d results/ -i Smoke ./tests/formy/formy.robot
```

### Usefull Notes

Running test cases which match exact name
```shell
$ robot -d results/ -t "User goes to the home page" tests/the_internet/the_internet.robot
```

Running test cases by tag
```shell
$ robot -i Smoke -d results/the_internet tests/the_internet/the_internet.robot 
```

Providing variables
```shell
$ robot -v VARIABLE_NAME:VALUE
```
```shell
$ robot -v BROWSER:firefox -i Smoke -d results/the_internet tests/the_internet/the_internet.robot
```

Run several tests
```shell
$ robot -d results tests 
```

Naming the test report
```shell
$ robot -i Smoke -N "Full Regression" -d results/ tests/
```