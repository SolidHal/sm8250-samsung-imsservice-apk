.class public Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;
.super Ljava/lang/Object;
.source "CapabilitiesCache.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CapabilitiesCache"

.field private static final PERSIST_MAX_SIZE:I = 0x64

.field private static final PERSIST_TIMEOUT:I = 0xbb8


# instance fields
.field private final mCapabilitiesList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/ims/options/Capabilities;",
            ">;"
        }
    .end annotation
.end field

.field private mCapabilityStorage:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

.field private mCapabilityStorageHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mIsPersistPosted:Z

.field private mPersistTimeout:Z

.field private mPhoneId:I

.field private mThread:Landroid/os/HandlerThread;

.field private mUriListToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private mUriListToUpdate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mUriListToUpdate:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mUriListToDelete:Ljava/util/ArrayList;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorage:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    .line 55
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CapabilityStorage"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mThread:Landroid/os/HandlerThread;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mIsPersistPosted:Z

    .line 61
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPersistTimeout:Z

    .line 64
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    .line 67
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mContext:Landroid/content/Context;

    .line 68
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    .line 69
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->initCapabilityStorage()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    .line 44
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorage:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    .line 44
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPersistTimeout:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;
    .param p1, "x1"    # Z

    .line 44
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPersistTimeout:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    .line 44
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mUriListToUpdate:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    .line 44
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    .line 44
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mIsPersistPosted:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;
    .param p1, "x1"    # Z

    .line 44
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mIsPersistPosted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;
    .param p1, "x1"    # Z

    .line 44
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->tryPersist(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    .line 44
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->getAmountCapabilities()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    .line 44
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->getAmountRcsCapabilities()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    .line 44
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getAmountCapabilities()I
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorage:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getAmountCapabilities()I

    move-result v0

    return v0
.end method

.method private getAmountRcsCapabilities()I
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorage:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getAmountRcsCapabilities()I

    move-result v0

    return v0
.end method

.method private hasCapabilities(Lcom/sec/ims/util/ImsUri;)Z
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 335
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initCapabilityStorage()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 74
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorageHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorage:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    .line 76
    return-void
.end method

.method private persistToContactDB(Lcom/sec/ims/options/Capabilities;Z)V
    .locals 2
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "isNotifyUpdated"    # Z

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$4;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;Lcom/sec/ims/options/Capabilities;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    return-void
.end method

.method private resetCapabilityStorage()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$2;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method

.method private tryPersist(Z)V
    .locals 2
    .param p1, "force"    # Z

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$3;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    return-void
.end method


# virtual methods
.method public add(Lcom/sec/ims/options/Capabilities;)V
    .locals 5
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;

    .line 184
    const-string v0, "CapabilitiesCache"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 191
    .local v1, "uri":Lcom/sec/ims/util/ImsUri;
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void

    .line 185
    .end local v1    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_1
    :goto_0
    const-string v1, "add: null CapexInfo."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method public clear()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 340
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->resetCapabilityStorage()V

    .line 341
    return-void
.end method

.method public deleteNonRcsDataFromContactDB()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$5;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$5;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    return-void
.end method

.method public dump()V
    .locals 4

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilitiesCache"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 363
    sget-boolean v0, Lcom/sec/ims/extensions/Extensions$Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/options/Capabilities;

    .line 365
    .local v2, "cap":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .end local v2    # "cap":Lcom/sec/ims/options/Capabilities;
    goto :goto_0

    .line 368
    :cond_0
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public get(I)Lcom/sec/ims/options/Capabilities;
    .locals 6
    .param p1, "id"    # I

    .line 317
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/options/Capabilities;

    .line 318
    .local v1, "capex":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getId()J

    move-result-wide v2

    int-to-long v4, p1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 319
    return-object v1

    .line 321
    .end local v1    # "capex":Lcom/sec/ims/options/Capabilities;
    :cond_0
    goto :goto_0

    .line 322
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get: not found. Id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilitiesCache"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v0, 0x0

    return-object v0
.end method

.method public get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 327
    if-nez p1, :cond_0

    .line 328
    const/4 v0, 0x0

    return-object v0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/options/Capabilities;

    return-object v0
.end method

.method public getCapabilities()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/options/Capabilities;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getRcsUserCapabilities()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/options/Capabilities;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v0, "rcsUsers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/options/Capabilities;

    .line 156
    .local v2, "capex":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 157
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v2    # "capex":Lcom/sec/ims/options/Capabilities;
    :cond_0
    goto :goto_0

    .line 160
    :cond_1
    return-object v0
.end method

.method public getTrashedUriList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mUriListToDelete:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 351
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mUriListToDelete:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 352
    return-object v0
.end method

.method public getUpdatedUriList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mUriListToUpdate:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 345
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mUriListToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 346
    return-object v0
.end method

.method public isAvailable(J)Z
    .locals 2
    .param p1, "features"    # J

    .line 311
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadCapabilityStorage()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 80
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$1;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method

.method public persistCachedUri(Lcom/sec/ims/util/ImsUri;)V
    .locals 3
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 303
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->hasCapabilities(Lcom/sec/ims/util/ImsUri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "persistCachedUri: uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilitiesCache"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mUriListToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->tryPersist(Z)V

    .line 308
    :cond_0
    return-void
.end method

.method public remove(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 197
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    if-nez p1, :cond_0

    .line 198
    return-void

    .line 200
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilitiesCache"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 201
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 202
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    .line 203
    .local v1, "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .end local v1    # "uri":Lcom/sec/ims/util/ImsUri;
    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mUriListToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 206
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->tryPersist(Z)V

    .line 208
    :cond_2
    return-void
.end method

.method public sendRCSCInfoToHQM()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$6;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$6;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CapabilitiesCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/sec/ims/util/ImsUri;JJZLjava/lang/String;JLjava/util/Date;Ljava/util/List;ZLjava/lang/String;I)Z
    .locals 18
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "features"    # J
    .param p4, "availFeatures"    # J
    .param p6, "isPolling"    # Z
    .param p7, "pidf"    # Ljava/lang/String;
    .param p8, "lastSeen"    # J
    .param p10, "timestamp"    # Ljava/util/Date;
    .param p12, "isTokenUsed"    # Z
    .param p13, "extFeature"    # Ljava/lang/String;
    .param p14, "expCapInfoExpiry"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "JJZ",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;Z",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .line 215
    .local p11, "pAssertedIds":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, p8

    move-object/from16 v13, p11

    move-object/from16 v14, p13

    const/4 v15, 0x0

    if-nez v8, :cond_0

    .line 216
    return v15

    .line 219
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->hasCapabilities(Lcom/sec/ims/util/ImsUri;)Z

    move-result v1

    const-string v7, "CapabilitiesCache"

    if-eqz v1, :cond_1

    .line 220
    iget v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update: Known Uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/options/Capabilities;

    move-object v15, v7

    .local v1, "capex":Lcom/sec/ims/options/Capabilities;
    goto :goto_0

    .line 224
    .end local v1    # "capex":Lcom/sec/ims/options/Capabilities;
    :cond_1
    iget v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update: Add new capabilities from Unknown Uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 225
    new-instance v16, Lcom/sec/ims/options/Capabilities;

    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const/16 v17, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object v15, v7

    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Lcom/sec/ims/options/Capabilities;-><init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 226
    .restart local v1    # "capex":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->add(Lcom/sec/ims/options/Capabilities;)V

    .line 229
    :goto_0
    if-nez v1, :cond_2

    .line 230
    iget v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    const-string/jumbo v3, "update: capex is null"

    invoke-static {v15, v2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 231
    const/4 v2, 0x0

    return v2

    .line 234
    :cond_2
    iget v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update: feature changed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 235
    invoke-virtual {v0, v9, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->isAvailable(J)Z

    move-result v2

    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->isAvailable(J)Z

    move-result v3

    if-ne v2, v3, :cond_4

    .line 236
    invoke-virtual {v0, v9, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->isAvailable(J)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v2

    cmp-long v2, v9, v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    .line 238
    .local v2, "hasCapChanged":Z
    :goto_2
    if-eqz p6, :cond_5

    sget-object v3, Lcom/sec/ims/options/Capabilities$FetchType;->FETCH_TYPE_POLL:Lcom/sec/ims/options/Capabilities$FetchType;

    goto :goto_3

    .line 239
    :cond_5
    sget-object v3, Lcom/sec/ims/options/Capabilities$FetchType;->FETCH_TYPE_OTHER:Lcom/sec/ims/options/Capabilities$FetchType;

    :goto_3
    nop

    .line 240
    .local v3, "type":Lcom/sec/ims/options/Capabilities$FetchType;
    invoke-virtual {v1, v3}, Lcom/sec/ims/options/Capabilities;->setFetchType(Lcom/sec/ims/options/Capabilities$FetchType;)V

    .line 241
    move-object/from16 v4, p10

    invoke-virtual {v1, v4}, Lcom/sec/ims/options/Capabilities;->setTimestamp(Ljava/util/Date;)V

    .line 242
    invoke-virtual {v1, v8}, Lcom/sec/ims/options/Capabilities;->setUri(Lcom/sec/ims/util/ImsUri;)V

    .line 243
    invoke-virtual {v1, v9, v10}, Lcom/sec/ims/options/Capabilities;->setFeatures(J)V

    .line 244
    move-wide/from16 v5, p4

    invoke-virtual {v1, v5, v6}, Lcom/sec/ims/options/Capabilities;->setAvailableFeatures(J)V

    .line 245
    invoke-virtual {v0, v9, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->isAvailable(J)Z

    move-result v7

    invoke-virtual {v1, v7}, Lcom/sec/ims/options/Capabilities;->setAvailiable(Z)V

    .line 246
    move-object/from16 v7, p7

    invoke-virtual {v1, v7}, Lcom/sec/ims/options/Capabilities;->setPidf(Ljava/lang/String;)V

    .line 247
    move-object/from16 v16, v3

    .end local v3    # "type":Lcom/sec/ims/options/Capabilities$FetchType;
    .local v16, "type":Lcom/sec/ims/options/Capabilities$FetchType;
    iget v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    invoke-virtual {v1, v3}, Lcom/sec/ims/options/Capabilities;->setPhoneId(I)V

    .line 249
    if-eqz v14, :cond_6

    .line 250
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, ","

    invoke-virtual {v14, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 251
    .local v3, "extFeatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1, v3}, Lcom/sec/ims/options/Capabilities;->setExtFeature(Ljava/util/List;)V

    .line 254
    .end local v3    # "extFeatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update: setting last seen in capabilities "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {v1, v11, v12}, Lcom/sec/ims/options/Capabilities;->setLastSeen(J)V

    .line 256
    move/from16 v3, p12

    invoke-virtual {v1, v3}, Lcom/sec/ims/options/Capabilities;->setIsTokenUsed(Z)V

    .line 257
    move/from16 v4, p14

    invoke-virtual {v1, v4}, Lcom/sec/ims/options/Capabilities;->setExpCapInfoExpiry(I)V

    .line 258
    if-eqz v13, :cond_7

    .line 259
    invoke-virtual {v1, v13}, Lcom/sec/ims/options/Capabilities;->setPAssertedId(Ljava/util/List;)V

    .line 262
    :cond_7
    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getLegacyLatching()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 263
    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    invoke-virtual {v1, v3}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(I)Z

    move-result v3

    if-nez v3, :cond_8

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    .line 264
    invoke-virtual {v1, v3}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(I)Z

    move-result v3

    if-nez v3, :cond_8

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    .line 265
    invoke-virtual {v1, v3}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(I)Z

    move-result v3

    if-nez v3, :cond_8

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    .line 266
    invoke-virtual {v1, v3}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(I)Z

    move-result v3

    if-nez v3, :cond_8

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    .line 267
    invoke-virtual {v1, v3}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 268
    :cond_8
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/ims/options/Capabilities;->setLegacyLatching(Z)V

    .line 269
    iget v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    const-string/jumbo v4, "update: Legacy Latching clear !!"

    invoke-static {v15, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 273
    :cond_9
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mUriListToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->tryPersist(Z)V

    .line 276
    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->persistToContactDB(Lcom/sec/ims/options/Capabilities;Z)V

    .line 277
    return v2
.end method

.method public updateContactInfo(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;

    .line 282
    const/4 v0, 0x0

    .line 284
    .local v0, "isNotifyUpdated":Z
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->hasCapabilities(Lcom/sec/ims/util/ImsUri;)Z

    move-result v1

    const-string v2, "CapabilitiesCache"

    if-eqz v1, :cond_0

    .line 285
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateContactInfo: update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/options/Capabilities;

    .line 288
    .local v1, "capex":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {v1, p2, p3, p4}, Lcom/sec/ims/options/Capabilities;->updateCapabilities(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    .end local v1    # "capex":Lcom/sec/ims/options/Capabilities;
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateContactInfo: new capabilities update for uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 291
    new-instance v1, Lcom/sec/ims/options/Capabilities;

    const-wide/16 v8, -0x1

    move-object v4, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/sec/ims/options/Capabilities;-><init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 292
    .restart local v1    # "capex":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->add(Lcom/sec/ims/options/Capabilities;)V

    .line 295
    :goto_0
    sget-object v2, Lcom/sec/ims/options/Capabilities$FetchType;->FETCH_TYPE_OTHER:Lcom/sec/ims/options/Capabilities$FetchType;

    invoke-virtual {v1, v2}, Lcom/sec/ims/options/Capabilities;->setFetchType(Lcom/sec/ims/options/Capabilities$FetchType;)V

    .line 296
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/ims/options/Capabilities;->setTimestamp(Ljava/util/Date;)V

    .line 297
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/ims/options/Capabilities;->setPhoneId(I)V

    .line 299
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->persistToContactDB(Lcom/sec/ims/options/Capabilities;Z)V

    .line 300
    return-void
.end method
