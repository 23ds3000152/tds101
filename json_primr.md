## JSON:

JSON (JavaScript Standard Object Notation) is the de-facto standard for data exchange on the web and APIs. It's human readable format and wide spread support makes it essential for data scientists working with web services, APIs and configuration files.

Essential use cases for JSON:

-   Working REST APIs and web services.
-   Storing config files and meta data
-   Parsing semi-stuctured data from databases like MongoDB
-   Creating data visualization specifications (eg. Vega-Lite)


> JSON only supports 6 data types numbers, string, array, boolean and objects

Tools you could use with JSON:

JSONLint: Validate and format JSON\
JSON Editor Online: Visual JSON editor and formatter\
JSON Schema: Define the structure of your JSON data\
jq: Command-line JSON processor

### jq.

jq. is filter that takes a stream of JSON data as input and produces structured JSON output.




### Installation:

- Windows: for windows jq can be installed using `winget`

```sh
winget install jqlang.jq
```
-   WSL2: for wsl2 jq can be installed using the `sudo`

```sh
sudo apt install jq
```
**Note:** it is important to mind the shell's quoting rules. As a general rule it's best to always quote (with single-quote characters on Unix shells) the jq program, as too many characters with special meaning to jq are also shell meta-characters. For example, jq "foo" will fail on most Unix shells because that will be the same as jq foo, which will generally fail because foo is not defined. When using the Windows command shell (cmd.exe) it's best to use double quotes around your jq program when given on the command-line (instead of the -f program-file option), but then double-quotes in the jq program need backslash escaping. When using the Powershell (powershell.exe) or the Powershell Core (pwsh/pwsh.exe), use single-quote characters around the jq program and backslash-escaped double-quotes (\") inside the jq program.

-   Unix shells: `jq '.["foo"]'`
-   Powershell: `jq '.[\"foo\"]'`
-   Windows command shell: `jq ".[\"foo\"]"`

### jq in cmd:

1. `"."` Filter

```sh
>echo { "foo " : "Hello World" } | jq "."
{
  "foo ": "Hello World"
}
```
echo prints the input to stdout, but in this case using `|`, the input to jq is parsed as a sequence of whitespace seperated JSON values which are passed through `"."` filter, which is an identity operator meaning the output of the filter would be written to the stdout as a sequence of newline-seperated well structured JSON data.

***
jq io rw operations can be affected by using command line operators like

-   `--null-input/-n` : 

```sh 
>echo { "foo " : "Hello World" } | jq "." -n 
null 
```
-   `--raw-input/-R` :

```sh
>echo { "foo " : "Hello World" } | jq "." -R
"{ \"foo \" : \"Hello World\" } "
```
-   `--slurp/-s` :

```sh
>echo { "foo " : "Hello World" } | jq "." -s
[
  {
    "foo ": "Hello World"
  }
]
```

-   `-compact-output/-c` :

```sh
>echo { "foo " : "Hello World" } | jq "." -c
{"foo ":"Hello World"}
```

-   `-raw-output/-r` :

```sh
>echo { "foo " : "Hello World", "cow": "Mooo" } | jq ".[\"cow\"]" -r
Mooo
```
-   `-sort-keys/-S` :

```sh
>echo { "foo " : "Hello World", "cow": "Mooo" } | jq "." -S
{
  "cow": "Mooo",
  "foo ": "Hello World"
}
```

### Basic Filtering:


1.  Array/Object value Iterator: `.[]`

-   Indexing
```sh
>echo [ 1, 2, 3] | jq .[2]
3
```
-   applying `.[]` filter will simply return all the elements of array as newline-seperated JSON object

```sh
>echo [ { "foo" : "Hello", "bar" : "Cow" }, { "foo" : "World", "bar" : "Says Moo"} ] | jq .[]
{
  "foo": "Hello",
  "bar": "Cow"
}
{
  "foo": "World",
  "bar": "Says Moo"
}
```

-   applying `.[].key` filter will send all the inputs with `key` to stdout

```sh
>echo [ { "foo" : "Hello", "bar" : "Cow" }, { "foo" : "World", "bar" : "Says Moo"} ] | jq ".[].foo"
"Hello"
"World"
```

-   If two filters seperated by a comma then the same input would be fed into both filters and the output will be concatenated in order

```sh
>echo [ { "foo" : "Hello", "bar" : "Cow" }, { "foo" : "World", "bar" : "Says Moo"} ] | jq .[]".foo",.[]".bar"
"Hello"
"World"
"Cow"
"Says Moo"
```

-   If two filters are seperated by `|` then it will act as a pipeline  where the output of one filter will be fed into second filter and so on.

```sh
>echo [ { "foo" : "Hello", "bar" : "Cow" }, { "foo" : "World", "bar" : "Says Moo"} ] | jq ".[1] | .bar"
"Says Moo"
```
-   



