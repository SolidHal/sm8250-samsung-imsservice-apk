.class public Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;
.super Ljava/lang/Object;
.source "SyncHandlerFactory.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataChangeHandlerPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/ims/cmstore/helper/SyncParam;",
            "Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceDataUpdatePool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/ims/cmstore/helper/SyncParam;",
            "Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

.field private final mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

.field private final mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

.field private mLooper:Landroid/os/Looper;

.field private mSyncHandlerPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/ims/cmstore/helper/SyncParam;",
            "Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/ims/cmstore/LineManager;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "APIEventListener"    # Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;
    .param p4, "uicallback"    # Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;
    .param p5, "linemanager"    # Lcom/sec/internal/ims/cmstore/LineManager;
    .param p6, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mContext:Landroid/content/Context;

    .line 53
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    .line 54
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    .line 55
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    .line 56
    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    .line 57
    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mSyncHandlerPool:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDataChangeHandlerPool:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDeviceDataUpdatePool:Ljava/util/Map;

    .line 61
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->registerLineListener()V

    .line 62
    return-void
.end method

.method private registerLineListener()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/LineManager;->registerLineStatusOberser(Lcom/sec/internal/ims/cmstore/LineManager$LineStatusObserver;)V

    .line 73
    return-void
.end method


# virtual methods
.method public clearAllDataChangeHandlerInstances()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDataChangeHandlerPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 196
    return-void
.end method

.method public clearAllDeviceDataUpdateHandlerInstances()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDeviceDataUpdatePool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 266
    return-void
.end method

.method public clearAllSyncHandlerInstances()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mSyncHandlerPool:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 129
    return-void
.end method

.method public getAllDataChangeHandlerInstances()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;",
            ">;"
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v0, "rel":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDataChangeHandlerPool:Ljava/util/Map;

    .line 186
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 187
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/sec/internal/ims/cmstore/helper/SyncParam;Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 189
    .local v2, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sec/internal/ims/cmstore/helper/SyncParam;Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v2    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sec/internal/ims/cmstore/helper/SyncParam;Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;>;"
    goto :goto_0

    .line 191
    :cond_0
    return-object v0
.end method

.method public getAllDataChangeHandlerInstancesByLine(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;",
            ">;"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v0, "rel":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDataChangeHandlerPool:Ljava/util/Map;

    .line 202
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 203
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/sec/internal/ims/cmstore/helper/SyncParam;Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 205
    .local v2, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sec/internal/ims/cmstore/helper/SyncParam;Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    iget-object v3, v3, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mLine:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    .end local v2    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sec/internal/ims/cmstore/helper/SyncParam;Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;>;"
    :cond_1
    goto :goto_0

    .line 209
    :cond_2
    return-object v0
.end method

.method public getAllDeviceDataUpdateHandlerInstances()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;",
            ">;"
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v0, "rel":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDeviceDataUpdatePool:Ljava/util/Map;

    .line 256
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 257
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/sec/internal/ims/cmstore/helper/SyncParam;Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 259
    .local v2, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sec/internal/ims/cmstore/helper/SyncParam;Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    .end local v2    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sec/internal/ims/cmstore/helper/SyncParam;Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;>;"
    goto :goto_0

    .line 261
    :cond_0
    return-object v0
.end method

.method public getAllDeviceDataUpdateHandlerInstancesByLine(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;",
            ">;"
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v0, "rel":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDeviceDataUpdatePool:Ljava/util/Map;

    .line 273
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 274
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/sec/internal/ims/cmstore/helper/SyncParam;Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 275
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 276
    .local v2, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sec/internal/ims/cmstore/helper/SyncParam;Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    iget-object v3, v3, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mLine:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    .end local v2    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sec/internal/ims/cmstore/helper/SyncParam;Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;>;"
    :cond_1
    goto :goto_0

    .line 280
    :cond_2
    return-object v0
.end method

.method public getAllSyncHandlerInstances()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, "rel":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mSyncHandlerPool:Ljava/util/Map;

    .line 119
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 120
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/sec/internal/ims/cmstore/helper/SyncParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 122
    .local v2, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sec/internal/ims/cmstore/helper/SyncParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v2    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sec/internal/ims/cmstore/helper/SyncParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;>;"
    goto :goto_0

    .line 124
    :cond_0
    return-object v0
.end method

.method public getAllSyncHandlerInstancesByLine(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "rel":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mSyncHandlerPool:Ljava/util/Map;

    .line 135
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 136
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/sec/internal/ims/cmstore/helper/SyncParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 138
    .local v2, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sec/internal/ims/cmstore/helper/SyncParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    iget-object v3, v3, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mLine:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    .end local v2    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sec/internal/ims/cmstore/helper/SyncParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;>;"
    :cond_1
    goto :goto_0

    .line 142
    :cond_2
    return-object v0
.end method

.method public getDataChangeHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;
    .locals 11
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDataChangeHandlerPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDataChangeHandlerPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    return-object v0

    .line 150
    :cond_0
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mLine:Ljava/lang/String;

    .line 151
    .local v0, "line":Ljava/lang/String;
    iget-object v9, p1, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 152
    .local v9, "type":Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$SyncMsgType:[I

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 175
    new-instance v10, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/MessageDataChangeHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v1, v10

    move-object v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/MessageDataChangeHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 177
    .local v1, "defaulthandler":Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDataChangeHandlerPool:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-object v1

    .line 170
    .end local v1    # "defaulthandler":Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;
    :cond_1
    new-instance v10, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/CalllogDataChangeHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->CALLLOG:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v1, v10

    move-object v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/CalllogDataChangeHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 172
    .local v1, "calllog":Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDataChangeHandlerPool:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return-object v1

    .line 165
    .end local v1    # "calllog":Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;
    :cond_2
    new-instance v10, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/FaxDataChangeHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->FAX:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v1, v10

    move-object v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/FaxDataChangeHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 167
    .local v1, "fax":Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDataChangeHandlerPool:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-object v1

    .line 160
    .end local v1    # "fax":Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;
    :cond_3
    new-instance v10, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/VvmDataChangeHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v1, v10

    move-object v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/VvmDataChangeHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 162
    .local v1, "vm":Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDataChangeHandlerPool:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-object v1

    .line 154
    .end local v1    # "vm":Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;
    :cond_4
    new-instance v10, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/MessageDataChangeHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v1, v10

    move-object v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/MessageDataChangeHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 156
    .local v1, "msg":Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDataChangeHandlerPool:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-object v1
.end method

.method public getDeviceDataUpdateHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;
    .locals 11
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    .line 214
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceDataUpdateHandlerInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "handler":Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDeviceDataUpdatePool:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDeviceDataUpdatePool:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    return-object v1

    .line 219
    :cond_0
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mLine:Ljava/lang/String;

    .line 220
    .local v1, "line":Ljava/lang/String;
    iget-object v9, p1, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 221
    .local v9, "type":Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$SyncMsgType:[I

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 243
    new-instance v10, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v2, v10

    move-object v6, v1

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    move-object v0, v10

    .line 245
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDeviceDataUpdatePool:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 238
    :cond_1
    new-instance v10, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->CALLLOG:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v2, v10

    move-object v6, v1

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    move-object v0, v10

    .line 240
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDeviceDataUpdatePool:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    goto :goto_0

    .line 233
    :cond_2
    new-instance v10, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->FAX:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v2, v10

    move-object v6, v1

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    move-object v0, v10

    .line 235
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDeviceDataUpdatePool:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    goto :goto_0

    .line 228
    :cond_3
    new-instance v10, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v2, v10

    move-object v6, v1

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    move-object v0, v10

    .line 230
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDeviceDataUpdatePool:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    goto :goto_0

    .line 223
    :cond_4
    new-instance v10, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v2, v10

    move-object v6, v1

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    move-object v0, v10

    .line 225
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDeviceDataUpdatePool:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    nop

    .line 248
    :goto_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->start()V

    .line 249
    return-object v0
.end method

.method public getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    .locals 11
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mSyncHandlerPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mSyncHandlerPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    return-object v0

    .line 79
    :cond_0
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mLine:Ljava/lang/String;

    .line 80
    .local v0, "line":Ljava/lang/String;
    iget-object v9, p1, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 81
    .local v9, "type":Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$SyncMsgType:[I

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 108
    new-instance v10, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v1, v10

    move-object v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 110
    .local v1, "defaulthandler":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mSyncHandlerPool:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-object v1

    .line 103
    .end local v1    # "defaulthandler":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    :cond_1
    new-instance v10, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/CallLogSyncHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->CALLLOG:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v1, v10

    move-object v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/CallLogSyncHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 105
    .local v1, "calllog":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mSyncHandlerPool:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-object v1

    .line 98
    .end local v1    # "calllog":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    :cond_2
    new-instance v10, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FaxSyncHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->FAX:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v1, v10

    move-object v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FaxSyncHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 100
    .local v1, "fax":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mSyncHandlerPool:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-object v1

    .line 93
    .end local v1    # "fax":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    :cond_3
    new-instance v10, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/VvmSyncHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v1, v10

    move-object v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/VvmSyncHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 95
    .local v1, "vm":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mSyncHandlerPool:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-object v1

    .line 88
    .end local v1    # "vm":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    :cond_4
    new-instance v10, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/VvmGreetingSyncHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v1, v10

    move-object v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/VvmGreetingSyncHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 90
    .local v1, "greeting":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mSyncHandlerPool:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-object v1

    .line 83
    .end local v1    # "greeting":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    :cond_5
    new-instance v10, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v1, v10

    move-object v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 85
    .local v1, "msg":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mSyncHandlerPool:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-object v1
.end method
