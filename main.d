import std.stdio,
       std.string,
       std.json,
       std.net.curl,
       std.file;

void main() {
  string url = "https://labs.goo.ne.jp/api/similarity";
  string jsonStr = readText("param.json").chomp;
  JSONValue json = parseJSON(jsonStr);

  HTTP http = HTTP();
  http.addRequestHeader("content-type", "application/json");

  char[] resstr = url.post(json.toString, http);
  resstr.writeln();
}
