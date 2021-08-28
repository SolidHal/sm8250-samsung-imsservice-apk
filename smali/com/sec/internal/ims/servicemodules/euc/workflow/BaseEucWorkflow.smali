.class abstract Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;
.super Ljava/lang/Object;
.source "BaseEucWorkflow.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected final mCache:Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;

.field final mDisplayManager:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;

.field final mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

.field mHandleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;",
            "Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;",
            ">;"
        }
    .end annotation
.end field

.field mLanguageCode:Ljava/lang/String;

.field mOwnIdentities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoreAndForward:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;)V
    .locals 1
    .param p1, "eucPersistence"    # Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;
    .param p2, "displayManager"    # Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;
    .param p3, "storeAndForward"    # Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    .line 66
    invoke-static {p2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mDisplayManager:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;

    .line 67
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mStoreAndForward:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;

    .line 68
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/cache/EucCache;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/euc/cache/EucCache;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mCache:Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mHandleMap:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mOwnIdentities:Ljava/util/List;

    .line 71
    const-string v0, "def"

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mLanguageCode:Ljava/lang/String;

    .line 72
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private replaceDisplay(Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    .param p2, "language"    # Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mDisplayManager:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;->hideAllForType(Lcom/sec/internal/ims/servicemodules/euc/data/EucType;)V

    .line 159
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mCache:Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;->getAllByType(Lcom/sec/internal/ims/servicemodules/euc/data/EucType;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->displayQueries(Ljava/lang/Iterable;Ljava/lang/String;)V

    .line 160
    return-void
.end method


# virtual methods
.method changeLanguage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;)V
    .locals 11
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mCache:Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;

    invoke-interface {v1, p2}, Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;->getAllByType(Lcom/sec/internal/ims/servicemodules/euc/data/EucType;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    .line 98
    .local v2, "euc":Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    invoke-interface {v2, p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->hasDialog(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getEucData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v2    # "euc":Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    :cond_0
    goto :goto_0

    .line 104
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mOwnIdentities:Ljava/util/List;

    invoke-interface {v1, v0, p2, p1, v2}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getDialogs(Ljava/util/List;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 108
    .local v1, "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    const-string v5, "No dialogs found for given EUCRs, it should not happen!"

    invoke-static {v2, v5}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 110
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    .line 111
    .local v5, "dialog":Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    invoke-interface {v5}, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v6

    .line 112
    .local v6, "eucMessageKey":Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mCache:Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;

    invoke-interface {v7, v6}, Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;->get(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    move-result-object v7

    .line 113
    .local v7, "query":Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    if-eqz v7, :cond_3

    move v8, v3

    goto :goto_3

    :cond_3
    move v8, v4

    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No query in cache for id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->getEucId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ". Should not happen!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 113
    invoke-static {v8, v9}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 115
    invoke-interface {v7, v5}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->addDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;)V
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v5    # "dialog":Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    .end local v6    # "eucMessageKey":Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    .end local v7    # "query":Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    goto :goto_2

    .line 110
    .end local v1    # "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;>;"
    :cond_4
    goto :goto_5

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->LOG_TAG:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "idList"

    goto :goto_4

    .line 123
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOwnIdentities list is empty - wrong argument in query to persistence: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    :goto_4
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 117
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 118
    .local v1, "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain dialogs data for type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " language="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from persistence: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v1    # "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    :goto_5
    nop

    .line 126
    :goto_6
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->replaceDisplay(Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;)V

    .line 128
    :cond_6
    return-void
.end method

.method createDisplayManagerRequestCallback(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;
    .locals 10
    .param p1, "euc"    # Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    .line 201
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getEucData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v6

    .line 202
    .local v6, "eucData":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    invoke-interface {v6}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getId()Ljava/lang/String;

    move-result-object v7

    .line 203
    .local v7, "eucId":Ljava/lang/String;
    invoke-interface {v6}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object v8

    .line 204
    .local v8, "eucType":Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    new-instance v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-interface {v6}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-interface {v6}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-direct {v3, v7, v0, v8, v1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Lcom/sec/ims/util/ImsUri;)V

    .line 207
    .local v3, "eucMessageKey":Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    new-instance v9, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v8

    move-object v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow$1;-><init>(Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Ljava/lang/String;)V

    return-object v9
.end method

.method abstract createSendResponseCallback()Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;
.end method

.method public discard(Ljava/lang/String;)V
    .locals 3
    .param p1, "ownIdentity"    # Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mHandleMap:Ljava/util/Map;

    .line 254
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 255
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 257
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->getOwnIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;

    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;->invalidate()V

    .line 259
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 261
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;>;"
    :cond_0
    goto :goto_0

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mDisplayManager:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;

    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;->hideAllForOwnIdentity(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mCache:Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;

    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;->clearAllForOwnIdentity(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mOwnIdentities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method displayQueries(Ljava/lang/Iterable;Ljava/lang/String;)V
    .locals 5
    .param p2, "lang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 137
    .local p1, "eucQueries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    .line 138
    .local v1, "query":Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    invoke-interface {v1, p2}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getDialogData(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    move-result-object v2

    .line 139
    .local v2, "dialogData":Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 140
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mDisplayManager:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->createDisplayManagerRequestCallback(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;

    move-result-object v4

    invoke-interface {v3, v1, p2, v4}, Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;->display(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;)V

    .line 142
    .end local v1    # "query":Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    .end local v2    # "dialogData":Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    :cond_1
    goto :goto_0

    .line 143
    :cond_2
    return-void
.end method

.method loadToCache(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p1, "eucQueries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    .line 81
    .local v1, "query":Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mCache:Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;

    invoke-interface {v2, v1}, Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;->put(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V

    .line 82
    .end local v1    # "query":Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method sendResponse(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;)V
    .locals 7
    .param p1, "eucData"    # Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .param p2, "response"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;
    .param p3, "pin"    # Ljava/lang/String;

    .line 172
    if-nez p3, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mStoreAndForward:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;

    .line 174
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->createSendResponseCallback()Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;

    move-result-object v1

    .line 173
    invoke-interface {v0, p1, p2, v1}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;->sendResponse(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;)Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;

    move-result-object v0

    .local v0, "handle":Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;
    goto :goto_0

    .line 176
    .end local v0    # "handle":Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mStoreAndForward:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;

    .line 177
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->createSendResponseCallback()Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;

    move-result-object v1

    .line 176
    invoke-interface {v0, p1, p2, p3, v1}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;->sendResponse(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;)Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;

    move-result-object v0

    .line 179
    .restart local v0    # "handle":Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;
    :goto_0
    if-eqz v0, :cond_1

    .line 180
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mHandleMap:Ljava/util/Map;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object v5

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Lcom/sec/ims/util/ImsUri;)V

    .line 180
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 183
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Handle is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_1
    return-void
.end method

.method public start()V
    .locals 0

    .line 271
    return-void
.end method

.method public stop()V
    .locals 0

    .line 276
    return-void
.end method
