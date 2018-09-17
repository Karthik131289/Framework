#ifndef __CPPJAVABRIDGE_H__
#define __CPPJAVABRIDGE_H__

#include <stdio.h>
#include <stdlib.h>

#include <string>
	#include <iostream>
#include "Transform.h"

#define VOLANTE_JEXPORT

#if defined(_MSC_VER)
#define PLATFORM_EXPORTX __declspec( dllexport )
#define PLATFORM_IMPORTX __declspec( dllimport )

#pragma warning(disable: 4251)  // using non-exported as public in exported
#undef VOLANTE_JEXPORT
#ifdef JTRANSFORM_PROJECT
#define VOLANTE_JEXPORT PLATFORM_EXPORTX
#else
#define VOLANTE_JEXPORT PLATFORM_IMPORTX
#endif

#endif

VOLANTE_NAMESPACE_BEGIN

class JVM;

class VOLANTE_JEXPORT CPPJavaBridge {
public:
    static LookupContext getLookupContext();

    static bool initJVM();
    static bool initJVM(const char* jvm, const char* classpath);
private:
    static JVM* vm;
};

VOLANTE_NAMESPACE_END

#endif //__CPPJAVABRIDGE_H__