.class public Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;
.super Ljava/lang/Object;
.source "SoftphoneResponseUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PARSER_CREATOR:Lcom/stanfy/gsonxml/XmlParserCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->LOG_TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils$1;

    invoke-direct {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils$1;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->PARSER_CREATOR:Lcom/stanfy/gsonxml/XmlParserCreator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method static createGsonXml(Z)Lcom/stanfy/gsonxml/GsonXml;
    .locals 2
    .param p0, "namespaces"    # Z

    .line 72
    new-instance v0, Lcom/stanfy/gsonxml/GsonXmlBuilder;

    invoke-direct {v0}, Lcom/stanfy/gsonxml/GsonXmlBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->PARSER_CREATOR:Lcom/stanfy/gsonxml/XmlParserCreator;

    invoke-virtual {v0, v1}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->setXmlParserCreator(Lcom/stanfy/gsonxml/XmlParserCreator;)Lcom/stanfy/gsonxml/GsonXmlBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->setTreatNamespaces(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->setSameNameLists(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->create()Lcom/stanfy/gsonxml/GsonXml;

    move-result-object v0

    return-object v0
.end method

.method public static getErrorString(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Ljava/lang/String;
    .locals 6
    .param p0, "httpResponse"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 191
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    .line 192
    .local v0, "status":I
    sget-object v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP Response Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 199
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 200
    const-string v2, "Unable to get response"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 204
    :cond_0
    const/4 v3, 0x0

    .line 205
    .local v3, "exception":Lcom/sec/internal/ims/entitlement/softphone/responses/ExceptionResponse;
    const/16 v4, 0xc8

    if-eq v0, v4, :cond_6

    const/16 v4, 0x198

    if-eq v0, v4, :cond_5

    const/16 v4, 0x19b

    if-eq v0, v4, :cond_4

    const/16 v4, 0x19e

    if-eq v0, v4, :cond_3

    const/16 v4, 0x1f4

    if-eq v0, v4, :cond_2

    const/16 v4, 0x190

    if-eq v0, v4, :cond_6

    const/16 v4, 0x191

    if-eq v0, v4, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 254
    const-string v4, "Unexpected response status."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 248
    :pswitch_0
    const-string v4, "The server, while acting as a gateway or proxy, did not receive a timely response from the upstream server specified by the URI or some other auxiliary server it needed to access in attempting to complete the request."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    goto/16 :goto_0

    .line 245
    :pswitch_1
    const-string v4, "The server is currently unable to receive requests; please retry."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    goto :goto_0

    .line 251
    :pswitch_2
    const-string v4, "The server, while acting as a gateway or proxy, received an invalid response from the upstream server it accessed in attempting to fulfill the request."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    goto :goto_0

    .line 230
    :pswitch_3
    const-string v4, "A request was made of a resource using a request method not supported by that resource."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    goto :goto_0

    .line 227
    :pswitch_4
    const-string v4, "The server has not found anything matching the Request-URI."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    goto :goto_0

    .line 224
    :pswitch_5
    const-string v4, "Access permission error."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    goto :goto_0

    .line 216
    :cond_1
    nop

    .line 217
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/sec/internal/ims/entitlement/softphone/responses/PolicyExceptionResponse;

    invoke-static {v4, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/entitlement/softphone/responses/PolicyExceptionResponse;

    .line 218
    .local v4, "response":Lcom/sec/internal/ims/entitlement/softphone/responses/PolicyExceptionResponse;
    if-eqz v4, :cond_7

    iget-object v5, v4, Lcom/sec/internal/ims/entitlement/softphone/responses/PolicyExceptionResponse;->mRequestError:Lcom/sec/internal/ims/entitlement/softphone/responses/PolicyExceptionResponse$RequestError;

    if-eqz v5, :cond_7

    .line 219
    iget-object v5, v4, Lcom/sec/internal/ims/entitlement/softphone/responses/PolicyExceptionResponse;->mRequestError:Lcom/sec/internal/ims/entitlement/softphone/responses/PolicyExceptionResponse$RequestError;

    iget-object v3, v5, Lcom/sec/internal/ims/entitlement/softphone/responses/PolicyExceptionResponse$RequestError;->mException:Lcom/sec/internal/ims/entitlement/softphone/responses/ExceptionResponse;

    goto :goto_0

    .line 242
    .end local v4    # "response":Lcom/sec/internal/ims/entitlement/softphone/responses/PolicyExceptionResponse;
    :cond_2
    const-string v4, "The server encountered an internal error or timed out; please retry."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    goto :goto_0

    .line 239
    :cond_3
    const-string v4, "The Request-URI is longer than the server is willing to interpret."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    goto :goto_0

    .line 236
    :cond_4
    const-string v4, "The Content-Length header was not specified."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    goto :goto_0

    .line 233
    :cond_5
    const-string v4, "The client did not produce a request within the time that the server was prepared to wait."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    goto :goto_0

    .line 208
    :cond_6
    nop

    .line 209
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/sec/internal/ims/entitlement/softphone/responses/ServiceExceptionResponse;

    invoke-static {v4, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/entitlement/softphone/responses/ServiceExceptionResponse;

    .line 210
    .local v4, "response":Lcom/sec/internal/ims/entitlement/softphone/responses/ServiceExceptionResponse;
    if-eqz v4, :cond_7

    iget-object v5, v4, Lcom/sec/internal/ims/entitlement/softphone/responses/ServiceExceptionResponse;->mRequestError:Lcom/sec/internal/ims/entitlement/softphone/responses/ServiceExceptionResponse$RequestError;

    if-eqz v5, :cond_7

    .line 211
    iget-object v5, v4, Lcom/sec/internal/ims/entitlement/softphone/responses/ServiceExceptionResponse;->mRequestError:Lcom/sec/internal/ims/entitlement/softphone/responses/ServiceExceptionResponse$RequestError;

    iget-object v3, v5, Lcom/sec/internal/ims/entitlement/softphone/responses/ServiceExceptionResponse$RequestError;->mException:Lcom/sec/internal/ims/entitlement/softphone/responses/ExceptionResponse;

    .line 258
    .end local v4    # "response":Lcom/sec/internal/ims/entitlement/softphone/responses/ServiceExceptionResponse;
    :cond_7
    :goto_0
    if-eqz v3, :cond_9

    .line 259
    iget-object v4, v3, Lcom/sec/internal/ims/entitlement/softphone/responses/ExceptionResponse;->mMessageId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/sec/internal/ims/entitlement/softphone/responses/ExceptionResponse;->mText:Ljava/lang/String;

    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget-object v2, v3, Lcom/sec/internal/ims/entitlement/softphone/responses/ExceptionResponse;->mVariables:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 264
    iget-object v2, v3, Lcom/sec/internal/ims/entitlement/softphone/responses/ExceptionResponse;->mVariables:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_8
    iget-object v2, v3, Lcom/sec/internal/ims/entitlement/softphone/responses/ExceptionResponse;->mValues:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 267
    iget-object v2, v3, Lcom/sec/internal/ims/entitlement/softphone/responses/ExceptionResponse;->mValues:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 270
    :cond_9
    nop

    .line 271
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/sec/internal/ims/entitlement/softphone/responses/GeneralErrorResponse;

    invoke-static {v2, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/entitlement/softphone/responses/GeneralErrorResponse;

    .line 272
    .local v2, "response":Lcom/sec/internal/ims/entitlement/softphone/responses/GeneralErrorResponse;
    if-eqz v2, :cond_a

    iget-object v4, v2, Lcom/sec/internal/ims/entitlement/softphone/responses/GeneralErrorResponse;->mError:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 273
    iget-object v4, v2, Lcom/sec/internal/ims/entitlement/softphone/responses/GeneralErrorResponse;->mError:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .end local v2    # "response":Lcom/sec/internal/ims/entitlement/softphone/responses/GeneralErrorResponse;
    :cond_a
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x193
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 7
    .param p0, "httpResponse"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .param p2, "successCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sec/internal/helper/httpclient/HttpResponseParams;",
            "Ljava/lang/Class<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 89
    .local p1, "genericType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 90
    .local v0, "response":Ljava/lang/Object;, "TT;"
    const-string v1, "mStatusCode"

    const-string v2, "mReason"

    const/4 v3, 0x0

    const-string v4, "cannot parse result"

    const-string v5, "mSuccess"

    if-eqz p0, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v6

    if-ne v6, p2, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    sget-object v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseJsonResponse(): parsed response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    if-nez v0, :cond_0

    .line 101
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    goto :goto_1

    .line 103
    :cond_0
    :goto_0
    invoke-virtual {p1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 104
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "field":Ljava/lang/reflect/Field;
    goto :goto_2

    .line 106
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    sget-object v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_2
    goto/16 :goto_4

    .line 110
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    .line 111
    invoke-virtual {p1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 112
    .local v5, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v0, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 113
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 114
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->getErrorString(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 116
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "field":Ljava/lang/reflect/Field;
    goto :goto_3

    .line 117
    :catch_1
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_3
    goto :goto_4

    .line 123
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    .line 124
    invoke-virtual {p1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 125
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v0, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 126
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 127
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    const-string v5, "Null response"

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 129
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 132
    .end local v1    # "field":Ljava/lang/reflect/Field;
    goto :goto_4

    .line 130
    :catch_2
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_4
    return-object v0
.end method

.method public static parseJsonResponse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 57
    .local p1, "genericType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 58
    return-object v0

    .line 60
    :cond_0
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 61
    .local v1, "parser":Lcom/google/gson/JsonParser;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 63
    .local v2, "gson":Lcom/google/gson/Gson;
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 64
    .local v3, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v2, v3, p1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 65
    .end local v3    # "element":Lcom/google/gson/JsonElement;
    :catch_0
    move-exception v3

    .line 66
    .local v3, "e":Lcom/google/gson/JsonSyntaxException;
    sget-object v4, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot parse result"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .end local v3    # "e":Lcom/google/gson/JsonSyntaxException;
    return-object v0
.end method

.method public static parseXmlResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;IZ)Ljava/lang/Object;
    .locals 7
    .param p0, "httpResponse"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .param p2, "successCode"    # I
    .param p3, "namespaces"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sec/internal/helper/httpclient/HttpResponseParams;",
            "Ljava/lang/Class<",
            "TT;>;IZ)TT;"
        }
    .end annotation

    .line 138
    .local p1, "genericType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 139
    .local v0, "response":Ljava/lang/Object;, "TT;"
    const-string v1, "mStatusCode"

    const-string v2, "mReason"

    const/4 v3, 0x0

    const-string v4, "cannot parse result"

    const-string v5, "mSuccess"

    if-eqz p0, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v6

    if-ne v6, p2, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "xml":Ljava/lang/String;
    invoke-static {v1, p1, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->parseXmlResponse(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    .line 152
    if-nez v0, :cond_0

    .line 153
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 157
    :catch_0
    move-exception v2

    goto :goto_1

    .line 155
    :cond_0
    :goto_0
    invoke-virtual {p1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 156
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v2    # "field":Ljava/lang/reflect/Field;
    goto :goto_2

    .line 158
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    sget-object v3, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .end local v1    # "xml":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_2
    goto/16 :goto_4

    .line 162
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    .line 163
    invoke-virtual {p1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 164
    .local v5, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v0, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 165
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 166
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->getErrorString(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 168
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "field":Ljava/lang/reflect/Field;
    goto :goto_3

    .line 169
    :catch_1
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_3
    goto :goto_4

    .line 175
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    .line 176
    invoke-virtual {p1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 177
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v0, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 178
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 179
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    const-string v5, "Null response"

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 181
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 184
    .end local v1    # "field":Ljava/lang/reflect/Field;
    goto :goto_4

    .line 182
    :catch_2
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_4
    return-object v0
.end method

.method public static parseXmlResponse(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 5
    .param p0, "xml"    # Ljava/lang/String;
    .param p2, "namespaces"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 76
    .local p1, "genericType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 77
    return-object v0

    .line 80
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->createGsonXml(Z)Lcom/stanfy/gsonxml/GsonXml;

    move-result-object v1

    .line 81
    .local v1, "gsonXml":Lcom/stanfy/gsonxml/GsonXml;
    invoke-virtual {v1, p0, p1}, Lcom/stanfy/gsonxml/GsonXml;->fromXml(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 82
    .end local v1    # "gsonXml":Lcom/stanfy/gsonxml/GsonXml;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot parse result"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method
