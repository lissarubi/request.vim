# Request.vim

Request.vim is a Vim Plugin to make HTTP requests inside Vim. Yes. you don't need to use Insomnia or Curl if you are using Request.vim.

# Installation

Use your favorite Vim Plugin manager, like

Vim Plug:

```
call plug#begin()

Plug 'edersonferreira/request-vim'

call plug#end()
```

# Usage

Request.vim uses JSON files to get the type, url, body and headers of the HTTP request.

## GET Request

Create a JSON file (only the JSON syntax, the file extension is opicional) like Get.json

Put the `type, url (obrigatory), body and headers (opicional)` in the file.

```json
{
  "type": "get",
  "url": "http://example.com"
}
```

Now, you can run the command `Request` to use the Request.vim, and the output will be shown in the bottom.

Output:

```
    }
    div {
        width: 600px;
        margin: 5em auto;
        padding: 2em;
        background-color: #fdfdff;
        border-radius: 0.5em;
        box-shadow: 2px 3px 7px 2px rgba(0,0,0,0.02);
    }
    a:link, a:visited {
        color: #38488f;
        text-decoration: none;
    }
    @media (max-width: 700px) {
        div {
            margin: 0 auto;
            width: auto;
        }
    }
    </style>
</head>

<body>
<div>
    <h1>Example Domain</h1>
    <p>This domain is for use in illustrative examples in documents. You may use this
    domain in literature without prior coordination or asking for permission.</p>
    <p><a href="https://www.iana.org/domains/example">More information...</a></p>
</div>
</body>
</html>

Code: 200
```

## POST Request

Create a JSON file with the type, url, body or/and the headers:

```
{
  "type": "post",
  "url": "https://postman-echo.com/post",
  "body": {
    "data": "hello"
  }
}
```

And the output will be the request code and body (like the get request).

Output:

```
Body: {"args":{},"data":"","files":{},"form":{"data":"hello"},"headers":{"x-forwarded-proto":"https","
x-forwarded-port":"443","host":"postman-echo.com","x-amzn-trace-id":"Root=1-5f6bd0e1-48a828f2b12fc76af
68fbec8","content-length":"10","accept-encoding":"gzip;q=1.0,deflate;q=0.6,identity;q=0.3","accept":"*
/*","user-agent":"Ruby","content-type":"application/x-www-form-urlencoded"},"json":{"data":"hello"},"u
rl":"https://postman-echo.com/post"}
Code: 200
```
