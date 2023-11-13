#include <jni.h>
#include <stdio.h>
#include <windows.h>

extern int __fastcall getAllocatedInt(int id);
extern int __fastcall allocateInt(int id, int value);


JNIEXPORT jint JNICALL Java_Allocator_allocateInt
  (JNIEnv *, jobject,jint id ,jint value){
	 return allocateInt(id,value);
  }
  
  JNIEXPORT jint JNICALL Java_Allocator_getAllocatedInt
  (JNIEnv *, jobject, jint id){
	return getAllocatedInt(id);  
  }