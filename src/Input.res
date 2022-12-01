let readFile = fileName => {
  // dirname을 가져온다.
  let dirname = %raw(`(function () { 
    const path = require('path');
    
    return path.parse(__dirname).dir;
    })()`)

  let filePath = `src/input/${fileName}.txt`
  // 전체 경로를 만든다.
  let fullPath = `${dirname}/${filePath}`

  // 파일을 읽어 리턴한다.
  Node.Fs.readFileAsUtf8Sync(fullPath)->Js.String2.trim
}

let splitLine = (str, ~delim) => {
  str->Js.String2.split(delim)
}
