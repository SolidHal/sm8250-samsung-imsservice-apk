.class public Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;
.super Ljava/lang/Object;
.source "EucPersistenceNotifier.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;


# instance fields
.field private final mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

.field private final mUserConsentPersistenceNotifier:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;)V
    .locals 1
    .param p1, "eucPersistence"    # Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;
    .param p2, "userConsentPersistenceNotifier"    # Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    .line 38
    invoke-static {p2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mUserConsentPersistenceNotifier:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    .line 40
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->close()V

    .line 132
    return-void
.end method

.method public getAllEucs(Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "state"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
    .param p2, "type"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    .param p3, "ownIdentity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucState;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getAllEucs(Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllEucs(Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "state"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
    .param p3, "ownIdentity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucState;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucType;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 100
    .local p2, "types":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/EucType;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getAllEucs(Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllEucs(Ljava/util/List;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p2, "type"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    .param p3, "ownIdentity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucState;",
            ">;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 93
    .local p1, "states":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/EucState;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getAllEucs(Ljava/util/List;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllEucs(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p3, "ownIdentity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucState;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucType;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 108
    .local p1, "states":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/EucState;>;"
    .local p2, "types":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/EucType;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getAllEucs(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDialogs(Ljava/util/List;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p2, "type"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucType;
    .param p3, "lang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 72
    .local p1, "eucIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "ownIdentities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getDialogs(Ljava/util/List;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDialogsByTypes(Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "state"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
    .param p3, "lang"    # Ljava/lang/String;
    .param p4, "ownIdentity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucState;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucType;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 80
    .local p2, "types":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/euc/data/EucType;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getDialogsByTypes(Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEucByKey(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .locals 1
    .param p1, "key"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getEucByKey(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v0

    return-object v0
.end method

.method public getVolatileEucByMostRecentTimeout(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 121
    .local p1, "identities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getVolatileEucByMostRecentTimeout(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v0

    return-object v0
.end method

.method public insertAutoconfUserConsent(Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;)V
    .locals 2
    .param p1, "userConsentData"    # Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->insertAutoconfUserConsent(Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;)V

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mUserConsentPersistenceNotifier:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;->notifyListener(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public insertDialogs(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V
    .locals 2
    .param p1, "query"    # Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->insertDialogs(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V

    .line 58
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mUserConsentPersistenceNotifier:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getEucData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;->notifyListener(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public insertEuc(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V
    .locals 1
    .param p1, "eucData"    # Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->insertEuc(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    .line 53
    return-void
.end method

.method public open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->open()V

    .line 127
    return-void
.end method

.method public updateEuc(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    .param p2, "state"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucState;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->updateEuc(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mUserConsentPersistenceNotifier:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->getOwnIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;->notifyListener(Ljava/lang/String;)V

    .line 47
    return-void
.end method
