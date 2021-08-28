.class public abstract Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "CshModuleBase.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/csh/ICshModule;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mActiveCallLists:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mActiveCallPhoneId:I

.field protected mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

.field protected mContext:Landroid/content/Context;

.field protected mIsDuringMultipartyCall:Z

.field protected mIsServiceReady:Z

.field protected mNPrevConnectedCalls:I

.field protected mRemoteCapabilities:Lcom/sec/ims/options/Capabilities;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mIsDuringMultipartyCall:Z

    .line 38
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mIsServiceReady:Z

    .line 39
    new-instance v1, Lcom/sec/ims/options/Capabilities;

    invoke-direct {v1}, Lcom/sec/ims/options/Capabilities;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mRemoteCapabilities:Lcom/sec/ims/options/Capabilities;

    .line 40
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mNPrevConnectedCalls:I

    .line 41
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallLists:Ljava/util/Map;

    .line 46
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private countConnectedCall(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;)I"
        }
    .end annotation

    .line 76
    .local p1, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    const/4 v0, 0x0

    .line 77
    .local v0, "numConnectedCalls":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 78
    .local v2, "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 81
    .end local v2    # "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    :cond_0
    goto :goto_0

    .line 82
    :cond_1
    return v0
.end method

.method private getCall(Ljava/util/List;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .locals 3
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;"
        }
    .end annotation

    .line 127
    .local p1, "activeCalls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 128
    .local v1, "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    return-object v1

    .line 131
    .end local v1    # "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    :cond_0
    goto :goto_0

    .line 132
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private processCallStateChanged(ILjava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 9
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;)V"
        }
    .end annotation

    .line 86
    .local p2, "calls":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->countConnectedCall(Ljava/util/List;)I

    move-result v0

    .line 88
    .local v0, "nConnectedCalls":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v1, "activeCalls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallLists:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallLists:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/util/List;

    .line 93
    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->countConnectedCall(Ljava/util/List;)I

    move-result v2

    .line 95
    .local v2, "nPrevConnectedCalls":I
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 96
    .local v4, "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->getCall(Ljava/util/List;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    move-result-object v5

    .line 97
    .local v5, "prev":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_2

    .line 98
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    if-ne v0, v7, :cond_1

    .line 99
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    .line 100
    iput-boolean v6, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mIsDuringMultipartyCall:Z

    .line 101
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->init()V

    goto :goto_1

    .line 102
    :cond_1
    if-le v0, v7, :cond_7

    .line 103
    iput-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mIsDuringMultipartyCall:Z

    goto :goto_1

    .line 107
    :cond_2
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_3

    if-le v2, v7, :cond_4

    .line 108
    :cond_3
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_4

    if-ne v0, v7, :cond_4

    .line 109
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    .line 110
    iput-boolean v6, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mIsDuringMultipartyCall:Z

    goto :goto_1

    .line 111
    :cond_4
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_5

    if-ne v2, v7, :cond_5

    .line 112
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_6

    if-gt v0, v7, :cond_6

    .line 113
    :cond_5
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_7

    if-le v0, v7, :cond_7

    .line 114
    :cond_6
    iput-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mIsDuringMultipartyCall:Z

    .line 117
    :cond_7
    :goto_1
    invoke-interface {v1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 118
    .end local v4    # "call":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    .end local v5    # "prev":Lcom/sec/internal/interfaces/ims/imsservice/ICall;
    goto :goto_0

    .line 120
    :cond_8
    move-object v1, p2

    .line 121
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallLists:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mNPrevConnectedCalls:I

    .line 123
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->updateServiceStatus(I)V

    .line 124
    return-void
.end method


# virtual methods
.method public deleteSession(I)V
    .locals 1
    .param p1, "sessionId"    # I

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->deleteSession(I)V

    .line 55
    return-void
.end method

.method public getSession(J)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;
    .locals 2
    .param p1, "sharedId"    # J

    .line 58
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSession(J)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v0

    return-object v0
.end method

.method public notifyContentChange(Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;)V
    .locals 3
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    .line 65
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update share ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 67
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/ICshConstants$ShareDatabase;->ACTIVE_SESSIONS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 68
    return-void
.end method

.method public onCallStateChanged(ILjava/util/List;)V
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p2, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/imsservice/ICall;>;"
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->processCallStateChanged(ILjava/util/concurrent/CopyOnWriteArrayList;)V

    .line 73
    return-void
.end method

.method public onRemoteCapabilitiesChanged(Lcom/sec/ims/options/Capabilities;)V
    .locals 1
    .param p1, "cap"    # Lcom/sec/ims/options/Capabilities;

    .line 143
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mRemoteCapabilities:Lcom/sec/ims/options/Capabilities;

    .line 144
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mDefaultPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->updateServiceStatus(I)V

    .line 145
    return-void
.end method

.method public putSession(Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;)V
    .locals 1
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    .line 50
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->putSession(Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;)V

    .line 51
    return-void
.end method

.method protected updateServiceStatus(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 136
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateServiceStatus: mIsServiceReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mIsServiceReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mEnabledFeatures="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mEnabledFeatures:[J

    aget-wide v2, v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mRemoteCapabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mRemoteCapabilities:Lcom/sec/ims/options/Capabilities;

    .line 138
    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mIsDuringMultipartyCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mIsDuringMultipartyCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method
