# begin generated by script/client-read.pl

UA_StatusCode
UA_Client_readAccessLevelAttribute(client, nodeId, outAccessLevel)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	OPCUA_Open62541_Byte		outAccessLevel
    CODE:
	RETVAL = UA_Client_readAccessLevelAttribute(client->cl_client, *nodeId, outAccessLevel);
	XS_pack_UA_Byte(SvRV(ST(2)), *outAccessLevel);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readAccessLevelAttribute_async(client, nodeId, callback, data, outoptReqId)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	SV *				callback
	SV *				data
	OPCUA_Open62541_UInt32		outoptReqId
    PREINIT:
	ClientCallbackData		ccd;
    CODE:
	ccd = newClientCallbackData(callback, ST(0), data);
	RETVAL = UA_Client_readAccessLevelAttribute_async(client->cl_client,
	    *nodeId, clientAsyncReadByteCallback, ccd, outoptReqId);
	if (RETVAL != UA_STATUSCODE_GOOD)
		deleteClientCallbackData(ccd);
	if (outoptReqId != NULL)
		XS_pack_UA_UInt32(SvRV(ST(4)), *outoptReqId);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readBrowseNameAttribute(client, nodeId, outBrowseName)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	OPCUA_Open62541_QualifiedName		outBrowseName
    CODE:
	RETVAL = UA_Client_readBrowseNameAttribute(client->cl_client, *nodeId, outBrowseName);
	XS_pack_UA_QualifiedName(SvRV(ST(2)), *outBrowseName);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readBrowseNameAttribute_async(client, nodeId, callback, data, outoptReqId)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	SV *				callback
	SV *				data
	OPCUA_Open62541_UInt32		outoptReqId
    PREINIT:
	ClientCallbackData		ccd;
    CODE:
	ccd = newClientCallbackData(callback, ST(0), data);
	RETVAL = UA_Client_readBrowseNameAttribute_async(client->cl_client,
	    *nodeId, clientAsyncReadQualifiedNameCallback, ccd, outoptReqId);
	if (RETVAL != UA_STATUSCODE_GOOD)
		deleteClientCallbackData(ccd);
	if (outoptReqId != NULL)
		XS_pack_UA_UInt32(SvRV(ST(4)), *outoptReqId);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readContainsNoLoopsAttribute(client, nodeId, outContainsNoLoops)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	OPCUA_Open62541_Boolean		outContainsNoLoops
    CODE:
	RETVAL = UA_Client_readContainsNoLoopsAttribute(client->cl_client, *nodeId, outContainsNoLoops);
	XS_pack_UA_Boolean(SvRV(ST(2)), *outContainsNoLoops);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readContainsNoLoopsAttribute_async(client, nodeId, callback, data, outoptReqId)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	SV *				callback
	SV *				data
	OPCUA_Open62541_UInt32		outoptReqId
    PREINIT:
	ClientCallbackData		ccd;
    CODE:
	ccd = newClientCallbackData(callback, ST(0), data);
	RETVAL = UA_Client_readContainsNoLoopsAttribute_async(client->cl_client,
	    *nodeId, clientAsyncReadBooleanCallback, ccd, outoptReqId);
	if (RETVAL != UA_STATUSCODE_GOOD)
		deleteClientCallbackData(ccd);
	if (outoptReqId != NULL)
		XS_pack_UA_UInt32(SvRV(ST(4)), *outoptReqId);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readDataTypeAttribute_async(client, nodeId, callback, data, outoptReqId)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	SV *				callback
	SV *				data
	OPCUA_Open62541_UInt32		outoptReqId
    PREINIT:
	ClientCallbackData		ccd;
    CODE:
	ccd = newClientCallbackData(callback, ST(0), data);
	RETVAL = UA_Client_readDataTypeAttribute_async(client->cl_client,
	    *nodeId, clientAsyncReadDataTypeCallback, ccd, outoptReqId);
	if (RETVAL != UA_STATUSCODE_GOOD)
		deleteClientCallbackData(ccd);
	if (outoptReqId != NULL)
		XS_pack_UA_UInt32(SvRV(ST(4)), *outoptReqId);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readDescriptionAttribute(client, nodeId, outDescription)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	OPCUA_Open62541_LocalizedText		outDescription
    CODE:
	RETVAL = UA_Client_readDescriptionAttribute(client->cl_client, *nodeId, outDescription);
	XS_pack_UA_LocalizedText(SvRV(ST(2)), *outDescription);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readDescriptionAttribute_async(client, nodeId, callback, data, outoptReqId)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	SV *				callback
	SV *				data
	OPCUA_Open62541_UInt32		outoptReqId
    PREINIT:
	ClientCallbackData		ccd;
    CODE:
	ccd = newClientCallbackData(callback, ST(0), data);
	RETVAL = UA_Client_readDescriptionAttribute_async(client->cl_client,
	    *nodeId, clientAsyncReadLocalizedTextCallback, ccd, outoptReqId);
	if (RETVAL != UA_STATUSCODE_GOOD)
		deleteClientCallbackData(ccd);
	if (outoptReqId != NULL)
		XS_pack_UA_UInt32(SvRV(ST(4)), *outoptReqId);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readDisplayNameAttribute(client, nodeId, outDisplayName)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	OPCUA_Open62541_LocalizedText		outDisplayName
    CODE:
	RETVAL = UA_Client_readDisplayNameAttribute(client->cl_client, *nodeId, outDisplayName);
	XS_pack_UA_LocalizedText(SvRV(ST(2)), *outDisplayName);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readDisplayNameAttribute_async(client, nodeId, callback, data, outoptReqId)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	SV *				callback
	SV *				data
	OPCUA_Open62541_UInt32		outoptReqId
    PREINIT:
	ClientCallbackData		ccd;
    CODE:
	ccd = newClientCallbackData(callback, ST(0), data);
	RETVAL = UA_Client_readDisplayNameAttribute_async(client->cl_client,
	    *nodeId, clientAsyncReadLocalizedTextCallback, ccd, outoptReqId);
	if (RETVAL != UA_STATUSCODE_GOOD)
		deleteClientCallbackData(ccd);
	if (outoptReqId != NULL)
		XS_pack_UA_UInt32(SvRV(ST(4)), *outoptReqId);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readEventNotifierAttribute(client, nodeId, outEventNotifier)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	OPCUA_Open62541_Byte		outEventNotifier
    CODE:
	RETVAL = UA_Client_readEventNotifierAttribute(client->cl_client, *nodeId, outEventNotifier);
	XS_pack_UA_Byte(SvRV(ST(2)), *outEventNotifier);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readEventNotifierAttribute_async(client, nodeId, callback, data, outoptReqId)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	SV *				callback
	SV *				data
	OPCUA_Open62541_UInt32		outoptReqId
    PREINIT:
	ClientCallbackData		ccd;
    CODE:
	ccd = newClientCallbackData(callback, ST(0), data);
	RETVAL = UA_Client_readEventNotifierAttribute_async(client->cl_client,
	    *nodeId, clientAsyncReadByteCallback, ccd, outoptReqId);
	if (RETVAL != UA_STATUSCODE_GOOD)
		deleteClientCallbackData(ccd);
	if (outoptReqId != NULL)
		XS_pack_UA_UInt32(SvRV(ST(4)), *outoptReqId);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readExecutableAttribute(client, nodeId, outExecutable)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	OPCUA_Open62541_Boolean		outExecutable
    CODE:
	RETVAL = UA_Client_readExecutableAttribute(client->cl_client, *nodeId, outExecutable);
	XS_pack_UA_Boolean(SvRV(ST(2)), *outExecutable);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readExecutableAttribute_async(client, nodeId, callback, data, outoptReqId)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	SV *				callback
	SV *				data
	OPCUA_Open62541_UInt32		outoptReqId
    PREINIT:
	ClientCallbackData		ccd;
    CODE:
	ccd = newClientCallbackData(callback, ST(0), data);
	RETVAL = UA_Client_readExecutableAttribute_async(client->cl_client,
	    *nodeId, clientAsyncReadBooleanCallback, ccd, outoptReqId);
	if (RETVAL != UA_STATUSCODE_GOOD)
		deleteClientCallbackData(ccd);
	if (outoptReqId != NULL)
		XS_pack_UA_UInt32(SvRV(ST(4)), *outoptReqId);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readHistorizingAttribute(client, nodeId, outHistorizing)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	OPCUA_Open62541_Boolean		outHistorizing
    CODE:
	RETVAL = UA_Client_readHistorizingAttribute(client->cl_client, *nodeId, outHistorizing);
	XS_pack_UA_Boolean(SvRV(ST(2)), *outHistorizing);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readHistorizingAttribute_async(client, nodeId, callback, data, outoptReqId)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	SV *				callback
	SV *				data
	OPCUA_Open62541_UInt32		outoptReqId
    PREINIT:
	ClientCallbackData		ccd;
    CODE:
	ccd = newClientCallbackData(callback, ST(0), data);
	RETVAL = UA_Client_readHistorizingAttribute_async(client->cl_client,
	    *nodeId, clientAsyncReadBooleanCallback, ccd, outoptReqId);
	if (RETVAL != UA_STATUSCODE_GOOD)
		deleteClientCallbackData(ccd);
	if (outoptReqId != NULL)
		XS_pack_UA_UInt32(SvRV(ST(4)), *outoptReqId);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readInverseNameAttribute(client, nodeId, outInverseName)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	OPCUA_Open62541_LocalizedText		outInverseName
    CODE:
	RETVAL = UA_Client_readInverseNameAttribute(client->cl_client, *nodeId, outInverseName);
	XS_pack_UA_LocalizedText(SvRV(ST(2)), *outInverseName);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readInverseNameAttribute_async(client, nodeId, callback, data, outoptReqId)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	SV *				callback
	SV *				data
	OPCUA_Open62541_UInt32		outoptReqId
    PREINIT:
	ClientCallbackData		ccd;
    CODE:
	ccd = newClientCallbackData(callback, ST(0), data);
	RETVAL = UA_Client_readInverseNameAttribute_async(client->cl_client,
	    *nodeId, clientAsyncReadLocalizedTextCallback, ccd, outoptReqId);
	if (RETVAL != UA_STATUSCODE_GOOD)
		deleteClientCallbackData(ccd);
	if (outoptReqId != NULL)
		XS_pack_UA_UInt32(SvRV(ST(4)), *outoptReqId);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readIsAbstractAttribute(client, nodeId, outIsAbstract)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	OPCUA_Open62541_Boolean		outIsAbstract
    CODE:
	RETVAL = UA_Client_readIsAbstractAttribute(client->cl_client, *nodeId, outIsAbstract);
	XS_pack_UA_Boolean(SvRV(ST(2)), *outIsAbstract);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readIsAbstractAttribute_async(client, nodeId, callback, data, outoptReqId)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	SV *				callback
	SV *				data
	OPCUA_Open62541_UInt32		outoptReqId
    PREINIT:
	ClientCallbackData		ccd;
    CODE:
	ccd = newClientCallbackData(callback, ST(0), data);
	RETVAL = UA_Client_readIsAbstractAttribute_async(client->cl_client,
	    *nodeId, clientAsyncReadBooleanCallback, ccd, outoptReqId);
	if (RETVAL != UA_STATUSCODE_GOOD)
		deleteClientCallbackData(ccd);
	if (outoptReqId != NULL)
		XS_pack_UA_UInt32(SvRV(ST(4)), *outoptReqId);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readMinimumSamplingIntervalAttribute(client, nodeId, outMinimumSamplingInterval)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	OPCUA_Open62541_Double		outMinimumSamplingInterval
    CODE:
	RETVAL = UA_Client_readMinimumSamplingIntervalAttribute(client->cl_client, *nodeId, outMinimumSamplingInterval);
	XS_pack_UA_Double(SvRV(ST(2)), *outMinimumSamplingInterval);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readMinimumSamplingIntervalAttribute_async(client, nodeId, callback, data, outoptReqId)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	SV *				callback
	SV *				data
	OPCUA_Open62541_UInt32		outoptReqId
    PREINIT:
	ClientCallbackData		ccd;
    CODE:
	ccd = newClientCallbackData(callback, ST(0), data);
	RETVAL = UA_Client_readMinimumSamplingIntervalAttribute_async(client->cl_client,
	    *nodeId, clientAsyncReadDoubleCallback, ccd, outoptReqId);
	if (RETVAL != UA_STATUSCODE_GOOD)
		deleteClientCallbackData(ccd);
	if (outoptReqId != NULL)
		XS_pack_UA_UInt32(SvRV(ST(4)), *outoptReqId);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readNodeClassAttribute(client, nodeId, outNodeClass)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	OPCUA_Open62541_NodeClass		outNodeClass
    CODE:
	RETVAL = UA_Client_readNodeClassAttribute(client->cl_client, *nodeId, outNodeClass);
	XS_pack_UA_NodeClass(SvRV(ST(2)), *outNodeClass);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readNodeClassAttribute_async(client, nodeId, callback, data, outoptReqId)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	SV *				callback
	SV *				data
	OPCUA_Open62541_UInt32		outoptReqId
    PREINIT:
	ClientCallbackData		ccd;
    CODE:
	ccd = newClientCallbackData(callback, ST(0), data);
	RETVAL = UA_Client_readNodeClassAttribute_async(client->cl_client,
	    *nodeId, clientAsyncReadNodeClassCallback, ccd, outoptReqId);
	if (RETVAL != UA_STATUSCODE_GOOD)
		deleteClientCallbackData(ccd);
	if (outoptReqId != NULL)
		XS_pack_UA_UInt32(SvRV(ST(4)), *outoptReqId);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readNodeIdAttribute(client, nodeId, outNodeId)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	OPCUA_Open62541_NodeId		outNodeId
    CODE:
	RETVAL = UA_Client_readNodeIdAttribute(client->cl_client, *nodeId, outNodeId);
	XS_pack_UA_NodeId(SvRV(ST(2)), *outNodeId);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readNodeIdAttribute_async(client, nodeId, callback, data, outoptReqId)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	SV *				callback
	SV *				data
	OPCUA_Open62541_UInt32		outoptReqId
    PREINIT:
	ClientCallbackData		ccd;
    CODE:
	ccd = newClientCallbackData(callback, ST(0), data);
	RETVAL = UA_Client_readNodeIdAttribute_async(client->cl_client,
	    *nodeId, clientAsyncReadNodeIdCallback, ccd, outoptReqId);
	if (RETVAL != UA_STATUSCODE_GOOD)
		deleteClientCallbackData(ccd);
	if (outoptReqId != NULL)
		XS_pack_UA_UInt32(SvRV(ST(4)), *outoptReqId);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readSymmetricAttribute(client, nodeId, outSymmetric)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	OPCUA_Open62541_Boolean		outSymmetric
    CODE:
	RETVAL = UA_Client_readSymmetricAttribute(client->cl_client, *nodeId, outSymmetric);
	XS_pack_UA_Boolean(SvRV(ST(2)), *outSymmetric);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readSymmetricAttribute_async(client, nodeId, callback, data, outoptReqId)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	SV *				callback
	SV *				data
	OPCUA_Open62541_UInt32		outoptReqId
    PREINIT:
	ClientCallbackData		ccd;
    CODE:
	ccd = newClientCallbackData(callback, ST(0), data);
	RETVAL = UA_Client_readSymmetricAttribute_async(client->cl_client,
	    *nodeId, clientAsyncReadBooleanCallback, ccd, outoptReqId);
	if (RETVAL != UA_STATUSCODE_GOOD)
		deleteClientCallbackData(ccd);
	if (outoptReqId != NULL)
		XS_pack_UA_UInt32(SvRV(ST(4)), *outoptReqId);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readUserAccessLevelAttribute(client, nodeId, outUserAccessLevel)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	OPCUA_Open62541_Byte		outUserAccessLevel
    CODE:
	RETVAL = UA_Client_readUserAccessLevelAttribute(client->cl_client, *nodeId, outUserAccessLevel);
	XS_pack_UA_Byte(SvRV(ST(2)), *outUserAccessLevel);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readUserAccessLevelAttribute_async(client, nodeId, callback, data, outoptReqId)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	SV *				callback
	SV *				data
	OPCUA_Open62541_UInt32		outoptReqId
    PREINIT:
	ClientCallbackData		ccd;
    CODE:
	ccd = newClientCallbackData(callback, ST(0), data);
	RETVAL = UA_Client_readUserAccessLevelAttribute_async(client->cl_client,
	    *nodeId, clientAsyncReadByteCallback, ccd, outoptReqId);
	if (RETVAL != UA_STATUSCODE_GOOD)
		deleteClientCallbackData(ccd);
	if (outoptReqId != NULL)
		XS_pack_UA_UInt32(SvRV(ST(4)), *outoptReqId);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readUserExecutableAttribute(client, nodeId, outUserExecutable)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	OPCUA_Open62541_Boolean		outUserExecutable
    CODE:
	RETVAL = UA_Client_readUserExecutableAttribute(client->cl_client, *nodeId, outUserExecutable);
	XS_pack_UA_Boolean(SvRV(ST(2)), *outUserExecutable);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readUserExecutableAttribute_async(client, nodeId, callback, data, outoptReqId)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	SV *				callback
	SV *				data
	OPCUA_Open62541_UInt32		outoptReqId
    PREINIT:
	ClientCallbackData		ccd;
    CODE:
	ccd = newClientCallbackData(callback, ST(0), data);
	RETVAL = UA_Client_readUserExecutableAttribute_async(client->cl_client,
	    *nodeId, clientAsyncReadBooleanCallback, ccd, outoptReqId);
	if (RETVAL != UA_STATUSCODE_GOOD)
		deleteClientCallbackData(ccd);
	if (outoptReqId != NULL)
		XS_pack_UA_UInt32(SvRV(ST(4)), *outoptReqId);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readUserWriteMaskAttribute(client, nodeId, outUserWriteMask)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	OPCUA_Open62541_UInt32		outUserWriteMask
    CODE:
	RETVAL = UA_Client_readUserWriteMaskAttribute(client->cl_client, *nodeId, outUserWriteMask);
	XS_pack_UA_UInt32(SvRV(ST(2)), *outUserWriteMask);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readUserWriteMaskAttribute_async(client, nodeId, callback, data, outoptReqId)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	SV *				callback
	SV *				data
	OPCUA_Open62541_UInt32		outoptReqId
    PREINIT:
	ClientCallbackData		ccd;
    CODE:
	ccd = newClientCallbackData(callback, ST(0), data);
	RETVAL = UA_Client_readUserWriteMaskAttribute_async(client->cl_client,
	    *nodeId, clientAsyncReadUInt32Callback, ccd, outoptReqId);
	if (RETVAL != UA_STATUSCODE_GOOD)
		deleteClientCallbackData(ccd);
	if (outoptReqId != NULL)
		XS_pack_UA_UInt32(SvRV(ST(4)), *outoptReqId);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readValueAttribute(client, nodeId, outValue)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	OPCUA_Open62541_Variant		outValue
    CODE:
	RETVAL = UA_Client_readValueAttribute(client->cl_client, *nodeId, outValue);
	XS_pack_UA_Variant(SvRV(ST(2)), *outValue);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readValueAttribute_async(client, nodeId, callback, data, outoptReqId)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	SV *				callback
	SV *				data
	OPCUA_Open62541_UInt32		outoptReqId
    PREINIT:
	ClientCallbackData		ccd;
    CODE:
	ccd = newClientCallbackData(callback, ST(0), data);
	RETVAL = UA_Client_readValueAttribute_async(client->cl_client,
	    *nodeId, clientAsyncReadVariantCallback, ccd, outoptReqId);
	if (RETVAL != UA_STATUSCODE_GOOD)
		deleteClientCallbackData(ccd);
	if (outoptReqId != NULL)
		XS_pack_UA_UInt32(SvRV(ST(4)), *outoptReqId);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readValueRankAttribute(client, nodeId, outValueRank)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	OPCUA_Open62541_Int32		outValueRank
    CODE:
	RETVAL = UA_Client_readValueRankAttribute(client->cl_client, *nodeId, outValueRank);
	XS_pack_UA_Int32(SvRV(ST(2)), *outValueRank);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readValueRankAttribute_async(client, nodeId, callback, data, outoptReqId)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	SV *				callback
	SV *				data
	OPCUA_Open62541_UInt32		outoptReqId
    PREINIT:
	ClientCallbackData		ccd;
    CODE:
	ccd = newClientCallbackData(callback, ST(0), data);
	RETVAL = UA_Client_readValueRankAttribute_async(client->cl_client,
	    *nodeId, clientAsyncReadInt32Callback, ccd, outoptReqId);
	if (RETVAL != UA_STATUSCODE_GOOD)
		deleteClientCallbackData(ccd);
	if (outoptReqId != NULL)
		XS_pack_UA_UInt32(SvRV(ST(4)), *outoptReqId);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readWriteMaskAttribute(client, nodeId, outWriteMask)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	OPCUA_Open62541_UInt32		outWriteMask
    CODE:
	RETVAL = UA_Client_readWriteMaskAttribute(client->cl_client, *nodeId, outWriteMask);
	XS_pack_UA_UInt32(SvRV(ST(2)), *outWriteMask);
    OUTPUT:
	RETVAL

UA_StatusCode
UA_Client_readWriteMaskAttribute_async(client, nodeId, callback, data, outoptReqId)
	OPCUA_Open62541_Client		client
	OPCUA_Open62541_NodeId		nodeId
	SV *				callback
	SV *				data
	OPCUA_Open62541_UInt32		outoptReqId
    PREINIT:
	ClientCallbackData		ccd;
    CODE:
	ccd = newClientCallbackData(callback, ST(0), data);
	RETVAL = UA_Client_readWriteMaskAttribute_async(client->cl_client,
	    *nodeId, clientAsyncReadUInt32Callback, ccd, outoptReqId);
	if (RETVAL != UA_STATUSCODE_GOOD)
		deleteClientCallbackData(ccd);
	if (outoptReqId != NULL)
		XS_pack_UA_UInt32(SvRV(ST(4)), *outoptReqId);
    OUTPUT:
	RETVAL

# end generated by script/client-read.pl
