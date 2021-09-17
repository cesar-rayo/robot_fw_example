## Robot Framework Example

Running test cases by tag
```
$ robot -i Smoke -d results/the_internet tests/the_internet/the_internet.robot 
```

Providing variables
```
$ robot -v VARIABLE_NAME:VALUE
```
```
$ robot -v BROWSER:firefox -i Smoke -d results/the_internet tests/the_internet/the_internet.robot
```