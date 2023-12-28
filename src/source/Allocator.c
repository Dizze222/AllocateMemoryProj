#include <jni.h>
#include <stdio.h>
#include <windows.h>
#include <stdbool.h>

extern int __fastcall getAllocatedInt(int id);
extern int __fastcall allocateInt(int id, int value);
extern int __fastcall editAllocatedInt(int id, int newValue);

//extern int __fastcall atomicAllocateInt(int id, int value);
//extern int __fastcall atomicGetAllocatedInt(int id);
//extern int __fastcall atomicEditAllocatedInt(int id, int newValue);

extern int __fastcall getAllocatedBoolean(int id);
extern int __fastcall allocateBoolean(int id, bool value);
extern int __fastcall editAllocatedBoolean(int id, bool newValue);



JNIEXPORT jint JNICALL Java_Allocator_allocateInt
  (JNIEnv *, jobject,jint id ,jint value){
	 return allocateInt(id,value);
  }
  
JNIEXPORT jint JNICALL Java_Allocator_getAllocatedInt
  (JNIEnv *, jobject, jint id){
	return getAllocatedInt(id);  
  }
  
JNIEXPORT jint JNICALL Java_Allocator_editAllocatedInt
  (JNIEnv *, jobject, jint id, jint newValue){
	  return editAllocatedInt(id,newValue);
  }
  
  
/*
 * Class:     Allocator
 * Method:    atomicAllocateInt
 * Signature: (II)I
 */
JNIEXPORT jint JNICALL Java_Allocator_atomicAllocateInt
  (JNIEnv *, jobject, jint id, jint value){
	  return -1;
  }

/*
 * Class:     Allocator
 * Method:    atomicGetAllocatedInt
 * Signature: (I)I
 */
JNIEXPORT jint JNICALL Java_Allocator_atomicGetAllocatedInt
  (JNIEnv *, jobject, jint id){
	return -1;
  }

/*
 * Class:     Allocator
 * Method:    atomicEditAllocatedInt
 * Signature: (II)I
 */
JNIEXPORT jint JNICALL Java_Allocator_atomicEditAllocatedInt
  (JNIEnv *, jobject, jint id, jint newValue){
	  return -1;
  }


/*
 * Class:     Allocator
 * Method:    allocateBoolean
 * Signature: (IZ)Z
 */
JNIEXPORT jboolean JNICALL Java_Allocator_allocateBoolean
  (JNIEnv *, jobject, jint id, jboolean value){
	int result = allocateBoolean(id,value);
	if(result == 1){
		return true;
	}else{
		return false;
	}
	return false;
}

/*
 * Class:     Allocator
 * Method:    getAllocatedBoolean
 * Signature: (I)Z
 */
JNIEXPORT jboolean JNICALL Java_Allocator_getAllocatedBoolean
  (JNIEnv *, jobject, jint id){
	int result = getAllocatedBoolean(id);
	if(result == 1){
		return true;
	}else{
		return false;
	}
	return false;
	  
  }

/*
 * Class:     Allocator
 * Method:    editAllocatedBoolean
 * Signature: (IZ)Z
 */
JNIEXPORT jboolean JNICALL Java_Allocator_editAllocatedBoolean
  (JNIEnv *, jobject, jint id, jboolean newValue){
	int result = editAllocatedBoolean(id,newValue);
	if(result == 1){
		return true;
	}else{
		return false;
	}
	return false;
 }