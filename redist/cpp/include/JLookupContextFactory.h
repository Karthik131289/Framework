#ifndef __JLOOKUPCONTEXTFACTORY_H__
#define __JLOOKUPCONTEXTFACTORY_H__

#include "JVM.h"
#include "Transform.h"

VOLANTE_NAMESPACE_BEGIN

class VOLANTE_JEXPORT JLookupContextFactory {
	JVM *jvm;
	VM *vm;
public:
	JLookupContextFactory(JVM *vm);

	LookupContext getLookupContext();
};


VOLANTE_NAMESPACE_END



#endif //__JLOOKUPCONTEXTFACTORY_H__