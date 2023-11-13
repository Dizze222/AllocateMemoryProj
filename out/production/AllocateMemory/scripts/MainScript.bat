@echo off
SET JAVA_HOME=C:\Users\kamil\.jdks\corretto-1.8.0_362
SET PATH=%PATH%;%JAVA_HOME%\bin

cd C:\Users\kamil\IdeaProjects\AllocateMemory\src


echo Compiling C
gcc -c -I"%JAVA_HOME%\include" -I"%JAVA_HOME%\include\win32" source\Allocator.c -o objects\Allocator.o


echo Compiling ASM
ml64 /c /Fo"asm\asm64.obj" asm\asm64.asm

echo Linking
gcc -shared -o nativeLibC.dll objects\Allocator.o asm\asm64.obj -Wl,--add-stdcall-alias

pause