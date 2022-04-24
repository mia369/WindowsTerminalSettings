
REM 因为要把busybox拷到system32，所以先获取管理员权限
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"

REM 下载busybox，如果不想手动下载可以把下面这行取消注释（bitsadmin 命令会被杀软拦截，通过即可）
REM bitsadmin /transfer  "download busybox" /download /priority normal http://frippery.org/files/busybox/busybox.exe %~dp0/busybox.exe


REM 然后根据busybox的特性，为每个linux命令创建软连接即可
copy busybox.exe C:\Windows\System32\busybox.exe
for %%i in (ar, arch, ash, awk, base64, basename, bash, bunzip2, bzcat, bzip2, cal, cat, chmod, cksum, ^
        clear, cmp, comm, cp, cpio, cut, date, dc, dd, df, diff, dirname, dos2unix, dpkg, dpkg-deb, du, echo, ed,^
        egrep, env, expand, expr, factor, false, fgrep, find, fold, fsync, ftpget, ftpput, getopt, grep, groups,^
        gunzip, gzip, hd, head, hexdump, iconv, id, ipcalc, kill, killall, less, link, ln, logname, ls, lzcat, lzma,^
        lzop, lzopcat, man, md5sum, mkdir, mktemp, mv, nc, nl, od, paste, patch, pgrep, pidof, pipe_progress, pkill,^
        printenv, printf, ps, pwd, readlink, realpath, reset, rev, rm, rmdir, rpm, rpm2cpio, sed, seq, sh, sha1sum,^
        sha256sum, sha3sum, sha512sum, shred, shuf, sleep, sort, split, ssl_client, stat, strings, su, sum, tac, tail,^
        tar, tee, test, timeout, touch, tr, true, truncate, ts, ttysize, uname, uncompress, unexpand, uniq, unix2dos,^
        unlink, unlzma, unlzop, unxz, unzip, usleep, uudecode, uuencode, vi, watch, wc, wget, which, whoami, whois,^
        xargs, xxd, xz, xzcat, yes, zcat)^
do mklink C:\Windows\System32\%%i.exe C:\Windows\System32\busybox.exe

pause
