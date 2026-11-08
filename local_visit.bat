@echo off
chcp 65001 >nul
echo ==============================================
echo  Windows built-in static server for public folder
echo  URL: http://localhost:1314
echo  Stop: Close window directly (Ctrl+C may hang)
echo ==============================================
powershell -Command "$port=1314;$webRoot=Join-Path $PWD.Path 'public';$listener=[System.Net.HttpListener]::new();$listener.Prefixes.Add(\"http://localhost:$port/\");$listener.Start();Write-Host '✅ Server started, root dir:' $webRoot;$mimeMap=@{'.css'='text/css';'.js'='application/javascript';'.png'='image/png';'.jpg'='image/jpeg';'.jpeg'='image/jpeg';'.svg'='image/svg+xml';'.ico'='image/x-icon';'.woff'='font/woff';'.woff2'='font/woff2';'.html'='text/html; charset=utf-8'};try{while($listener.IsListening){$ctx=$listener.GetContext();$req=$ctx.Request;$res=$ctx.Response;$path=$req.Url.LocalPath.TrimStart('/');$fullPath=Join-Path $webRoot $path;if(Test-Path $fullPath -PathType Container){$fullPath=Join-Path $fullPath 'index.html'}if(Test-Path $fullPath -PathType Leaf){$ext=[System.IO.Path]::GetExtension($fullPath).ToLower();$mime=if($mimeMap.ContainsKey($ext)){$mimeMap[$ext]}else{'application/octet-stream'};$bytes=[System.IO.File]::ReadAllBytes($fullPath);$res.ContentType=$mime;$res.ContentLength64=$bytes.Length;$res.OutputStream.Write($bytes,0,$bytes.Length)}else{$res.StatusCode=404};$res.Close()}}finally{if($listener.IsListening){$listener.Stop()};Write-Host 'Server stopped'}"
pause
