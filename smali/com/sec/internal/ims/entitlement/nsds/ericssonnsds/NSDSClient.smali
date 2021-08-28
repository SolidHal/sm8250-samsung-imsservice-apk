.class public Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;
.super Ljava/lang/Object;
.source "NSDSClient.java"


# static fields
.field private static final DEVICE_ID:Ljava/lang/String; = "device_id"

.field private static final HEADER_X_GENERIC_PROTOCOL_VERSION:Ljava/lang/String; = "x-generic-protocol-version"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final X_GEN_PTC_VER:Ljava/lang/String; = "1.0"

.field private static sNSDSHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sResponseLooper:Landroid/os/Looper;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mRequestUrl:Ljava/lang/String;

.field private mResponseHandler:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;

.field private mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->LOG_TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->sNSDSHeaders:Ljava/util/Map;

    .line 57
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->initNsdsCommonHeaders()V

    .line 58
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->initNsdsResponseLooper()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simManager"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mRequestUrl:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 78
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;

    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->sResponseLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mResponseHandler:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;

    .line 79
    return-void
.end method

.method private buildJSONArrayFromRequests([Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;)Lorg/json/JSONArray;
    .locals 6
    .param p1, "arrRequest"    # [Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "requestJsonArray":Lorg/json/JSONArray;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 240
    .local v1, "gson":Lcom/google/gson/Gson;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 241
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildJSONArrayFromRequests:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    goto :goto_0

    .line 242
    :catch_0
    move-exception v2

    .line 243
    .local v2, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not buld JSONArrayRequests:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v0
.end method

.method private buildMessageIdMethodBundle([Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;)Landroid/os/Bundle;
    .locals 6
    .param p1, "arrRequest"    # [Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;

    .line 169
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 170
    .local v0, "messageIdMethodNameMap":Landroid/os/Bundle;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 171
    .local v3, "request":Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    iget v4, v3, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;->messageId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;->method:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .end local v3    # "request":Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    :cond_0
    return-object v0
.end method

.method private buildNSDSRequestHeaders(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 194
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildNSDSRequestHeaders: version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 196
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->sNSDSHeaders:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 197
    const-string/jumbo v1, "x-generic-protocol-version"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-object v0
.end method

.method private buildNSDSRequestHeaders(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p1, "includeAuthorizationHeader"    # Z
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "imei"    # Ljava/lang/String;
    .param p5, "deviceUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildNSDSRequestHeaders: version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " imei "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "userAgent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 207
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->sNSDSHeaders:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 208
    const-string/jumbo v1, "x-generic-protocol-version"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    if-eqz p4, :cond_0

    .line 210
    const-string v1, "device_id"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_0
    if-eqz p3, :cond_1

    .line 213
    const-string v1, "User-Agent"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_1
    if-eqz p1, :cond_2

    .line 218
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mContext:Landroid/content/Context;

    invoke-static {v1, p5}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSHelper;->getAccessTokenType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "tokenType":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mContext:Landroid/content/Context;

    invoke-static {v2, p5}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSHelper;->getAccessToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "token":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tokenType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\ntoken = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Authorization"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .end local v1    # "tokenType":Ljava/lang/String;
    .end local v2    # "token":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method private getDeviceType()I
    .locals 1

    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method private getEntitlementServerUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 178
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->getMnoStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    .line 180
    .local v0, "mnoStrategy":Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;
    if-nez v0, :cond_0

    .line 181
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->LOG_TAG:Ljava/lang/String;

    const-string v2, "initHttpRequest: mnoStrategy is null"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v1, 0x0

    return-object v1

    .line 185
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->getEntitlementServerUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mRequestUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 187
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mRequestUrl:Ljava/lang/String;

    .line 188
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mURL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_1
    return-object v1
.end method

.method private static initNsdsCommonHeaders()V
    .locals 4

    .line 62
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->sNSDSHeaders:Ljava/util/Map;

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->sNSDSHeaders:Ljava/util/Map;

    const-string v1, "Content-Encoding"

    const-string v3, "gzip"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->sNSDSHeaders:Ljava/util/Map;

    const-string v1, "Accept"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->sNSDSHeaders:Ljava/util/Map;

    const-string v1, "Accept-Encoding"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->sNSDSHeaders:Ljava/util/Map;

    const-string/jumbo v1, "x-generic-protocol-version"

    const-string v2, "1.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method private static initNsdsResponseLooper()V
    .locals 2

    .line 70
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->LOG_TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 72
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->sResponseLooper:Landroid/os/Looper;

    .line 73
    return-void
.end method


# virtual methods
.method public buildAuthenticationRequest(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;
    .locals 4
    .param p1, "messageId"    # I
    .param p2, "isAkaAuth"    # Z
    .param p3, "akaChallengeResp"    # Ljava/lang/String;
    .param p4, "akaToken"    # Ljava/lang/String;
    .param p5, "deviceName"    # Ljava/lang/String;
    .param p6, "imsiEap"    # Ljava/lang/String;
    .param p7, "deviceId"    # Ljava/lang/String;

    .line 263
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;-><init>()V

    .line 264
    .local v0, "request":Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;
    iput p1, v0, Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;->messageId:I

    .line 265
    const-string v1, "3gppAuthentication"

    iput-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;->method:Ljava/lang/String;

    .line 266
    iput-object p7, v0, Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;->deviceId:Ljava/lang/String;

    .line 267
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->getDeviceType()I

    move-result v1

    iput v1, v0, Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;->deviceType:I

    .line 268
    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;->osType:I

    .line 269
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    iput-object p5, v0, Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;->deviceName:Ljava/lang/String;

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;->deviceName:Ljava/lang/String;

    .line 274
    :goto_0
    if-eqz p2, :cond_1

    .line 275
    iput-object p6, v0, Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;->imsiEap:Ljava/lang/String;

    .line 276
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildAuthenticationRequest getimsi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;->imsiEap:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildAuthenticationRequest imsi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;->imsiEap:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iput-object p4, v0, Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;->akaToken:Ljava/lang/String;

    .line 280
    iput-object p3, v0, Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;->akaChallengeRsp:Ljava/lang/String;

    .line 281
    return-object v0
.end method

.method public buildGetMSISDNRequest(ILjava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/RequestGetMSISDN;
    .locals 2
    .param p1, "messageId"    # I
    .param p2, "deviceId"    # Ljava/lang/String;

    .line 314
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestGetMSISDN;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/entitilement/data/RequestGetMSISDN;-><init>()V

    .line 315
    .local v0, "request":Lcom/sec/internal/constants/ims/entitilement/data/RequestGetMSISDN;
    iput p1, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestGetMSISDN;->messageId:I

    .line 316
    const-string v1, "getMSISDN"

    iput-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestGetMSISDN;->method:Ljava/lang/String;

    .line 317
    iput-object p2, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestGetMSISDN;->deviceId:Ljava/lang/String;

    .line 318
    return-object v0
.end method

.method public buildManageConnectivityRequest(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity;
    .locals 2
    .param p1, "messageId"    # I
    .param p2, "operation"    # I
    .param p3, "vimsi"    # Ljava/lang/String;
    .param p4, "remoteDeviceId"    # Ljava/lang/String;
    .param p5, "deviceGroup"    # Ljava/lang/String;
    .param p6, "csr"    # Ljava/lang/String;
    .param p7, "deviceId"    # Ljava/lang/String;

    .line 287
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity;-><init>()V

    .line 288
    .local v0, "request":Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity;
    iput p1, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity;->messageId:I

    .line 289
    const-string v1, "manageConnectivity"

    iput-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity;->method:Ljava/lang/String;

    .line 290
    iput-object p7, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity;->deviceId:Ljava/lang/String;

    .line 291
    iput p2, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity;->operation:I

    .line 292
    iput-object p3, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity;->vimsi:Ljava/lang/String;

    .line 293
    iput-object p4, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity;->remoteDeviceId:Ljava/lang/String;

    .line 294
    iput-object p5, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity;->deviceGroup:Ljava/lang/String;

    .line 295
    iput-object p6, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity;->csr:Ljava/lang/String;

    .line 296
    return-object v0
.end method

.method public buildManageLocationAndTCRequest(ILjava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/RequestManageLocationAndTC;
    .locals 2
    .param p1, "messageId"    # I
    .param p2, "serviceFingerPrint"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;

    .line 336
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageLocationAndTC;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageLocationAndTC;-><init>()V

    .line 337
    .local v0, "request":Lcom/sec/internal/constants/ims/entitilement/data/RequestManageLocationAndTC;
    iput p1, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageLocationAndTC;->messageId:I

    .line 338
    const-string v1, "manageLocationAndTC"

    iput-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageLocationAndTC;->method:Ljava/lang/String;

    .line 339
    iput-object p3, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageLocationAndTC;->deviceId:Ljava/lang/String;

    .line 340
    iput-object p2, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManageLocationAndTC;->serviceFingerprint:Ljava/lang/String;

    .line 341
    return-object v0
.end method

.method public buildManagePushTokenRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/RequestManagePushToken;
    .locals 2
    .param p1, "messageId"    # I
    .param p2, "msisdn"    # Ljava/lang/String;
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "clientId"    # Ljava/lang/String;
    .param p5, "operation"    # I
    .param p6, "pushToken"    # Ljava/lang/String;
    .param p7, "deviceId"    # Ljava/lang/String;

    .line 301
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManagePushToken;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/entitilement/data/RequestManagePushToken;-><init>()V

    .line 302
    .local v0, "request":Lcom/sec/internal/constants/ims/entitilement/data/RequestManagePushToken;
    iput p1, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManagePushToken;->messageId:I

    .line 303
    const-string v1, "managePushToken"

    iput-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManagePushToken;->method:Ljava/lang/String;

    .line 304
    iput-object p7, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManagePushToken;->deviceId:Ljava/lang/String;

    .line 305
    iput-object p2, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManagePushToken;->msisdn:Ljava/lang/String;

    .line 306
    iput-object p3, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManagePushToken;->serviceName:Ljava/lang/String;

    .line 307
    iput-object p4, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManagePushToken;->clientId:Ljava/lang/String;

    .line 308
    iput p5, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManagePushToken;->operation:I

    .line 309
    iput-object p6, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestManagePushToken;->pushToken:Ljava/lang/String;

    .line 310
    return-object v0
.end method

.method public buildRegisteredMSISDNRequest(ILjava/lang/String;ILjava/lang/Boolean;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/RequestRegisteredMSISDN;
    .locals 2
    .param p1, "messageId"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "operation"    # I
    .param p4, "isAvailable"    # Ljava/lang/Boolean;
    .param p5, "deviceId"    # Ljava/lang/String;

    .line 323
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestRegisteredMSISDN;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/entitilement/data/RequestRegisteredMSISDN;-><init>()V

    .line 324
    .local v0, "request":Lcom/sec/internal/constants/ims/entitilement/data/RequestRegisteredMSISDN;
    iput p1, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestRegisteredMSISDN;->messageId:I

    .line 325
    const-string/jumbo v1, "registeredMSISDN"

    iput-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestRegisteredMSISDN;->method:Ljava/lang/String;

    .line 326
    iput-object p5, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestRegisteredMSISDN;->deviceId:Ljava/lang/String;

    .line 327
    iput p3, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestRegisteredMSISDN;->operation:I

    .line 328
    iput-object p2, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestRegisteredMSISDN;->serviceName:Ljava/lang/String;

    .line 330
    iput-object p4, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestRegisteredMSISDN;->isAvailable:Ljava/lang/Boolean;

    .line 331
    return-object v0
.end method

.method public buildServiceEntitlementStatusRequest(ILjava/util/ArrayList;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/RequestServiceEntitlementStatus;
    .locals 2
    .param p1, "messageId"    # I
    .param p3, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/constants/ims/entitilement/data/RequestServiceEntitlementStatus;"
        }
    .end annotation

    .line 346
    .local p2, "serviceEntitlementList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestServiceEntitlementStatus;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/entitilement/data/RequestServiceEntitlementStatus;-><init>()V

    .line 347
    .local v0, "request":Lcom/sec/internal/constants/ims/entitilement/data/RequestServiceEntitlementStatus;
    iput p1, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestServiceEntitlementStatus;->messageId:I

    .line 348
    const-string/jumbo v1, "serviceEntitlementStatus"

    iput-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestServiceEntitlementStatus;->method:Ljava/lang/String;

    .line 349
    iput-object p3, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestServiceEntitlementStatus;->deviceId:Ljava/lang/String;

    .line 350
    iput-object p2, v0, Lcom/sec/internal/constants/ims/entitilement/data/RequestServiceEntitlementStatus;->serviceList:Ljava/util/ArrayList;

    .line 351
    return-object v0
.end method

.method public executeRequestCollection([Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "arrRequest"    # [Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    .param p2, "callback"    # Landroid/os/Message;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "imsi"    # Ljava/lang/String;
    .param p5, "deviceUid"    # Ljava/lang/String;

    .line 112
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildJSONArrayFromRequests([Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;)Lorg/json/JSONArray;

    move-result-object v9

    .line 114
    .local v9, "requestJsonArray":Lorg/json/JSONArray;
    if-eqz v9, :cond_0

    .line 115
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildMessageIdMethodBundle([Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;)Landroid/os/Bundle;

    move-result-object v10

    .line 117
    .local v10, "messageIdMethodNameMap":Landroid/os/Bundle;
    new-instance v2, Lcom/sec/internal/ims/entitlement/util/HttpHelper;

    invoke-direct {v2}, Lcom/sec/internal/ims/entitlement/util/HttpHelper;-><init>()V

    .line 118
    .local v2, "httpHelper":Lcom/sec/internal/ims/entitlement/util/HttpHelper;
    move-object/from16 v11, p3

    invoke-direct {v0, v11}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildNSDSRequestHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    .line 119
    .local v12, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->getInstance()Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;

    move-result-object v13

    .line 120
    .local v13, "nsdsNetworkInfoManager":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;
    move-object/from16 v14, p4

    move-object/from16 v15, p5

    invoke-direct {v0, v14, v15}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->getEntitlementServerUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mResponseHandler:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;

    .line 121
    invoke-virtual {v4, v1, v10}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->obtainParseResponseMessage(Landroid/os/Message;Landroid/os/Bundle;)Landroid/os/Message;

    move-result-object v6

    iget-object v4, v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 122
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v13, v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->getSocketFactory(I)Ljavax/net/SocketFactory;

    move-result-object v7

    iget-object v4, v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 123
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v13, v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->getDns(I)Lcom/squareup/okhttp/Dns;

    move-result-object v8

    .line 120
    move-object v4, v12

    move-object v5, v9

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/entitlement/util/HttpHelper;->executeNSDSRequest(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONArray;Landroid/os/Message;Ljavax/net/SocketFactory;Lcom/squareup/okhttp/Dns;)V

    .line 124
    .end local v2    # "httpHelper":Lcom/sec/internal/ims/entitlement/util/HttpHelper;
    .end local v10    # "messageIdMethodNameMap":Landroid/os/Bundle;
    .end local v12    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "nsdsNetworkInfoManager":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;
    goto :goto_0

    .line 125
    :cond_0
    move-object/from16 v11, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->LOG_TAG:Ljava/lang/String;

    const-string v3, "executeRequestCollection: requestJsonArray is null"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->sendToTarget()V

    .line 129
    :goto_0
    return-void
.end method

.method public executeRequestCollection([Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;Landroid/os/Message;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "arrRequest"    # [Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    .param p2, "callback"    # Landroid/os/Message;
    .param p3, "includeAuthorizationHeader"    # Z
    .param p4, "version"    # Ljava/lang/String;
    .param p5, "userAgent"    # Ljava/lang/String;
    .param p6, "imei"    # Ljava/lang/String;
    .param p7, "deviceId"    # Ljava/lang/String;
    .param p8, "imsi"    # Ljava/lang/String;

    .line 149
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildJSONArrayFromRequests([Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;)Lorg/json/JSONArray;

    move-result-object v15

    .line 151
    .local v15, "requestJsonArray":Lorg/json/JSONArray;
    if-eqz v15, :cond_0

    .line 152
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildMessageIdMethodBundle([Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;)Landroid/os/Bundle;

    move-result-object v14

    .line 154
    .local v14, "messageIdMethodNameMap":Landroid/os/Bundle;
    new-instance v8, Lcom/sec/internal/ims/entitlement/util/HttpHelper;

    invoke-direct {v8}, Lcom/sec/internal/ims/entitlement/util/HttpHelper;-><init>()V

    .line 155
    .local v8, "httpHelper":Lcom/sec/internal/ims/entitlement/util/HttpHelper;
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildNSDSRequestHeaders(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 156
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->getInstance()Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;

    move-result-object v1

    .line 157
    .local v1, "nsdsNetworkInfoManager":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;
    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-direct {v6, v3, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->getEntitlementServerUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v4, v6, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mResponseHandler:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;

    .line 158
    invoke-virtual {v4, v7, v14}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;->obtainParseResponseMessage(Landroid/os/Message;Landroid/os/Bundle;)Landroid/os/Message;

    move-result-object v12

    iget-object v4, v6, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 159
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->getSocketFactory(I)Ljavax/net/SocketFactory;

    move-result-object v13

    iget-object v4, v6, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 160
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->getDns(I)Lcom/squareup/okhttp/Dns;

    move-result-object v4

    .line 157
    move-object v10, v0

    move-object v11, v15

    move-object v5, v14

    .end local v14    # "messageIdMethodNameMap":Landroid/os/Bundle;
    .local v5, "messageIdMethodNameMap":Landroid/os/Bundle;
    move-object v14, v4

    invoke-virtual/range {v8 .. v14}, Lcom/sec/internal/ims/entitlement/util/HttpHelper;->executeNSDSRequest(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONArray;Landroid/os/Message;Ljavax/net/SocketFactory;Lcom/squareup/okhttp/Dns;)V

    .line 161
    .end local v0    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "nsdsNetworkInfoManager":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;
    .end local v5    # "messageIdMethodNameMap":Landroid/os/Bundle;
    .end local v8    # "httpHelper":Lcom/sec/internal/ims/entitlement/util/HttpHelper;
    goto :goto_0

    .line 162
    :cond_0
    move-object/from16 v2, p7

    move-object/from16 v3, p8

    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->LOG_TAG:Ljava/lang/String;

    const-string v1, "executeRequestCollection: requestJsonArray is null"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x0

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Message;->sendToTarget()V

    .line 166
    :goto_0
    return-void
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/DeviceNameHelper;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHandler()Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mResponseHandler:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSResponseHandler;

    return-object v0
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestUrl"    # Ljava/lang/String;

    .line 355
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->mRequestUrl:Ljava/lang/String;

    .line 356
    return-void
.end method
