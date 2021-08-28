.class public Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;
.super Ljava/lang/Object;
.source "CloudMessageServiceWrapper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static mCmsProfileEnabled:Z

.field private static sInstance:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;


# instance fields
.field private mCloudMessageConnection:Landroid/content/ServiceConnection;

.field private mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCmsProfileEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    .line 224
    new-instance v0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$1;-><init>(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageConnection:Landroid/content/ServiceConnection;

    .line 42
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mContext:Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->init()V

    .line 44
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;Lcom/sec/ims/ICentralMsgStoreService;)Lcom/sec/ims/ICentralMsgStoreService;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;
    .param p1, "x1"    # Lcom/sec/ims/ICentralMsgStoreService;

    .line 33
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCmsProfileEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    .line 33
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->serviceNotBindYet()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    monitor-enter v0

    .line 116
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInstance, mCmsProfileEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCmsProfileEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->sInstance:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCmsProfileEnabled:Z

    if-eqz v1, :cond_0

    .line 118
    new-instance v1, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->sInstance:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    .line 120
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->sInstance:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 115
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getJsonString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "dataType"    # Ljava/lang/String;
    .param p2, "message_id"    # I
    .param p3, "imdnId"    # Ljava/lang/String;
    .param p4, "line"    # Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 62
    .local v0, "jsonArrayRowIds":Lcom/google/gson/JsonArray;
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 63
    .local v1, "jsobjct":Lcom/google/gson/JsonObject;
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "correlationId"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string/jumbo v2, "preferred_line"

    invoke-virtual {v1, v2, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 68
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getJsonStringChatIdList(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 103
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 104
    .local v0, "jsonArrayRowIds":Lcom/google/gson/JsonArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 105
    .local v2, "id":Ljava/lang/String;
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 106
    .local v3, "jsobjct":Lcom/google/gson/JsonObject;
    const-string/jumbo v4, "type"

    const-string v5, "CHAT"

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v4, "chatid"

    invoke-virtual {v3, v4, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v4, "correlationId"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string/jumbo v4, "preferred_line"

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 111
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "jsobjct":Lcom/google/gson/JsonObject;
    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getJsonStringMsgImdnList(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 88
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 89
    .local v0, "jsonArrayRowIds":Lcom/google/gson/JsonArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    .local v2, "id":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 91
    goto :goto_0

    .line 93
    :cond_0
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 94
    .local v3, "jsobjct":Lcom/google/gson/JsonObject;
    const-string/jumbo v4, "type"

    const-string v5, "CHAT"

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v4, "correlationId"

    invoke-virtual {v3, v4, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v4, "preferred_line"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 98
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "jsobjct":Lcom/google/gson/JsonObject;
    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getJsonStringMsgList(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 72
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 73
    .local v0, "jsonArrayRowIds":Lcom/google/gson/JsonArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 74
    .local v2, "id":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 75
    goto :goto_0

    .line 77
    :cond_0
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 78
    .local v3, "jsobjct":Lcom/google/gson/JsonObject;
    const-string/jumbo v4, "type"

    const-string v5, "CHAT"

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v4, "id"

    invoke-virtual {v3, v4, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v4, "correlationId"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v4, "preferred_line"

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 83
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "jsobjct":Lcom/google/gson/JsonObject;
    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private init()V
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    if-nez v0, :cond_0

    .line 276
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "bind to cloud message service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/internal/ims/cmstore/CloudMessageService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 284
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "simSatus"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    if-eqz v0, :cond_0

    .line 289
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 290
    .local v0, "jsonObjMsg":Lorg/json/JSONObject;
    const-string/jumbo v1, "sim_status"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    const-string v1, "cms_profile_event"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/ims/ICentralMsgStoreService;->onRCSDBReady(Ljava/lang/String;)V

    .line 295
    .end local v0    # "jsonObjMsg":Lorg/json/JSONObject;
    goto :goto_0

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->serviceNotBindYet()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    goto :goto_1

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "notifyStatusChanged Failed due to Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private serviceNotBindYet()V
    .locals 2

    .line 57
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Service is not binded yet"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public static declared-synchronized setCmsProfileEnabled(Landroid/content/Context;Z)Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isEnabled"    # Z

    const-class v0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCmsProfileEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sput-boolean p1, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCmsProfileEnabled:Z

    .line 50
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->sInstance:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 51
    new-instance v1, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->sInstance:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    .line 53
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->sInstance:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 47
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "isEnabled":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public createParticipant(Ljava/lang/String;)V
    .locals 2
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    if-eqz v0, :cond_0

    .line 189
    const-string v1, "RCSDATA"

    invoke-interface {v0, v1, p1}, Lcom/sec/ims/ICentralMsgStoreService;->createParticipant(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->serviceNotBindYet()V

    .line 194
    :goto_0
    return-void
.end method

.method public createSession(Ljava/lang/String;)V
    .locals 2
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    if-eqz v0, :cond_0

    .line 198
    const-string v1, "RCSDATA"

    invoke-interface {v0, v1, p1}, Lcom/sec/ims/ICentralMsgStoreService;->createSession(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->serviceNotBindYet()V

    .line 203
    :goto_0
    return-void
.end method

.method public deleteRCSMessageListUsingChatId(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    if-eqz v0, :cond_0

    .line 169
    nop

    .line 171
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->getJsonStringChatIdList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 169
    const-string v2, "RCSDATA"

    invoke-interface {v0, v2, v1}, Lcom/sec/ims/ICentralMsgStoreService;->deleteMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->serviceNotBindYet()V

    .line 175
    :goto_0
    return-void
.end method

.method public deleteRCSMessageListUsingImdnId(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    if-eqz v0, :cond_0

    .line 159
    nop

    .line 161
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->getJsonStringMsgImdnList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 159
    const-string v2, "RCSDATA"

    invoke-interface {v0, v2, v1}, Lcom/sec/ims/ICentralMsgStoreService;->deleteMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->serviceNotBindYet()V

    .line 165
    :goto_0
    return-void
.end method

.method public deleteRCSMessageListUsingMsgId(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    if-eqz v0, :cond_0

    .line 149
    nop

    .line 151
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->getJsonStringMsgList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 149
    const-string v2, "RCSDATA"

    invoke-interface {v0, v2, v1}, Lcom/sec/ims/ICentralMsgStoreService;->deleteMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->serviceNotBindYet()V

    .line 155
    :goto_0
    return-void
.end method

.method public onDisableCms()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDisableCms: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v0, "SimReady"

    const-string v1, "CmsProfileDisable"

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public onImsRegistered(Ljava/lang/String;)V
    .locals 3
    .param p1, "lineNum"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsRegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    if-eqz v0, :cond_0

    .line 263
    const-string v1, "RCSDATA"

    invoke-interface {v0, v1, p1}, Lcom/sec/ims/ICentralMsgStoreService;->manualSync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->serviceNotBindYet()V

    .line 268
    :goto_0
    return-void
.end method

.method public onRCSDbReady()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRCSDbReady: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v0, "SimReady"

    const-string v1, "CmsProfileEnable"

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public onSimRemoved()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSimRemoved: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v0, "SimRemoved"

    const-string v1, "CmsProfileDisable"

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCmsProfileEnabled:Z

    .line 222
    return-void
.end method

.method public readRCSMessageList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    if-eqz v0, :cond_0

    .line 179
    nop

    .line 180
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->getJsonStringMsgList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 179
    const-string v2, "RCSDATA"

    invoke-interface {v0, v2, v1}, Lcom/sec/ims/ICentralMsgStoreService;->readMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->serviceNotBindYet()V

    .line 184
    :goto_0
    return-void
.end method

.method public receiveRCSMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "message_id"    # I
    .param p2, "imdnId"    # Ljava/lang/String;
    .param p3, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    if-eqz v0, :cond_0

    .line 126
    nop

    .line 128
    const-string v1, "CHAT"

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->getJsonString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    const-string v2, "RCSDATA"

    invoke-interface {v0, v2, v1}, Lcom/sec/ims/ICentralMsgStoreService;->receivedMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->serviceNotBindYet()V

    .line 133
    :goto_0
    return-void
.end method

.method public sentRCSMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "message_id"    # I
    .param p2, "imdnId"    # Ljava/lang/String;
    .param p3, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    if-eqz v0, :cond_0

    .line 138
    nop

    .line 139
    const-string v1, "CHAT"

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->getJsonString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    const-string v2, "RCSDATA"

    invoke-interface {v0, v2, v1}, Lcom/sec/ims/ICentralMsgStoreService;->sentMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->serviceNotBindYet()V

    .line 144
    :goto_0
    return-void
.end method
