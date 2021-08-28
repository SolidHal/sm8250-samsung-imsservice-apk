.class public Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;
.super Ljava/lang/Object;
.source "SocialPresenceCache.java"


# static fields
.field private static final CACHE_SIZE:I = 0xc8

.field private static final LOG_TAG:Ljava/lang/String; = "SocialPresenceCache"

.field private static final PERSIST_MAX_SIZE:I = 0x64

.field private static final PERSIST_TIMEOUT:I = 0x7d0


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsPersistPosted:Z

.field private mPersistTimeout:Z

.field private mPhoneId:I

.field private mPresenceInfoList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/ims/presence/PresenceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPresenceStorage:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;

.field private mPresenceStorageHandler:Landroid/os/Handler;

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

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$1;-><init>(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceInfoList:Ljava/util/LinkedHashMap;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mUriListToUpdate:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mUriListToDelete:Ljava/util/ArrayList;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceStorage:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SocialPresenceStorage"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mThread:Landroid/os/HandlerThread;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mIsPersistPosted:Z

    .line 56
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPersistTimeout:Z

    .line 60
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPhoneId:I

    .line 63
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mContext:Landroid/content/Context;

    .line 64
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPhoneId:I

    .line 65
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->initPresenceStorage()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;)Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    .line 32
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceStorage:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    .line 32
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPersistTimeout:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;
    .param p1, "x1"    # Z

    .line 32
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPersistTimeout:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    .line 32
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mUriListToUpdate:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    .line 32
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPhoneId:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    .line 32
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mIsPersistPosted:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;
    .param p1, "x1"    # Z

    .line 32
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mIsPersistPosted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;
    .param p1, "x1"    # Z

    .line 32
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->tryPersist(Z)V

    return-void
.end method

.method private initPresenceStorage()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 70
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceStorageHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPhoneId:I

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceStorage:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;

    .line 72
    return-void
.end method

.method private resetPresenceStorage()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$2;-><init>(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    return-void
.end method

.method private tryPersist(Z)V
    .locals 2
    .param p1, "force"    # Z

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$3;-><init>(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method


# virtual methods
.method public add(Lcom/sec/ims/presence/PresenceInfo;)V
    .locals 2
    .param p1, "pi"    # Lcom/sec/ims/presence/PresenceInfo;

    .line 115
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/ims/presence/PresenceInfo;->getTelUri()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/presence/PresenceInfo;->getTelUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 119
    .local v0, "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceInfoList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void

    .line 116
    .end local v0    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_1
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceInfoList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 166
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->resetPresenceStorage()V

    .line 167
    return-void
.end method

.method public get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/presence/PresenceInfo;
    .locals 4
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 143
    if-nez p1, :cond_0

    .line 144
    const/4 v0, 0x0

    return-object v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceInfoList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/presence/PresenceInfo;

    .line 147
    .local v0, "pi":Lcom/sec/ims/presence/PresenceInfo;
    if-nez v0, :cond_1

    .line 148
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPhoneId:I

    const-string v2, "SocialPresenceCache"

    const-string v3, "get: not found. presenceInfo from db"

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceStorage:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_1

    .line 151
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceInfoList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_1
    return-object v0
.end method

.method public get(Ljava/util/List;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/ims/presence/PresenceInfo;",
            ">;"
        }
    .end annotation

    .line 158
    .local p1, "telUriList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    if-nez p1, :cond_0

    .line 159
    const/4 v0, 0x0

    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceStorage:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->get(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

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

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mUriListToDelete:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 182
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mUriListToDelete:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 183
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

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mUriListToUpdate:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 176
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mUriListToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 177
    return-object v0
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

    .line 123
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    if-nez p1, :cond_0

    .line 124
    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SocialPresenceCache"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 128
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    .line 129
    .local v1, "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceInfoList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .end local v1    # "uri":Lcom/sec/ims/util/ImsUri;
    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mUriListToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 132
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->tryPersist(Z)V

    .line 134
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialPresenceCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceInfoList:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/presence/PresenceInfo;)V
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "pi"    # Lcom/sec/ims/presence/PresenceInfo;

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceInfoList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mUriListToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->tryPersist(Z)V

    .line 140
    return-void
.end method
