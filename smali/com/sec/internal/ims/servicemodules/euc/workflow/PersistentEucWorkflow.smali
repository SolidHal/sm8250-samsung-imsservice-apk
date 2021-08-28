.class public Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;
.super Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;
.source "PersistentEucWorkflow.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;)V
    .locals 1
    .param p1, "eucrPersistence"    # Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;
    .param p2, "displayManager"    # Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;
    .param p3, "factory"    # Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;
    .param p4, "storeAndForward"    # Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;

    .line 45
    invoke-direct {p0, p1, p2, p4}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;-><init>(Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;)V

    .line 46
    invoke-static {p3}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    .line 47
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public changeLanguage(Ljava/lang/String;)V
    .locals 1
    .param p1, "lang"    # Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mLanguageCode:Ljava/lang/String;

    .line 206
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->changeLanguage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;)V

    .line 207
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->ACKNOWLEDGEMENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->changeLanguage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;)V

    .line 208
    return-void
.end method

.method public createSendResponseCallback()Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;
    .locals 1

    .line 140
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$1;-><init>(Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;)V

    return-object v0
.end method

.method public bridge synthetic discard(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->discard(Ljava/lang/String;)V

    return-void
.end method

.method public handleIncomingEuc(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V
    .locals 8
    .param p1, "eucQuery"    # Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    .line 93
    const-string v0, " in persistence: "

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mCache:Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;

    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;->put(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V

    .line 94
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getEucData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v1

    .line 95
    .local v1, "eucData":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getId()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "eucId":Ljava/lang/String;
    new-instance v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    .line 98
    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Lcom/sec/ims/util/ImsUri;)V

    .line 108
    .local v3, "persistentMessageKey":Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    :try_start_0
    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->ACKNOWLEDGEMENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mCache:Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;

    .line 109
    invoke-interface {v4, v3}, Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;->get(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 110
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mDisplayManager:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;

    invoke-interface {v4, v3}, Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;->hide(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)V

    .line 111
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mCache:Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;

    invoke-interface {v4, v3}, Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;->remove(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    .line 112
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->DISMISSED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    const/4 v6, 0x0

    invoke-interface {v4, v3, v5, v6}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->updateEuc(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    goto :goto_0

    .line 114
    :catch_0
    move-exception v4

    .line 115
    .local v4, "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    sget-object v5, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to update EUC with id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v5, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to update EUC with key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v4    # "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v4, v1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->insertEuc(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    .line 123
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v4, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->insertDialogs(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V
    :try_end_1
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    goto :goto_1

    .line 124
    :catch_1
    move-exception v4

    .line 125
    .restart local v4    # "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    sget-object v5, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to insert EUC with id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v5, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to insert EUC with key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .end local v4    # "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mLanguageCode:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getDialogData(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    move-result-object v0

    .line 132
    .local v0, "dialogData":Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 133
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mDisplayManager:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mLanguageCode:Ljava/lang/String;

    .line 134
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->createDisplayManagerRequestCallback(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;

    move-result-object v6

    .line 133
    invoke-interface {v4, p1, v5, v6}, Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;->display(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;)V

    .line 136
    :cond_2
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 8
    .param p1, "ownIdentity"    # Ljava/lang/String;

    .line 51
    const-string v0, "Unable to obtain EUCs from persistence: "

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mOwnIdentities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    const/4 v1, 0x2

    new-array v2, v1, [Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->ACKNOWLEDGEMENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 57
    .local v2, "types":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/EucType;>;"
    const/4 v3, 0x3

    :try_start_0
    new-array v3, v3, [Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    sget-object v6, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ACCEPTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    aput-object v6, v3, v4

    sget-object v4, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->REJECTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    aput-object v4, v3, v5

    sget-object v4, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->NONE:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    aput-object v4, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 60
    .local v1, "states":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/EucState;>;"
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v3, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getAllEucs(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 63
    .local v3, "eucToSend":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    .line 64
    .local v5, "message":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    invoke-interface {v5}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getState()Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ACCEPTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    if-ne v6, v7, :cond_0

    .line 65
    sget-object v6, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;->ACCEPT:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    .line 66
    invoke-interface {v5}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getUserPin()Ljava/lang/String;

    move-result-object v7

    .line 65
    invoke-virtual {p0, v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->sendResponse(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :cond_0
    invoke-interface {v5}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getState()Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->REJECTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    if-ne v6, v7, :cond_1

    .line 68
    sget-object v6, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;->DECLINE:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    .line 69
    invoke-interface {v5}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getUserPin()Ljava/lang/String;

    move-result-object v7

    .line 68
    invoke-virtual {p0, v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->sendResponse(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v5    # "message":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    :cond_1
    :goto_1
    goto :goto_0

    .line 74
    .end local v1    # "states":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/EucState;>;"
    .end local v3    # "eucToSend":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;>;"
    :cond_2
    goto :goto_2

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v1    # "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->NONE:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-interface {v1, v3, v2, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getAllEucs(Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 79
    .local v1, "eucList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;>;"
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->NONE:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mLanguageCode:Ljava/lang/String;

    invoke-interface {v3, v4, v2, v5, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getDialogsByTypes(Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 82
    .local v3, "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;>;"
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    invoke-interface {v4, v1, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;->combine(Ljava/util/List;Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object v4

    .line 83
    .local v4, "queries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;>;"
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->loadToCache(Ljava/lang/Iterable;)V

    .line 85
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->displayQueries(Ljava/lang/Iterable;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    .end local v1    # "eucList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;>;"
    .end local v3    # "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;>;"
    .end local v4    # "queries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;>;"
    goto :goto_3

    .line 86
    :catch_1
    move-exception v1

    .line 87
    .local v1, "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v1    # "e":Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
    :goto_3
    return-void
.end method

.method public bridge synthetic start()V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->stop()V

    return-void
.end method
