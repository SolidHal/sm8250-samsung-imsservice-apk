.class public Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;
.super Landroid/os/Handler;
.source "NSDSResponseHandler.java"


# static fields
.field private static final KEY_CALLBACK:Ljava/lang/String; = "callback"

.field private static final KEY_MESSAGE_ID_METHOD_BUNDLE:Ljava/lang/String; = "messageIdMethodBundle"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final METHOD_ID_GET_MSISDN:I = 0x3

.field private static final METHOD_ID_MANAGE_CONNECTIVITY:I = 0x2

.field private static final METHOD_ID_MANAGE_LOC_AND_TC:I = 0x5

.field private static final METHOD_ID_MANAGE_PUSH_TOKEN:I = 0x4

.field private static final METHOD_ID_MANAGE_SERVICE:I = 0x6

.field private static final METHOD_ID_REGISTERED_DEVICES:I = 0x8

.field private static final METHOD_ID_REGISTERED_MSISDN:I = 0x7

.field private static final METHOD_ID_REQ_3GPP_AUTH:I = 0x1

.field private static final METHOD_ID_SERVICE_ENTITLEMENT_STATUS:I = 0x9

.field private static final PARSE_REPSONSE:I

.field private static final sMapNSDSMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->sMapNSDSMethods:Ljava/util/Map;

    .line 61
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3gppAuthentication"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->sMapNSDSMethods:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "manageConnectivity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->sMapNSDSMethods:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "getMSISDN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->sMapNSDSMethods:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "managePushToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->sMapNSDSMethods:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "manageLocationAndTC"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->sMapNSDSMethods:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "manageService"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->sMapNSDSMethods:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "registeredMSISDN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->sMapNSDSMethods:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "registeredDevices"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->sMapNSDSMethods:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "serviceEntitlementStatus"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .line 75
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 76
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 78
    return-void
.end method

.method private parseHttpErrorResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Landroid/os/Bundle;
    .locals 3
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 116
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseHttpErrorResponse: status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v0, "httpErrorResponse":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const-string v2, "http_resp_code"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusReason()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http_resp_reason"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-object v0
.end method

.method private parseResponse(Landroid/os/Bundle;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Landroid/os/Bundle;
    .locals 17
    .param p1, "messageIdMethodMap"    # Landroid/os/Bundle;
    .param p2, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 125
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 126
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "parseJsonData: Check for http failure. most likely connection reset by peer"

    invoke-static {v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-object v3

    .line 131
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v4, 0xc8

    if-eq v0, v4, :cond_1

    .line 132
    invoke-direct {v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->parseHttpErrorResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 135
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "jsonData":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 137
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "parseResponse: null json data"

    invoke-static {v0, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-object v3

    .line 142
    :cond_2
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    move-object v5, v0

    .line 143
    .local v5, "parser":Lcom/google/gson/JsonParser;
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    move-object v6, v0

    .line 144
    .local v6, "gson":Lcom/google/gson/Gson;
    const/4 v7, 0x0

    .line 146
    .local v7, "array":Lcom/google/gson/JsonArray;
    :try_start_0
    invoke-virtual {v5, v4}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v7, v0

    .line 150
    nop

    .line 152
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-nez v0, :cond_3

    move-object/from16 v13, p1

    move-object v1, v3

    goto/16 :goto_2

    .line 158
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v8, v0

    .line 159
    .local v8, "responseBundle":Landroid/os/Bundle;
    invoke-virtual {v7}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/gson/JsonElement;

    .line 160
    .local v9, "element":Lcom/google/gson/JsonElement;
    const/4 v10, 0x0

    .line 164
    .local v10, "rsp":Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;
    :try_start_1
    const-class v11, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    invoke-virtual {v6, v9, v11}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v11

    .line 168
    nop

    .line 169
    iget v11, v10, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->messageId:I

    .line 170
    .local v11, "messageId":I
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v13, p1

    invoke-virtual {v13, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 171
    .local v12, "methodName":Ljava/lang/String;
    if-nez v12, :cond_4

    .line 172
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot find method for message id: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-object v3

    .line 176
    :cond_4
    const/4 v14, 0x0

    .line 177
    .local v14, "nsdsResponseForMethod":Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;
    iget-object v15, v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string/jumbo v0, "parseResponse: method: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v10, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 178
    const/high16 v0, 0x140a0000

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ","

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v10, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 180
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->sMapNSDSMethods:Ljava/util/Map;

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 182
    .local v3, "methodId":I
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 208
    :pswitch_0
    :try_start_2
    const-class v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;

    invoke-virtual {v6, v9, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    move-object v14, v0

    .line 209
    goto/16 :goto_1

    .line 205
    :pswitch_1
    const-class v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseRegisteredDevices;

    invoke-virtual {v6, v9, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    move-object v14, v0

    .line 206
    goto/16 :goto_1

    .line 202
    :pswitch_2
    const-class v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseRegisteredMSISDN;

    invoke-virtual {v6, v9, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    move-object v14, v0

    .line 203
    goto :goto_1

    .line 199
    :pswitch_3
    const-class v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageService;

    invoke-virtual {v6, v9, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    move-object v14, v0

    .line 200
    goto :goto_1

    .line 196
    :pswitch_4
    const-class v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;

    invoke-virtual {v6, v9, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    move-object v14, v0

    .line 197
    goto :goto_1

    .line 193
    :pswitch_5
    const-class v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;

    invoke-virtual {v6, v9, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    move-object v14, v0

    .line 194
    goto :goto_1

    .line 190
    :pswitch_6
    const-class v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;

    invoke-virtual {v6, v9, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    move-object v14, v0

    .line 191
    goto :goto_1

    .line 187
    :pswitch_7
    const-class v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;

    invoke-virtual {v6, v9, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    move-object v14, v0

    .line 188
    goto :goto_1

    .line 184
    :pswitch_8
    const-class v0, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;

    invoke-virtual {v6, v9, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;
    :try_end_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v14, v0

    .line 185
    goto :goto_1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    sget-object v15, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Syntax error while parsing individual response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v1, 0x0

    return-object v1

    .line 217
    .end local v0    # "e":Lcom/google/gson/JsonSyntaxException;
    :goto_1
    nop

    .line 218
    if-eqz v14, :cond_5

    .line 219
    iput-object v12, v14, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->method:Ljava/lang/String;

    .line 220
    invoke-virtual {v8, v12, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 222
    .end local v3    # "methodId":I
    .end local v9    # "element":Lcom/google/gson/JsonElement;
    .end local v10    # "rsp":Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;
    .end local v11    # "messageId":I
    .end local v12    # "methodName":Ljava/lang/String;
    .end local v14    # "nsdsResponseForMethod":Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v16

    goto/16 :goto_0

    .line 165
    .restart local v9    # "element":Lcom/google/gson/JsonElement;
    .restart local v10    # "rsp":Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;
    :catch_1
    move-exception v0

    move-object/from16 v13, p1

    .line 166
    .restart local v0    # "e":Lcom/google/gson/JsonSyntaxException;
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Syntax error while parsing generic response"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v1, 0x0

    return-object v1

    .line 223
    .end local v0    # "e":Lcom/google/gson/JsonSyntaxException;
    .end local v9    # "element":Lcom/google/gson/JsonElement;
    .end local v10    # "rsp":Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;
    :cond_6
    move-object/from16 v13, p1

    return-object v8

    .line 152
    .end local v8    # "responseBundle":Landroid/os/Bundle;
    :cond_7
    move-object/from16 v13, p1

    move-object v1, v3

    .line 153
    :goto_2
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "empty result"

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-object v1

    .line 147
    :catch_2
    move-exception v0

    move-object/from16 v13, p1

    .line 148
    .restart local v0    # "e":Lcom/google/gson/JsonSyntaxException;
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot parse result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v1, 0x0

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private toString(I)Ljava/lang/String;
    .locals 1
    .param p1, "responseCode"    # I

    .line 234
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_e

    const/16 v0, 0x3f2

    if-eq p1, v0, :cond_d

    const/16 v0, 0x438

    if-eq p1, v0, :cond_c

    const/16 v0, 0x5dc

    if-eq p1, v0, :cond_b

    const/16 v0, 0x270f

    if-eq p1, v0, :cond_a

    const/16 v0, 0x404

    if-eq p1, v0, :cond_9

    const/16 v0, 0x405

    if-eq p1, v0, :cond_8

    const/16 v0, 0x418

    if-eq p1, v0, :cond_7

    const/16 v0, 0x419

    if-eq p1, v0, :cond_6

    const/16 v0, 0x41d

    if-eq p1, v0, :cond_5

    const/16 v0, 0x41e

    if-eq p1, v0, :cond_4

    const/16 v0, 0x424

    if-eq p1, v0, :cond_3

    const/16 v0, 0x425

    if-eq p1, v0, :cond_2

    const/16 v0, 0x457

    if-eq p1, v0, :cond_1

    const/16 v0, 0x458

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 304
    const-string v0, "ERROR_UNKNOWN"

    return-object v0

    .line 280
    :pswitch_0
    const-string v0, "ERROR_INVALID_SERVICE_NAME"

    return-object v0

    .line 278
    :pswitch_1
    const-string v0, "ERROR_COPY_FORBIDDEN"

    return-object v0

    .line 276
    :pswitch_2
    const-string v0, "ERROR_MAX_SERVICE_INSTANCE_REACHED"

    return-object v0

    .line 274
    :pswitch_3
    const-string v0, "ERROR_INVALID_TARGET_USER"

    return-object v0

    .line 272
    :pswitch_4
    const-string v0, "ERROR_INVALID_TARGET_DEVICEID"

    return-object v0

    .line 270
    :pswitch_5
    const-string v0, "ERROR_INVALID_FINGERPRINT"

    return-object v0

    .line 268
    :pswitch_6
    const-string v0, "ERROR_MAX_SERVICE_REACHED"

    return-object v0

    .line 262
    :pswitch_7
    const-string v0, "ERROR_INVALID_CSR"

    return-object v0

    .line 260
    :pswitch_8
    const-string v0, "ERROR_INVALID_OWNERID"

    return-object v0

    .line 258
    :pswitch_9
    const-string v0, "ERROR_REMOVAL_SERVICE_FAILURE"

    return-object v0

    .line 256
    :pswitch_a
    const-string v0, "ERROR_CERTIFICATE_GENERATION_FAILURE"

    return-object v0

    .line 254
    :pswitch_b
    const-string v0, "ERROR_NO_EPDG"

    return-object v0

    .line 252
    :pswitch_c
    const-string v0, "ERROR_INVALID_DEVICE_ID"

    return-object v0

    .line 248
    :pswitch_d
    const-string v0, "INVALID_CLIENT_ID"

    return-object v0

    .line 246
    :pswitch_e
    const-string v0, "FORBIDDEN_REQUEST"

    return-object v0

    .line 244
    :pswitch_f
    const-string v0, "ERROR_AKA_AUTHENTICATION_FAILED"

    return-object v0

    .line 242
    :pswitch_10
    const-string v0, "ERROR_INVALID_IP_AUTHENTICATION"

    return-object v0

    .line 240
    :pswitch_11
    const-string v0, "ERROR_INVALID_REQUEST"

    return-object v0

    .line 238
    :pswitch_12
    const-string v0, "REQUEST_AKA_CHALLENGE"

    return-object v0

    .line 298
    :cond_0
    const-string v0, "ERROR_3GPP_AUTH_ONGOING"

    return-object v0

    .line 296
    :cond_1
    const-string v0, "ERROR_SERVER_ERROR"

    return-object v0

    .line 292
    :cond_2
    const-string v0, "ERROR_CREATION_FAILURE"

    return-object v0

    .line 290
    :cond_3
    const-string v0, "ERROR_NO_MSISDN_FOUND"

    return-object v0

    .line 288
    :cond_4
    const-string v0, "ERROR_INVALID_DEVICE_GROUP"

    return-object v0

    .line 286
    :cond_5
    const-string v0, "ERROR_INVALID_SERVICE_INSTANCEID"

    return-object v0

    .line 284
    :cond_6
    const-string v0, "ERROR_SERVICE_NOT_PERMITTED"

    return-object v0

    .line 282
    :cond_7
    const-string v0, "ERROR_SERVICE_NOT_ENTITLED"

    return-object v0

    .line 266
    :cond_8
    const-string v0, "ERROR_INVALID_DEVICE_STATUS"

    return-object v0

    .line 264
    :cond_9
    const-string v0, "ERROR_DEVICE_LOCKED"

    return-object v0

    .line 302
    :cond_a
    const-string v0, "ERROR_UNSUPPORTED_OPERATION"

    return-object v0

    .line 300
    :cond_b
    const-string v0, "ERROR_REQUEST_ONGOING"

    return-object v0

    .line 294
    :cond_c
    const-string v0, "ERROR_INVALID_PUSH_TOKEN"

    return-object v0

    .line 250
    :cond_d
    const-string v0, "ERROR_MAX_DEVICE_REACHED"

    return-object v0

    .line 236
    :cond_e
    const-string v0, "REQUEST_SUCCESSFUL"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3fc
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x410
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dump()V
    .locals 3

    .line 227
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 230
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 91
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 92
    .local v0, "data":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 93
    .local v1, "callback":Landroid/os/Message;
    const/4 v2, 0x0

    .line 94
    .local v2, "messageIdMethodMap":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 95
    const-string v3, "callback"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/os/Message;

    .line 96
    const-string v3, "messageIdMethodBundle"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 98
    :cond_0
    if-nez v1, :cond_1

    .line 99
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handleMessage(): callback is null. return..."

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void

    .line 102
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_2

    .line 111
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response for Unknown EricssonNSDSRequest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->parseResponse(Landroid/os/Bundle;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Landroid/os/Bundle;

    move-result-object v3

    .line 105
    .local v3, "responseBundle":Landroid/os/Bundle;
    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 106
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 108
    :cond_3
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 109
    nop

    .line 113
    .end local v3    # "responseBundle":Landroid/os/Bundle;
    :goto_0
    return-void
.end method

.method public obtainParseResponseMessage(Landroid/os/Message;Landroid/os/Bundle;)Landroid/os/Message;
    .locals 3
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "messageIdMethodNameBundle"    # Landroid/os/Bundle;

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 82
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "callback"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 84
    const-string v2, "messageIdMethodBundle"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 86
    return-object v0
.end method
