.class public Lcom/sec/internal/google/cmc/CmcCallSessionManager;
.super Ljava/lang/Object;
.source "CmcCallSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mImpleEventListener:Lcom/sec/ims/volte2/IImsCallSessionEventListener;

.field private final mIsEnabledWifiDirectFeature:Z

.field private mIsReplacedSession:Z

.field private mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

.field private final mManager:Lcom/samsung/android/cmcnsd/CmcNsdManager;

.field private mOrginalSessionId:I

.field private mReservedCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

.field private mSubSessionList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/volte2/IImsCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNumber:Ljava/lang/String;

.field private mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;


# direct methods
.method public constructor <init>(Lcom/sec/ims/volte2/IImsCallSession;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/samsung/android/cmcnsd/CmcNsdManager;Z)V
    .locals 3
    .param p1, "mainSession"    # Lcom/sec/ims/volte2/IImsCallSession;
    .param p2, "volteServiceModule"    # Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    .param p3, "manager"    # Lcom/samsung/android/cmcnsd/CmcNsdManager;
    .param p4, "isEnabledWifiDirectFeature"    # Z

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "CmcCallSessionManager"

    iput-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->LOG_TAG:Ljava/lang/String;

    .line 25
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    .line 29
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mOrginalSessionId:I

    .line 30
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mTargetNumber:Ljava/lang/String;

    .line 31
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mReservedCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 34
    iput-boolean v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mIsReplacedSession:Z

    .line 38
    const-string v1, "add mainSession"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 40
    iput-object p2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 41
    iput-object p3, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mManager:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    .line 42
    iput-boolean p4, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mIsEnabledWifiDirectFeature:Z

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    .line 22
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/internal/google/cmc/CmcCallSessionManager;Lcom/sec/ims/volte2/IImsCallSession;)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcCallSessionManager;
    .param p1, "x1"    # Lcom/sec/ims/volte2/IImsCallSession;

    .line 22
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    .line 22
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mImpleEventListener:Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    .line 22
    iget v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mOrginalSessionId:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/internal/google/cmc/CmcCallSessionManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcCallSessionManager;
    .param p1, "x1"    # I

    .line 22
    iput p1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mOrginalSessionId:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    .line 22
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/internal/google/cmc/CmcCallSessionManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcCallSessionManager;
    .param p1, "x1"    # Z

    .line 22
    iput-boolean p1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mIsReplacedSession:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    .line 22
    iget-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mIsEnabledWifiDirectFeature:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/samsung/android/cmcnsd/CmcNsdManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    .line 22
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mManager:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/internal/google/cmc/CmcCallSessionManager;)Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    .line 22
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    return-object v0
.end method


# virtual methods
.method public addP2pSession(Lcom/sec/ims/volte2/IImsCallSession;)V
    .locals 4
    .param p1, "session"    # Lcom/sec/ims/volte2/IImsCallSession;

    .line 56
    const-string v0, "CmcCallSessionManager"

    if-nez p1, :cond_0

    .line 57
    :try_start_0
    const-string/jumbo v1, "session is null. do not add"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void

    .line 60
    :cond_0
    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    .line 61
    .local v1, "callId":I
    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    const-string v2, "already contains session with this callId! Return"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 66
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add subSession with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mImpleEventListener:Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    if-eqz v2, :cond_2

    .line 70
    new-instance v2, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;

    invoke-direct {v2, p0, p1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;-><init>(Lcom/sec/internal/google/cmc/CmcCallSessionManager;Lcom/sec/ims/volte2/IImsCallSession;)V

    .line 71
    .local v2, "sessionListener":Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;
    invoke-interface {p1, v2}, Lcom/sec/ims/volte2/IImsCallSession;->registerSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V

    .line 73
    .end local v2    # "sessionListener":Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSubSessionList size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    nop

    .end local v1    # "callId":I
    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallId failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public getCallId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    return v0

    .line 114
    :cond_0
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    return v0
.end method

.method public getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mReservedCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    const-string v1, "CmcCallSessionManager"

    if-eqz v0, :cond_0

    .line 143
    const-string/jumbo v0, "return reserved callProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mReservedCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    return-object v0

    .line 146
    :cond_0
    const-string/jumbo v0, "return dummy callProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v0, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    return-object v0

    .line 149
    :cond_1
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    return-object v0
.end method

.method public getMainSession()Lcom/sec/ims/volte2/IImsCallSession;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-object v0
.end method

.method public getP2pSessionSize()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getPhoneId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    return v0

    .line 107
    :cond_0
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v0

    return v0
.end method

.method public getSessionId()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current sessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", started(orginal) sessionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mOrginalSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcCallSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mOrginalSessionId:I

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "return mOrgMainSessionId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mOrginalSessionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mOrginalSessionId:I

    return v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    return v0
.end method

.method public isReplacedSession()Z
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsReplacedSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mIsReplacedSession:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcCallSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-boolean v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mIsReplacedSession:Z

    return v0
.end method

.method public registerSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V
    .locals 5
    .param p1, "eventListener"    # Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mImpleEventListener:Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 94
    new-instance v0, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;

    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;-><init>(Lcom/sec/internal/google/cmc/CmcCallSessionManager;Lcom/sec/ims/volte2/IImsCallSession;)V

    .line 95
    .local v0, "mainSessionListener":Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1, v0}, Lcom/sec/ims/volte2/IImsCallSession;->registerSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V

    .line 96
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 97
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/volte2/IImsCallSession;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/volte2/IImsCallSession;

    .line 98
    .local v3, "session":Lcom/sec/ims/volte2/IImsCallSession;
    new-instance v4, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;

    invoke-direct {v4, p0, v3}, Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;-><init>(Lcom/sec/internal/google/cmc/CmcCallSessionManager;Lcom/sec/ims/volte2/IImsCallSession;)V

    .line 99
    .local v4, "sessionListener":Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;
    invoke-interface {v3, v4}, Lcom/sec/ims/volte2/IImsCallSession;->registerSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V

    .line 100
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/volte2/IImsCallSession;>;"
    .end local v3    # "session":Lcom/sec/ims/volte2/IImsCallSession;
    .end local v4    # "sessionListener":Lcom/sec/internal/google/cmc/CmcCallSessionManager$VolteEventListener;
    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method public setMainSession(Lcom/sec/ims/volte2/IImsCallSession;)V
    .locals 0
    .param p1, "session"    # Lcom/sec/ims/volte2/IImsCallSession;

    .line 122
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 123
    return-void
.end method

.method public setReservedCallProfile(Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 0
    .param p1, "profile"    # Lcom/sec/ims/volte2/data/CallProfile;

    .line 127
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mReservedCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 128
    return-void
.end method

.method public start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I
    .locals 5
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "profile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    const-string v1, "CmcCallSessionManager"

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need to create p2p sessions: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput-object p1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mTargetNumber:Ljava/lang/String;

    .line 156
    const/4 v0, 0x0

    return v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 160
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/volte2/IImsCallSession;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start(), subSession cmcType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3, p1, p2}, Lcom/sec/ims/volte2/IImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    .line 162
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/volte2/IImsCallSession;>;"
    goto :goto_0

    .line 163
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start(), mainSession cmcType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    move-result v0

    return v0
.end method

.method public startP2pSessions(Z)V
    .locals 5
    .param p1, "startMainSession"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mTargetNumber:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/sec/ims/volte2/IImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 87
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/volte2/IImsCallSession;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/volte2/IImsCallSession;

    iget-object v4, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mTargetNumber:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Lcom/sec/ims/volte2/IImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    .line 88
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/volte2/IImsCallSession;>;"
    goto :goto_0

    .line 89
    :cond_1
    return-void
.end method

.method public terminate(I)Z
    .locals 3
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mMainSession:Lcom/sec/ims/volte2/IImsCallSession;

    const-string v1, "CmcCallSessionManager"

    if-nez v0, :cond_0

    .line 169
    const-string v0, "not yet start call session. update call state as terminated."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x0

    return v0

    .line 174
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e2":Landroid/os/RemoteException;
    const-string v2, "exception session is maybe a cmcSession, need to terminate subSession"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v0    # "e2":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/google/cmc/CmcCallSessionManager;->mSubSessionList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 180
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/volte2/IImsCallSession;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSession;

    .line 181
    .local v2, "session":Lcom/sec/ims/volte2/IImsCallSession;
    invoke-interface {v2, p1}, Lcom/sec/ims/volte2/IImsCallSession;->terminate(I)V

    .line 182
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/ims/volte2/IImsCallSession;>;"
    .end local v2    # "session":Lcom/sec/ims/volte2/IImsCallSession;
    goto :goto_1

    .line 183
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
