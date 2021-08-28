.class public Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;
.super Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;
.source "NotificationEucWorkflow.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;)V
    .locals 1
    .param p1, "eucrPersistence"    # Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;
    .param p2, "displayManager"    # Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;
    .param p3, "storeAndForward"    # Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;
    .param p4, "factory"    # Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;-><init>(Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;)V

    .line 41
    invoke-static {p4}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    .line 42
    return-void
.end method


# virtual methods
.method public changeLanguage(Ljava/lang/String;)V
    .locals 1
    .param p1, "lang"    # Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;->mLanguageCode:Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->NOTIFICATION:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;->changeLanguage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;)V

    .line 84
    return-void
.end method

.method public createSendResponseCallback()Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;
    .locals 1

    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic discard(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->discard(Ljava/lang/String;)V

    return-void
.end method

.method public handleIncomingEuc(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V
    .locals 5
    .param p1, "eucQuery"    # Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;->mCache:Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;->put(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V

    .line 66
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getEucData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v0

    .line 69
    .local v0, "eucData":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->insertEuc(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    .line 70
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->insertDialogs(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to store EUC with key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getEucData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in persistence: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v1    # "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;->mDisplayManager:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;->mLanguageCode:Ljava/lang/String;

    .line 77
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;->createDisplayManagerRequestCallback(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;

    move-result-object v3

    .line 76
    invoke-interface {v1, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;->display(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;)V

    .line 78
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 5
    .param p1, "ownIdentity"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;->mOwnIdentities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->NOTIFICATION:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 50
    .local v0, "types":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/EucType;>;"
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->NONE:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->NOTIFICATION:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-interface {v1, v2, v3, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getAllEucs(Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 52
    .local v1, "eucList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->NONE:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;->mLanguageCode:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v4, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getDialogsByTypes(Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 55
    .local v2, "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;>;"
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    invoke-interface {v3, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;->combine(Ljava/util/List;Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object v3

    .line 56
    .local v3, "queries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;>;"
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;->loadToCache(Ljava/lang/Iterable;)V

    .line 57
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;->displayQueries(Ljava/lang/Iterable;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v1    # "eucList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;>;"
    .end local v2    # "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;>;"
    .end local v3    # "queries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;>;"
    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain EUCs from persistence: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .end local v1    # "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    :goto_0
    return-void
.end method

.method public bridge synthetic start()V
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->stop()V

    return-void
.end method
