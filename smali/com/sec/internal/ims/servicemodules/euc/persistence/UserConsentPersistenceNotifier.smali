.class public Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;
.super Ljava/lang/Object;
.source "UserConsentPersistenceNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier$UserConsentPersistenceNotifierHolder;
    }
.end annotation


# instance fields
.field private mListener:Lcom/sec/internal/interfaces/ims/servicemodules/tapi/IUserConsentListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/tapi/IUserConsentListener;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier$1;

    .line 23
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;
    .locals 1

    .line 43
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier$UserConsentPersistenceNotifierHolder;->access$100()Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    move-result-object v0

    .line 42
    return-object v0
.end method


# virtual methods
.method public notifyListener(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/tapi/IUserConsentListener;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/tapi/IUserConsentListener;->notifyChanged(I)V

    .line 64
    :cond_0
    return-void
.end method

.method public notifyListener(Ljava/lang/String;)V
    .locals 3
    .param p1, "ownIdentity"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/tapi/IUserConsentListener;

    if-eqz v0, :cond_1

    .line 73
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 74
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/tapi/IUserConsentListener;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/tapi/IUserConsentListener;->notifyChanged(I)V

    .line 76
    goto :goto_1

    .line 78
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_0
    goto :goto_0

    .line 80
    :cond_1
    :goto_1
    return-void
.end method

.method public setListener(Lcom/sec/internal/interfaces/ims/servicemodules/tapi/IUserConsentListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/internal/interfaces/ims/servicemodules/tapi/IUserConsentListener;

    .line 52
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/tapi/IUserConsentListener;

    .line 53
    return-void
.end method
