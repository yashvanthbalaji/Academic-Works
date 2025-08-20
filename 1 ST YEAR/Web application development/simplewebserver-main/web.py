from http.server import HTTPServer, BaseHTTPRequestHandler
content = """
<html>
<head>
    <title>TOP SOFTWARE COMPANIES</title>
</head>
<body>
    <div align="center">
        <h2>TOP 7 SOFTWARE COMPANIES IN 2023</h2>
        <table border="1" cellpadding="10" cellspacing="2">
            <tr>
                <th>RANK</th>
                <th>COMPANY NAME</th>
                <th>COUNTRY</th>
                <th>SALES</th>
                <th>MARKET VALUE</th>
            </tr>
           
            <tr>
                <td>01</td>
                <td>APPLE inc.</td>
                <td>USA</td>
                <td>$378.5</td>
                <td>$2.6</td>
            </tr>
            <tr>
                <td>02</td>
                <td>ALPHABET inc.</td>
                <td>USA</td>
                <td>$278.5</td>
                <td>$1.6</td>
            </tr>
            <tr>
                <td>03</td>
                <td>MICROSOFT</td>
                <td>USA</td>
                <td>$184.6</td>
                <td>$2.1</td>
            </tr>
            <tr>
                <td>04</td>
                <td>SAMSUNG GROUPS</td>
                <td>SOUTH KOREA</td>
                <td>$244.6</td>
                <td>$367.3</td>
            </tr>
            <tr>
                <td>05</td>
                <td>TENCENT HOLDING</td>
                <td>CHINA</td>
                <td>$86.9</td>
                <td>$414.3</td>
            </tr>
        </table>
    </div>
</body>
</html>
"""
class myhandler(BaseHTTPRequestHandler):
    def do_GET(self):
        print("request received")
        self.send_response(200)
        self.send_header('content-type', 'text/html; charset=utf-8')
        self.end_headers()
        self.wfile.write(content.encode())
server_address = ('',8000)
httpd = HTTPServer(server_address,myhandler)
print("my webserver is running...")
httpd.serve_forever()