.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;
.super Ljava/lang/Object;
.source "ImsCallSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;
    }
.end annotation


# static fields
.field private static final INVALID_PHONE_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mIncomingCallSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

.field private final mNetworkStateListener:Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

.field private mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field private mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

.field private final mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mSessionFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;

.field private final mSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private final mUnmodifiableSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Landroid/os/Looper;)V
    .locals 1
    .param p1, "module"    # Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;
    .param p2, "telephonyManager"    # Lcom/sec/internal/helper/os/ITelephonyManager;
    .param p3, "pdnController"    # Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .param p4, "regMan"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .param p5, "looper"    # Landroid/os/Looper;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    .line 65
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mUnmodifiableSessionMap:Ljava/util/Map;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mIncomingCallSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 73
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 87
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mNetworkStateListener:Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 77
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 78
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;

    invoke-direct {v0, p1, p5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;

    .line 79
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 80
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 81
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mNetworkStateListener:Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    invoke-interface {p3, v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->registerForNetworkState(Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;)V

    .line 84
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 85
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;
    .param p1, "x1"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 60
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->addCallSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)Lcom/sec/internal/helper/os/ITelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/constants/Mno;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;
    .param p1, "x1"    # Lcom/sec/internal/constants/Mno;

    .line 60
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isAllowUssdDuringCall(Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;
    .param p1, "x1"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 60
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-object p1
.end method

.method private addCallSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 6
    .param p1, "callSession"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 378
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 379
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;>;"
    const/4 v1, 0x0

    .line 380
    .local v1, "tempCallSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    .line 382
    .local v2, "sessionID":I
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 383
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 384
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 385
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndedCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v3, v4, :cond_0

    .line 386
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 388
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "same CallSession has been found : Session id is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " And corresponding CallId is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 388
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-void

    .line 393
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 397
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    return-void
.end method

.method private checkHasCallAndCallType(I)[I
    .locals 8
    .param p1, "phoneId"    # I

    .line 1023
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 1024
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    monitor-enter v1

    .line 1025
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1027
    .local v3, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isCmcPrimaryType(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1028
    goto :goto_0

    .line 1030
    :cond_0
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    if-ne v4, p1, :cond_7

    .line 1031
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    .line 1032
    .local v4, "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    .line 1033
    const/4 v5, 0x0

    aput v6, v0, v5

    .line 1034
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v5

    aput v5, v0, v6

    goto :goto_1

    .line 1035
    :cond_1
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v4, v5, :cond_2

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isRemoteHeld()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1036
    :cond_2
    const/4 v5, 0x2

    aput v6, v0, v5

    .line 1039
    :cond_3
    :goto_1
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1040
    const/4 v5, 0x3

    aput v6, v0, v5

    .line 1043
    :cond_4
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v5

    const/16 v7, 0x9

    if-ne v5, v7, :cond_5

    .line 1045
    const/4 v5, 0x4

    aput v6, v0, v5

    .line 1048
    :cond_5
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v4, v5, :cond_6

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyRequested:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v4, v5, :cond_6

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v4, v5, :cond_6

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v4, v5, :cond_7

    .line 1050
    :cond_6
    const/4 v5, 0x5

    aput v6, v0, v5

    .line 1053
    .end local v3    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v4    # "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    :cond_7
    goto :goto_0

    .line 1054
    :cond_8
    monitor-exit v1

    .line 1055
    return-object v0

    .line 1054
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getErrorAsSessionState(IIZZILcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "cmcType"    # I
    .param p3, "hasInCall"    # Z
    .param p4, "hasHoldCall"    # Z
    .param p5, "callType"    # I
    .param p6, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 1093
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    .line 1094
    .local v0, "error":Lcom/sec/ims/util/SipError;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    monitor-enter v1

    .line 1095
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1096
    .local v3, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isCmcPrimaryType(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1097
    goto :goto_0

    .line 1100
    :cond_1
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    if-ne v4, p1, :cond_5

    .line 1101
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    .line 1102
    .local v4, "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v4, v5, :cond_4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v4, v5, :cond_4

    .line 1103
    invoke-static {v4}, Lcom/sec/internal/helper/ImsCallUtil;->isDialingCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 1109
    :cond_2
    const/4 v5, 0x1

    if-eq p4, v5, :cond_3

    if-ne p3, v5, :cond_5

    .line 1110
    :cond_3
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v5

    invoke-direct {p0, p5, v5, p6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getErrorDuringCall(IILcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;

    move-result-object v5

    move-object v0, v5

    goto :goto_2

    .line 1104
    :cond_4
    :goto_1
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkRejectIncomingCall: found dialing session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    iget v2, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCmcType:I

    invoke-direct {p0, p2, v2, p6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getErrorOnDialingState(IILcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 1113
    .end local v3    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v4    # "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    :cond_5
    :goto_2
    goto :goto_0

    .line 1114
    :cond_6
    monitor-exit v1

    .line 1115
    return-object v0

    .line 1114
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getErrorDuringCall(IILcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;
    .locals 3
    .param p1, "callType"    # I
    .param p2, "sessionCallType"    # I
    .param p3, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 1079
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    .line 1080
    .local v0, "error":Lcom/sec/ims/util/SipError;
    sget-object v1, Lcom/sec/internal/constants/Mno;->VIVA_KUWAIT:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x2

    if-ne p3, v1, :cond_0

    if-ne p2, v2, :cond_0

    if-ne p1, v2, :cond_0

    .line 1083
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorKor;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 1084
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/Mno;->ZAIN_KUWAIT:Lcom/sec/internal/constants/Mno;

    if-eq p3, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->OOREDOO_KUWAIT:Lcom/sec/internal/constants/Mno;

    if-ne p3, v1, :cond_2

    :cond_1
    if-ne p2, v2, :cond_2

    .line 1086
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorKor;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    .line 1088
    :cond_2
    :goto_0
    return-object v0
.end method

.method private getErrorOnDialingState(IILcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;
    .locals 2
    .param p1, "cmcType"    # I
    .param p2, "sessionCmcType"    # I
    .param p3, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 1059
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    .line 1060
    .local v0, "error":Lcom/sec/ims/util/SipError;
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p3, v1, :cond_0

    .line 1061
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->BUSY_ESTABLISHING_ANOTHER_CALL:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 1062
    :cond_0
    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1063
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorKor;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 1064
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne p3, v1, :cond_2

    .line 1065
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorUscc;->BUSY_ESTABLISHING_ANOTHER_CALL:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 1067
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    .line 1071
    :goto_0
    if-nez p1, :cond_3

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isCmcSecondaryType(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1072
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isCmcSecondaryType(I)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p2, :cond_5

    .line 1073
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    .line 1075
    :cond_5
    return-object v0
.end method

.method private getSipErrorAsHasCall(Lcom/sec/ims/ImsRegistration;ZZZIILcom/sec/internal/constants/Mno;ILcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 4
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "hasInCall"    # Z
    .param p3, "hasHoldCall"    # Z
    .param p4, "hasConfCall"    # Z
    .param p5, "hasInCallType"    # I
    .param p6, "callType"    # I
    .param p7, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p8, "numPsCall"    # I
    .param p9, "prevError"    # Lcom/sec/ims/util/SipError;

    .line 1329
    move-object v0, p9

    .line 1330
    .local v0, "error":Lcom/sec/ims/util/SipError;
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v1, 0x2

    if-lt p8, v1, :cond_5

    .line 1331
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p7, v1, :cond_2

    .line 1337
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isEnableCallWaitingRule()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1338
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->BUSY_ALREADY_IN_TWO_CALLS:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 1340
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq p7, v1, :cond_4

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    if-eq p7, v1, :cond_4

    sget-object v1, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq p7, v1, :cond_4

    .line 1341
    invoke-virtual {p7}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq p7, v1, :cond_4

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_IRELAND:Lcom/sec/internal/constants/Mno;

    if-ne p7, v1, :cond_3

    goto :goto_0

    .line 1346
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 1342
    :cond_4
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "checkRejectIncomingCall: 3rd incoming call handling in OneHold and OneActive"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1348
    :cond_5
    if-eqz p2, :cond_9

    if-eq p5, v1, :cond_6

    if-ne p6, v1, :cond_9

    .line 1350
    :cond_6
    invoke-virtual {p7}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PS-LTE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    invoke-virtual {p7}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1351
    :cond_8
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRejectIncomingCall: hasInCallType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " callType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorKor;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    .line 1360
    :cond_9
    :goto_1
    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne p7, v1, :cond_a

    const/4 v1, 0x1

    if-ne p4, v1, :cond_a

    .line 1361
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    .line 1362
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRejectIncomingCall: error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :cond_a
    return-object v0
.end method

.method private getSipErrorAsModifying(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/util/SipError;
    .locals 5
    .param p1, "imsprofile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 1305
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkRejectIncomingCall: Reject call while Call modifying"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    .line 1307
    .local v0, "error":Lcom/sec/ims/util/SipError;
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isCmcPrimaryType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1309
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceModule()Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    .line 1310
    .local v1, "extSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyRequested:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v2, v3, :cond_0

    .line 1311
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 1312
    .local v2, "profile":Lcom/sec/ims/volte2/data/CallProfile;
    if-eqz v2, :cond_0

    .line 1313
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1314
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "checkRejectIncomingCall: Reject upgrade call for pulling by SD"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->reject(I)V

    .line 1316
    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 1322
    .end local v1    # "extSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v2    # "profile":Lcom/sec/ims/volte2/data/CallProfile;
    :cond_0
    goto :goto_0

    .line 1320
    :catch_0
    move-exception v1

    .line 1321
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkRejectIncomingCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method private getSipErrorForBarring(Landroid/content/Context;II)Lcom/sec/ims/util/SipError;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "callType"    # I

    .line 1407
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkRejectIncomingCall: Call barring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    const/4 v0, 0x0

    .line 1409
    .local v0, "setValue":I
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    .line 1410
    const-string/jumbo v2, "ss_video_cb_pref"

    invoke-static {p1, p2, v2, v1}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 1413
    :cond_0
    const-string/jumbo v2, "ss_volte_cb_pref"

    invoke-static {p1, p2, v2, v1}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v0

    .line 1417
    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 1419
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "checkRejectIncomingCall: Incoming call is barried"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    return-object v1

    .line 1421
    :cond_1
    and-int/lit8 v1, v0, 0xa

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 1423
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1424
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "checkRejectIncomingCall: Incoming call is barried in raoming condition"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    return-object v1

    .line 1430
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    return-object v1
.end method

.method private getSipErrorForNoMmtel(Lcom/sec/ims/ImsRegistration;IILcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;
    .locals 4
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "phoneId"    # I
    .param p3, "callType"    # I
    .param p4, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 1369
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkRejectIncomingCall: no mmtel registration."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    .line 1371
    .local v0, "error":Lcom/sec/ims/util/SipError;
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const-string v2, "checkRejectIncomingCall: no mmtel or mmtel-video registered."

    const-string v3, "mmtel-video"

    if-ne p4, v1, :cond_5

    .line 1376
    invoke-virtual {p1, v3}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1377
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 1379
    invoke-interface {v1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v2, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-eq v1, v2, :cond_0

    .line 1380
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_NO_VOPS:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 1381
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    .line 1382
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_ON_EHRPD:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 1383
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isCallBarredBySSAC(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1384
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_SSAC_ON:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 1385
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->acceptCallWhileSmsipRegistered(Lcom/sec/ims/ImsRegistration;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1386
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 1387
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 1388
    invoke-interface {v1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1389
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->VOWIFI_OFF:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 1391
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_VOLTE_OFF:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 1394
    :cond_5
    sget-object v1, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq p4, v1, :cond_7

    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne p4, v1, :cond_6

    goto :goto_0

    .line 1400
    :cond_6
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 1395
    :cond_7
    :goto_0
    invoke-virtual {p1, v3}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1396
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    .line 1403
    :cond_8
    :goto_1
    return-object v0
.end method

.method private getSipErrorForVzw(Lcom/sec/ims/ImsRegistration;IIILjava/lang/Boolean;Ljava/lang/Boolean;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 6
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I
    .param p4, "callType"    # I
    .param p5, "isModifyOngoing"    # Ljava/lang/Boolean;
    .param p6, "hasTtyCall"    # Ljava/lang/Boolean;
    .param p7, "prevError"    # Lcom/sec/ims/util/SipError;

    .line 1258
    move-object v0, p7

    .line 1259
    .local v0, "error":Lcom/sec/ims/util/SipError;
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1260
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->VIDEO_UPGRADE_REQUEST_IN_PROGRESS:Lcom/sec/ims/util/SipError;

    goto/16 :goto_1

    .line 1261
    :cond_0
    const/4 v1, 0x2

    const-string v2, ""

    const/16 v3, 0x1e6

    const/16 v4, 0x12

    if-ne p4, v1, :cond_4

    .line 1262
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getTtyMode(I)I

    move-result v1

    sget v5, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    if-eq v1, v5, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 1263
    invoke-interface {v1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getTtyMode(I)I

    move-result v1

    sget v5, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-ne v1, v5, :cond_2

    .line 1264
    :cond_1
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1265
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "checkRejectIncomingCall: VT not allowed during TTY is on."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->TTY_ON:Lcom/sec/ims/util/SipError;

    goto/16 :goto_1

    .line 1269
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 1270
    invoke-interface {v1, p3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result v1

    if-ne v1, v4, :cond_9

    .line 1272
    new-instance v1, Lcom/sec/ims/util/SipError;

    invoke-direct {v1, v3, v2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    .line 1276
    :cond_4
    const/4 v1, 0x1

    if-eq p4, v1, :cond_5

    const/16 v1, 0xe

    if-ne p4, v1, :cond_9

    .line 1278
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getNetworkType()I

    move-result v1

    const/16 v5, 0xd

    if-ne v1, v5, :cond_7

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 1279
    invoke-interface {v1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v5, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v1, v5, :cond_6

    goto :goto_0

    .line 1290
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1291
    const-string v1, "mmtel"

    invoke-virtual {p1, v1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1292
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->VOWIFI_OFF:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 1280
    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1281
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1282
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->VOWIFI_OFF:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 1285
    :cond_8
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1, p3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result v1

    if-ne v1, v4, :cond_9

    .line 1287
    new-instance v1, Lcom/sec/ims/util/SipError;

    invoke-direct {v1, v3, v2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    .line 1296
    :cond_9
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->hasCsCall(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1298
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "checkRejectIncomingCall: hasCsCall"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_ACTIVE_1X_CALL:Lcom/sec/ims/util/SipError;

    .line 1301
    :cond_a
    return-object v0
.end method

.method private getSipErrorOnCsNetwork(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/constants/Mno;IIZZLcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 2
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p3, "phoneId"    # I
    .param p4, "subId"    # I
    .param p5, "hasInCall"    # Z
    .param p6, "hasHoldCall"    # Z
    .param p7, "prevError"    # Lcom/sec/ims/util/SipError;

    .line 1220
    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_3

    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p5, :cond_3

    if-nez p6, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 1221
    invoke-interface {v0, p3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 1222
    invoke-interface {v0, p3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 1223
    invoke-interface {v0, p4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 1224
    invoke-interface {v0, p3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v0, v1, :cond_3

    .line 1225
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    return-object v0

    .line 1227
    :cond_3
    return-object p7
.end method

.method private ignoreCsfbByEpsOnlyNw(Lcom/sec/ims/ImsRegistration;ILcom/sec/internal/constants/Mno;)Z
    .locals 2
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "phoneId"    # I
    .param p3, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 1434
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq p3, v0, :cond_0

    .line 1435
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getSupportLtePreferred()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpsOnlyReg(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1436
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "EPS only registered for LTE Preferred model!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    const/4 v0, 0x1

    return v0

    .line 1440
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isAllowUssdDuringCall(Lcom/sec/internal/constants/Mno;)Z
    .locals 1
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 942
    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v0

    if-nez v0, :cond_3

    .line 943
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isSea()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isSwa()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/Mno;->MOBITEL_LK:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_3

    .line 944
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isMea()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->MTN_IRAN:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->OOREDOO_QATAR:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_3

    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isOce()Z

    move-result v0

    if-nez v0, :cond_3

    .line 945
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 942
    :goto_1
    return v0
.end method

.method private isServerSipError(Lcom/sec/ims/util/SipError;)Z
    .locals 2
    .param p1, "error"    # Lcom/sec/ims/util/SipError;

    .line 1635
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_5XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->equals(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->ERROR_6XX:Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;

    .line 1636
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase$SipErrorType;->equals(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1637
    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1638
    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->REQUEST_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1635
    :goto_1
    return v0
.end method

.method private needRejectByTerminalSs(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;II)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p3, "callType"    # I
    .param p4, "phoneId"    # I

    .line 1231
    invoke-static {p1, p4}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v0

    .line 1232
    const-string/jumbo v1, "ss_callbarring_by_network"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1234
    .local v0, "callBarringByNetwork":Z
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1235
    invoke-direct {p0, p1, p4, p3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSipErrorForBarring(Landroid/content/Context;II)Lcom/sec/ims/util/SipError;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    if-ne v3, v4, :cond_0

    .line 1236
    return v1

    .line 1240
    :cond_0
    invoke-static {p1, p4}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v3

    .line 1241
    const-string/jumbo v4, "ss_callwaiting_by_network"

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1243
    .local v3, "callWaitingByNetwork":Z
    if-nez v3, :cond_1

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    if-nez v4, :cond_1

    .line 1244
    const-string v4, "enable_call_wait"

    invoke-static {p1, p4, v4, v1}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v4

    .line 1246
    .local v4, "cw":Z
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v5}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v5

    invoke-interface {v5, p4, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionCountByCmcType(II)I

    move-result v5

    .line 1247
    .local v5, "callCount":I
    if-lt v5, v1, :cond_1

    if-nez v4, :cond_1

    .line 1248
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "needRejectByTerminalSs: Terminal CW : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " callCount : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " reject call"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    return v1

    .line 1254
    .end local v4    # "cw":Z
    .end local v5    # "callCount":I
    :cond_1
    return v2
.end method


# virtual methods
.method public checkRejectIncomingCall(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;I)Lcom/sec/ims/util/SipError;
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p3, "callType"    # I

    .line 1141
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move/from16 v12, p3

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    .line 1143
    .local v0, "error":Lcom/sec/ims/util/SipError;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v13

    .line 1144
    .local v13, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v14

    .line 1145
    .local v14, "phoneId":I
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v15

    .line 1146
    .local v15, "cmcType":I
    invoke-static {v14}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v16

    .line 1148
    .local v16, "subId":I
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v13, v1, :cond_0

    iget-object v1, v10, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, v14}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    iget-object v1, v10, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 1149
    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isMmtelAcquiredEver()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v10, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v1, v14}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1152
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_ON_EHRPD:Lcom/sec/ims/util/SipError;

    return-object v1

    .line 1155
    :cond_0
    const-string v1, "mmtel"

    invoke-virtual {v11, v1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1156
    invoke-direct {v10, v11, v14, v12, v13}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSipErrorForNoMmtel(Lcom/sec/ims/ImsRegistration;IILcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;

    move-result-object v0

    .line 1157
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    if-eq v0, v1, :cond_1

    .line 1158
    return-object v0

    .line 1157
    :cond_1
    move-object v7, v0

    goto :goto_0

    .line 1155
    :cond_2
    move-object v7, v0

    .line 1162
    .end local v0    # "error":Lcom/sec/ims/util/SipError;
    .local v7, "error":Lcom/sec/ims/util/SipError;
    :goto_0
    move-object/from16 v9, p1

    invoke-direct {v10, v9, v11, v12, v14}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->needRejectByTerminalSs(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1163
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    return-object v0

    .line 1166
    :cond_3
    invoke-direct {v10, v14}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->checkHasCallAndCallType(I)[I

    move-result-object v17

    .line 1167
    .local v17, "ret":[I
    const/4 v0, 0x0

    aget v1, v17, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    move v8, v1

    .line 1168
    .local v8, "hasInCall":Z
    aget v18, v17, v2

    .line 1169
    .local v18, "hasInCallType":I
    const/4 v1, 0x2

    aget v1, v17, v1

    if-ne v1, v2, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v0

    :goto_2
    move v6, v1

    .line 1170
    .local v6, "hasHoldCall":Z
    const/4 v1, 0x3

    aget v1, v17, v1

    if-ne v1, v2, :cond_6

    move v1, v2

    goto :goto_3

    :cond_6
    move v1, v0

    :goto_3
    move v5, v1

    .line 1171
    .local v5, "hasConfCall":Z
    const/4 v1, 0x4

    aget v1, v17, v1

    if-ne v1, v2, :cond_7

    move v1, v2

    goto :goto_4

    :cond_7
    move v1, v0

    :goto_4
    move v4, v1

    .line 1172
    .local v4, "hasTtyCall":Z
    const/4 v1, 0x5

    aget v1, v17, v1

    if-ne v1, v2, :cond_8

    move v0, v2

    :cond_8
    move v3, v0

    .line 1174
    .local v3, "isModifyOngoing":Z
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move v12, v3

    .end local v3    # "isModifyOngoing":Z
    .local v12, "isModifyOngoing":Z
    move v3, v8

    move/from16 v19, v15

    move v15, v4

    .end local v4    # "hasTtyCall":Z
    .local v15, "hasTtyCall":Z
    .local v19, "cmcType":I
    move v4, v6

    move v9, v5

    .end local v5    # "hasConfCall":Z
    .local v9, "hasConfCall":Z
    move/from16 v5, p3

    move-object/from16 v20, v7

    move v7, v6

    .end local v6    # "hasHoldCall":Z
    .local v7, "hasHoldCall":Z
    .local v20, "error":Lcom/sec/ims/util/SipError;
    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getErrorAsSessionState(IIZZILcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;

    move-result-object v6

    .line 1176
    .end local v20    # "error":Lcom/sec/ims/util/SipError;
    .local v6, "error":Lcom/sec/ims/util/SipError;
    const/4 v0, 0x0

    .line 1177
    .local v0, "numPsCall":I
    iget-object v1, v10, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceModule()Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCmcRegExist(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1178
    iget-object v1, v10, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceModule()Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    move-result-object v1

    invoke-virtual {v1, v14, v11}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionCountByCmcType(ILcom/sec/ims/ImsRegistration;)I

    move-result v0

    move v5, v0

    goto :goto_5

    .line 1180
    :cond_9
    invoke-virtual {v10, v14}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionCount(I)I

    move-result v0

    move v5, v0

    .line 1183
    .end local v0    # "numPsCall":I
    .local v5, "numPsCall":I
    :goto_5
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkRejectIncomingCall: numPsCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", hasInCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasHoldCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasTtyCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isModifyOngoing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasConfCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v8

    move v3, v7

    move v4, v9

    move/from16 v20, v5

    .end local v5    # "numPsCall":I
    .local v20, "numPsCall":I
    move/from16 v5, v18

    move-object/from16 v21, v6

    .end local v6    # "error":Lcom/sec/ims/util/SipError;
    .local v21, "error":Lcom/sec/ims/util/SipError;
    move/from16 v6, p3

    move/from16 v22, v7

    .end local v7    # "hasHoldCall":Z
    .local v22, "hasHoldCall":Z
    move-object v7, v13

    move/from16 v23, v8

    .end local v8    # "hasInCall":Z
    .local v23, "hasInCall":Z
    move/from16 v8, v20

    move/from16 v24, v9

    .end local v9    # "hasConfCall":Z
    .local v24, "hasConfCall":Z
    move-object/from16 v9, v21

    invoke-direct/range {v0 .. v9}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSipErrorAsHasCall(Lcom/sec/ims/ImsRegistration;ZZZIILcom/sec/internal/constants/Mno;ILcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    move-result-object v8

    .line 1193
    .end local v21    # "error":Lcom/sec/ims/util/SipError;
    .local v8, "error":Lcom/sec/ims/util/SipError;
    move-object v2, v13

    move v3, v14

    move/from16 v4, v16

    move/from16 v5, v23

    move/from16 v6, v22

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSipErrorOnCsNetwork(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/constants/Mno;IIZZLcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    move-result-object v8

    .line 1195
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v13, v0, :cond_a

    .line 1196
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, p3

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSipErrorForVzw(Lcom/sec/ims/ImsRegistration;IIILjava/lang/Boolean;Ljava/lang/Boolean;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    move-result-object v8

    goto :goto_7

    .line 1197
    :cond_a
    sget-object v0, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v13, v0, :cond_b

    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0, v14}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->hasCsCall(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1199
    sget-object v8, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    goto :goto_7

    .line 1201
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 1202
    .local v0, "imsprofile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v12, :cond_c

    .line 1203
    invoke-direct {v10, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSipErrorAsModifying(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/util/SipError;

    move-result-object v1

    .line 1204
    .end local v8    # "error":Lcom/sec/ims/util/SipError;
    .local v1, "error":Lcom/sec/ims/util/SipError;
    return-object v1

    .line 1205
    .end local v1    # "error":Lcom/sec/ims/util/SipError;
    .restart local v8    # "error":Lcom/sec/ims/util/SipError;
    :cond_c
    iget-object v1, v10, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, v14}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->hasCsCall(I)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v10, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v1, v14}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1206
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    if-nez v1, :cond_f

    .line 1207
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "checkRejectIncomingCall: hasCsCall"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v13, v1, :cond_e

    sget-object v1, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-eq v13, v1, :cond_e

    sget-object v1, Lcom/sec/internal/constants/Mno;->FET:Lcom/sec/internal/constants/Mno;

    if-eq v13, v1, :cond_e

    sget-object v1, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-ne v13, v1, :cond_d

    goto :goto_6

    .line 1211
    :cond_d
    sget-object v8, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    goto :goto_7

    .line 1209
    :cond_e
    :goto_6
    sget-object v8, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    .line 1215
    .end local v0    # "imsprofile":Lcom/sec/ims/settings/ImsProfile;
    :cond_f
    :goto_7
    return-object v8
.end method

.method public convertToSessionId(I)I
    .locals 2
    .param p1, "callId"    # I

    .line 677
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 678
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    :goto_0
    return v1
.end method

.method public createSession(Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 2
    .param p1, "profile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .param p2, "regInfo"    # Lcom/sec/ims/ImsRegistration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$1;)V

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$ImsCallSessionBuilder;->createSession(Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public endCallByDeregistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 7
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 792
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    .line 793
    .local v0, "deRegisteringRegId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 795
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :try_start_0
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    .line 796
    .local v3, "registration":Lcom/sec/ims/ImsRegistration;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 797
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v4, v5, :cond_0

    .line 798
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->reject(I)V

    goto :goto_1

    .line 800
    :cond_0
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end call "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " by MMTEL deregistered"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/helper/ImsCallUtil;->convertDeregiReason(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    .end local v3    # "registration":Lcom/sec/ims/ImsRegistration;
    :cond_1
    :goto_1
    goto :goto_2

    .line 805
    :catch_0
    move-exception v3

    .line 806
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "endCallByDeregistered: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_0

    .line 809
    :cond_2
    return-void
.end method

.method public endcallByNwHandover(Lcom/sec/ims/ImsRegistration;)V
    .locals 6
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 812
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 813
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 814
    .local v2, "callRegiInfo":Lcom/sec/ims/ImsRegistration;
    if-eqz v2, :cond_0

    .line 815
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 816
    goto :goto_0

    .line 820
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    const/4 v5, 0x4

    if-ne v3, v4, :cond_1

    .line 821
    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->reject(I)V

    goto :goto_1

    .line 823
    :cond_1
    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    :goto_1
    goto :goto_2

    .line 825
    :catch_0
    move-exception v3

    .line 826
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "onNetworkChanged: "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 828
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v2    # "callRegiInfo":Lcom/sec/ims/ImsRegistration;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    goto :goto_0

    .line 829
    :cond_2
    return-void
.end method

.method public forceNotifyCurrentCodec()V
    .locals 2

    .line 698
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 699
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->forceNotifyCurrentCodec()V

    .line 700
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    goto :goto_0

    .line 701
    :cond_0
    return-void
.end method

.method public getActiveExtCallCount()I
    .locals 5

    .line 636
    const/4 v0, 0x0

    .line 637
    .local v0, "activeExtCallCnt":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 639
    .local v2, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsEstablished:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 640
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 642
    .end local v2    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_1
    goto :goto_0

    .line 643
    :cond_2
    return v0
.end method

.method public getCallCount(I)[I
    .locals 9
    .param p1, "phoneId"    # I

    .line 594
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 596
    .local v0, "ret":[I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 597
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v2, :cond_0

    const/4 v7, -0x1

    if-eq p1, v7, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v7

    if-eq v7, p1, :cond_1

    .line 598
    goto :goto_0

    .line 602
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v7

    .line 603
    .local v7, "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v7, v8, :cond_7

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v7, v8, :cond_7

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndedCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v7, v8, :cond_2

    goto :goto_2

    .line 607
    :cond_2
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v8

    if-nez v8, :cond_3

    .line 608
    goto :goto_0

    .line 611
    :cond_3
    aget v8, v0, v5

    add-int/2addr v8, v6

    aput v8, v0, v5

    .line 613
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v5

    .line 615
    .local v5, "callType":I
    invoke-static {v5}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v8

    if-ne v8, v6, :cond_4

    .line 616
    aget v4, v0, v6

    add-int/2addr v4, v6

    aput v4, v0, v6

    goto :goto_1

    .line 617
    :cond_4
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/ims/volte2/data/CallProfile;->isDowngradedVideoCall()Z

    move-result v8

    if-ne v8, v6, :cond_5

    .line 618
    aget v8, v0, v4

    add-int/2addr v8, v6

    aput v8, v0, v4

    .line 621
    :cond_5
    :goto_1
    invoke-static {v5}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v4

    if-ne v4, v6, :cond_6

    .line 622
    aget v4, v0, v3

    add-int/2addr v4, v6

    aput v4, v0, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    .end local v5    # "callType":I
    .end local v7    # "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    :cond_6
    goto :goto_3

    .line 604
    .restart local v7    # "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    :cond_7
    :goto_2
    goto :goto_0

    .line 624
    .end local v7    # "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    :catch_0
    move-exception v3

    .line 625
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCallCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_3
    goto/16 :goto_0

    .line 629
    :cond_8
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total Call["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v0, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Video Call : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v0, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Downgraded Video Call : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " E911 Call : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    return-object v0
.end method

.method public getEmergencySession()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 567
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .local v0, "sessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

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

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 569
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    .line 571
    .local v3, "profile":Lcom/sec/ims/volte2/data/CallProfile;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 572
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v3    # "profile":Lcom/sec/ims/volte2/data/CallProfile;
    :cond_0
    goto :goto_0

    .line 576
    :cond_1
    return-object v0
.end method

.method public getExtMoCall()Z
    .locals 3

    .line 647
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

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

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 648
    .local v1, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    if-nez v2, :cond_0

    .line 649
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    const/4 v0, 0x1

    return v0

    .line 654
    .end local v1    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_0
    goto :goto_0

    .line 655
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getForegroundSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 1

    .line 434
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getForegroundSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 4
    .param p1, "phoneId"    # I

    .line 438
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 439
    .local v1, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 440
    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v2, v3, :cond_1

    .line 444
    return-object v1

    .line 446
    .end local v1    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_1
    goto :goto_0

    .line 447
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImsRegistration(I)Lcom/sec/ims/ImsRegistration;
    .locals 6
    .param p1, "phoneId"    # I

    .line 1615
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1616
    .local v0, "registrationList":[Lcom/sec/ims/ImsRegistration;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1617
    return-object v1

    .line 1619
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 1620
    .local v4, "reg":Lcom/sec/ims/ImsRegistration;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    if-ne v5, p1, :cond_1

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1621
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v5

    if-nez v5, :cond_1

    .line 1622
    return-object v4

    .line 1619
    .end local v4    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1625
    :cond_2
    return-object v1
.end method

.method public getIncomingCallSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mIncomingCallSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-object v0
.end method

.method public getMergeCallType(IZ)I
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "isConfCallType"    # Z

    .line 1661
    const/4 v0, 0x1

    .line 1663
    .local v0, "mergeCallType":I
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 1664
    .local v1, "regiInfo":Lcom/sec/ims/ImsRegistration;
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1665
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    .line 1666
    .local v3, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasRttCall()Z

    move-result v4

    .line 1667
    .local v4, "hasRttCall":Z
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasVideoCall()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getSupportMergeVideoConference()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 1669
    .local v5, "hasVideoCall":Z
    :goto_0
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v6

    .line 1670
    .local v6, "mno":Lcom/sec/internal/constants/Mno;
    if-eqz v5, :cond_2

    .line 1671
    sget-object v7, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v6, v7, :cond_1

    if-eqz v4, :cond_1

    .line 1673
    const/4 v0, 0x1

    goto :goto_1

    .line 1675
    :cond_1
    const/4 v0, 0x2

    .line 1681
    .end local v3    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .end local v4    # "hasRttCall":Z
    .end local v5    # "hasVideoCall":Z
    .end local v6    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_2
    :goto_1
    if-eqz p2, :cond_4

    .line 1682
    if-ne v0, v2, :cond_3

    .line 1683
    const/4 v0, 0x5

    goto :goto_2

    .line 1684
    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 1685
    const/4 v0, 0x6

    .line 1689
    :cond_4
    :goto_2
    return v0
.end method

.method public getParticipantIdForMerge(II)I
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "hostId"    # I

    .line 1722
    const/4 v0, -0x1

    .line 1723
    .local v0, "participantId":I
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object v1

    .line 1724
    .local v1, "heldCalls":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1725
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "No Hold Call : conference fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    const/4 v2, -0x1

    return v2

    .line 1729
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1730
    .local v3, "held":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v4

    if-eq v4, p2, :cond_1

    .line 1731
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v0

    .line 1732
    goto :goto_1

    .line 1734
    .end local v3    # "held":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_1
    goto :goto_0

    .line 1735
    :cond_2
    :goto_1
    return v0
.end method

.method public getPhoneIdByCallId(I)I
    .locals 2
    .param p1, "callId"    # I

    .line 1714
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 1715
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v0, :cond_0

    .line 1716
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    return v1

    .line 1718
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getSIPMSGInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;)V
    .locals 4
    .param p1, "noti"    # Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;

    .line 970
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 971
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;->getSipMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;->getIsRequest()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->onReceiveSIPMSG(Ljava/lang/String;Z)V

    .line 972
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    goto :goto_0

    .line 973
    :cond_0
    return-void
.end method

.method public getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3
    .param p1, "sessionId"    # I

    .line 467
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

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

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 468
    .local v1, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 469
    return-object v1

    .line 471
    .end local v1    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_0
    goto :goto_0

    .line 472
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 2
    .param p1, "callId"    # I

    .line 476
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-object v0
.end method

.method public getSessionByCallType(I)Ljava/util/List;
    .locals 1
    .param p1, "calltype"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 515
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByCallType(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSessionByCallType(II)Ljava/util/List;
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "calltype"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 522
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 524
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 526
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 527
    goto :goto_0

    .line 530
    :cond_0
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    .line 531
    .local v3, "profile":Lcom/sec/ims/volte2/data/CallProfile;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 532
    goto :goto_0

    .line 535
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v4

    if-ne v4, p2, :cond_2

    .line 536
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    .end local v3    # "profile":Lcom/sec/ims/volte2/data/CallProfile;
    :cond_2
    goto :goto_0

    .line 539
    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_3
    return-object v1
.end method

.method public getSessionByRegId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3
    .param p1, "regId"    # I

    .line 558
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

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

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 559
    .local v1, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 560
    return-object v1

    .line 562
    .end local v1    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_0
    goto :goto_0

    .line 563
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionBySipCallId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3
    .param p1, "sipCallId"    # Ljava/lang/String;

    .line 480
    if-eqz p1, :cond_1

    .line 481
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

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

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 482
    .local v1, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    return-object v1

    .line 485
    .end local v1    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_0
    goto :goto_0

    .line 487
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "state"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 498
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 500
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 501
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    .line 502
    .local v3, "profile":Lcom/sec/ims/volte2/data/CallProfile;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    const/4 v4, -0x1

    if-eq p1, v4, :cond_2

    .line 503
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    if-eq v4, p1, :cond_2

    .line 504
    goto :goto_0

    .line 506
    :cond_2
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSessionByState("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    if-ne v4, p2, :cond_3

    .line 508
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    .end local v3    # "profile":Lcom/sec/ims/volte2/data/CallProfile;
    :cond_3
    goto :goto_0

    .line 511
    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_4
    return-object v1
.end method

.method public getSessionByState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;
    .locals 1
    .param p1, "state"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 491
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSessionCount()I
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getSessionCount(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "count":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

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

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 407
    .local v2, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 408
    add-int/lit8 v0, v0, 0x1

    .line 410
    .end local v2    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_0
    goto :goto_0

    .line 412
    :cond_1
    return v0
.end method

.method public getSessionList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 418
    return-object v0
.end method

.method public getSessionList(I)Ljava/util/List;
    .locals 4
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

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

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 425
    .local v2, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 426
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    .end local v2    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_0
    goto :goto_0

    .line 430
    :cond_1
    return-object v0
.end method

.method public getUnmodifiableSessionMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 1845
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mUnmodifiableSessionMap:Ljava/util/Map;

    return-object v0
.end method

.method public handleDeregistered(IILcom/sec/internal/constants/Mno;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "errorCode"    # I
    .param p3, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 1126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v0, :cond_1

    .line 1127
    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p3, v0, :cond_1

    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1f7

    if-ne p2, v0, :cond_1

    .line 1129
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->handleRegistrationFailed()V

    .line 1130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1132
    :cond_1
    return-void
.end method

.method public handleEpdgHandover(ILcom/sec/ims/ImsRegistration;Lcom/sec/internal/constants/Mno;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p3, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 771
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 772
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isE911Call()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 773
    goto :goto_0

    .line 775
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v2

    .line 776
    .local v2, "isEpdgConnected":Z
    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 777
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setEpdgState(Z)V

    goto :goto_1

    .line 778
    :cond_2
    if-nez v2, :cond_3

    .line 779
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setEpdgState(Z)V

    .line 781
    :cond_3
    :goto_1
    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq p3, v3, :cond_4

    sget-object v3, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    if-ne p3, v3, :cond_5

    .line 783
    :cond_4
    :try_start_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->reinvite()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    goto :goto_2

    .line 784
    :catch_0
    move-exception v3

    .line 785
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 788
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v2    # "isEpdgConnected":Z
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_2
    goto :goto_0

    .line 789
    :cond_6
    return-void
.end method

.method public handleEpdnSetupFail(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 1693
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getEmergencySession()Ljava/util/List;

    move-result-object v0

    .line 1695
    .local v0, "emergencySessions":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;>;"
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEpdnSetupFail Emergency Session Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " phoneId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1699
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :try_start_0
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 1700
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    .line 1701
    .local v3, "profile":Lcom/sec/ims/volte2/data/CallProfile;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getNetworkType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_0

    .line 1702
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "handleEpdnSetupFail : skip terminate because this session uses ims pdn"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    goto :goto_0

    .line 1705
    :cond_0
    const/16 v4, 0x16

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1709
    .end local v3    # "profile":Lcom/sec/ims/volte2/data/CallProfile;
    :cond_1
    goto :goto_1

    .line 1707
    :catch_0
    move-exception v3

    .line 1708
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1710
    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1711
    :cond_2
    return-void
.end method

.method public handleSrvccStateChange(IILcom/sec/internal/constants/Mno;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "srvccState"    # I
    .param p3, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 748
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 750
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v1, :cond_4

    :try_start_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-ne v2, p1, :cond_4

    .line 751
    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 752
    const/16 v3, 0x64

    const-string v4, "SRVCC HO STARTED"

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->update(Lcom/sec/ims/volte2/data/CallProfile;ILjava/lang/String;)V

    goto :goto_1

    .line 753
    :cond_0
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    .line 754
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V

    goto :goto_1

    .line 755
    :cond_1
    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    const/4 v3, 0x3

    if-ne p2, v3, :cond_4

    .line 757
    :cond_2
    const-string v3, "failure to transition to CS domain"

    .line 758
    .local v3, "reasonText":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isOrange()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 759
    const-string v4, "handover cancelled"

    move-object v3, v4

    .line 761
    :cond_3
    const/16 v4, 0x1e7

    invoke-virtual {v1, v2, v4, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->update(Lcom/sec/ims/volte2/data/CallProfile;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 764
    .end local v3    # "reasonText":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 765
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleReinvite: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 766
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    nop

    .line 767
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :goto_2
    goto :goto_0

    .line 768
    :cond_5
    return-void
.end method

.method public hasActiveCall(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, "activeCall":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 453
    .local v2, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 454
    goto :goto_0

    .line 457
    :cond_0
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v3

    .line 458
    .local v3, "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndedCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v3, v4, :cond_1

    .line 459
    const/4 v0, 0x1

    .line 460
    goto :goto_1

    .line 462
    .end local v2    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v3    # "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    :cond_1
    goto :goto_0

    .line 463
    :cond_2
    :goto_1
    return v0
.end method

.method public hasEmergencyCall(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 920
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 921
    .local v1, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 922
    goto :goto_0

    .line 925
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 926
    .local v2, "profile":Lcom/sec/ims/volte2/data/CallProfile;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 927
    const/4 v0, 0x1

    return v0

    .line 929
    .end local v1    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v2    # "profile":Lcom/sec/ims/volte2/data/CallProfile;
    :cond_1
    goto :goto_0

    .line 930
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hasRingingCall()Z
    .locals 1

    .line 682
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasRingingCall(I)Z

    move-result v0

    return v0
.end method

.method public hasRingingCall(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 686
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 687
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 688
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v2, v3, :cond_2

    .line 689
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPreAlerting()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 693
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_1
    goto :goto_0

    .line 690
    .restart local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_2
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "session("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") is in IncomingCall"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 v0, 0x1

    return v0

    .line 694
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public hasRttCall()Z
    .locals 3

    .line 668
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

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

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 669
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 670
    const/4 v0, 0x1

    return v0

    .line 672
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_0
    goto :goto_0

    .line 673
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasSipCallId(Ljava/lang/String;)Z
    .locals 7
    .param p1, "sipCallId"    # Ljava/lang/String;

    .line 543
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 544
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 545
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 546
    .local v1, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 547
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    .line 548
    .local v3, "cp":Lcom/sec/ims/volte2/data/CallProfile;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 549
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exclude the dialog with sipCallId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " sessionId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 549
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v4, 0x1

    return v4

    .line 553
    .end local v1    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;>;"
    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v3    # "cp":Lcom/sec/ims/volte2/data/CallProfile;
    :cond_0
    goto :goto_0

    .line 554
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public hasVideoCall()Z
    .locals 3

    .line 659
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

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

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 660
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 661
    const/4 v0, 0x1

    return v0

    .line 663
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_0
    goto :goto_0

    .line 664
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isCmcPrimaryType(I)Z
    .locals 2
    .param p1, "cmcType"    # I

    .line 1849
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    .line 1858
    const/4 v0, 0x0

    return v0

    .line 1854
    :cond_0
    return v0
.end method

.method public isCmcSecondaryType(I)Z
    .locals 1
    .param p1, "cmcType"    # I

    .line 1862
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 1870
    const/4 v0, 0x0

    return v0

    .line 1866
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isCsfbErrorCode(Landroid/content/Context;IILcom/sec/ims/util/SipError;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "callType"    # I
    .param p4, "error"    # Lcom/sec/ims/util/SipError;

    .line 1444
    const/16 v5, 0xa

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isCsfbErrorCode(Landroid/content/Context;IILcom/sec/ims/util/SipError;I)Z

    move-result v0

    return v0
.end method

.method public isCsfbErrorCode(Landroid/content/Context;IILcom/sec/ims/util/SipError;I)Z
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "callType"    # I
    .param p4, "error"    # Lcom/sec/ims/util/SipError;
    .param p5, "retryAfter"    # I

    .line 1448
    move-object/from16 v7, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    const/4 v0, 0x0

    if-nez v10, :cond_0

    .line 1449
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "SipError was null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    return v0

    .line 1453
    :cond_0
    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    move-object/from16 v12, p1

    invoke-interface {v1, v12, v8}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isSilentRedialEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1454
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isSilentRedialEnabled was false!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    return v0

    .line 1458
    :cond_1
    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v13

    .line 1460
    .local v13, "regiInfo":Lcom/sec/ims/ImsRegistration;
    if-nez v13, :cond_2

    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    goto :goto_0

    .line 1461
    :cond_2
    invoke-virtual {v13}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    :goto_0
    move-object v14, v1

    .line 1463
    .local v14, "mno":Lcom/sec/internal/constants/Mno;
    invoke-direct {v7, v13, v8, v14}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->ignoreCsfbByEpsOnlyNw(Lcom/sec/ims/ImsRegistration;ILcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1464
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ignore CSFB due to only EPS network!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    return v0

    .line 1468
    :cond_3
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " SipError : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_INVITE_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v10, v1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1471
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Timer B expired convert to INVITE_TIMEOUT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    const/16 v1, 0x45a

    invoke-virtual {v10, v1}, Lcom/sec/ims/util/SipError;->setCode(I)V

    .line 1475
    :cond_4
    const/4 v15, 0x0

    .line 1480
    .local v15, "ret":Z
    invoke-virtual {v14}, Lcom/sec/internal/constants/Mno;->isOrange()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v13, :cond_5

    const/16 v1, 0x12

    invoke-virtual {v13}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 1481
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isCsfbErrorCode ORANGE GROUP customization in VoWIFI"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    invoke-direct {v7, v10}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isServerSipError(Lcom/sec/ims/util/SipError;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1483
    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, v8}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1485
    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v13}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v1, :cond_5

    .line 1486
    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v13}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    const v3, 0x1d4c0

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->blockVoWifiRegisterOnRoaminByCsfbError(II)V

    .line 1487
    return v0

    .line 1493
    :cond_5
    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-eq v14, v1, :cond_6

    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v14, v1, :cond_7

    :cond_6
    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, v8}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1494
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "LGU/KDDI - Do not use CSFB in home network"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    return v0

    .line 1496
    :cond_7
    sget-object v1, Lcom/sec/internal/constants/Mno;->MTS_RUSSIA:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    if-ne v14, v1, :cond_8

    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, v8}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v1

    if-ne v1, v2, :cond_8

    .line 1497
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "MTS Russia - Do not use CSFB in roaming"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    return v0

    .line 1499
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v1

    const/16 v3, 0x45d

    if-ne v1, v3, :cond_9

    .line 1500
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "CALL_ENDED_BY_NW_HANDOVER_BEFORE_100_TRYING is always trigger CSFB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    return v2

    .line 1502
    :cond_9
    sget-object v1, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v14, v1, :cond_b

    .line 1503
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v1

    const/16 v3, 0x1f7

    if-eq v1, v3, :cond_a

    .line 1504
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v1

    const/16 v3, 0x1f6

    if-eq v1, v3, :cond_a

    .line 1505
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v1

    const/16 v3, 0x1f4

    if-ne v1, v3, :cond_b

    .line 1506
    :cond_a
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMCC - error code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", retryAfter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    if-lez v11, :cond_1a

    .line 1509
    return v0

    .line 1511
    :cond_b
    invoke-virtual {v14}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-ne v14, v1, :cond_d

    :cond_c
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->MEDIA_BEARER_OR_QOS_LOST:Lcom/sec/ims/util/SipError;

    invoke-virtual {v10, v1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1513
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "CSFB condition for T-Mobile EUR"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    return v2

    .line 1515
    :cond_d
    sget-object v1, Lcom/sec/internal/constants/Mno;->VIVO_BRAZIL:Lcom/sec/internal/constants/Mno;

    if-ne v14, v1, :cond_e

    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, v8}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1516
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "VIVO doesn\'t support CSFB under roaming area"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    return v0

    .line 1519
    :cond_e
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v14, v1, :cond_10

    .line 1520
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionCount()I

    move-result v1

    if-le v1, v2, :cond_f

    .line 1521
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "has another call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    return v0

    .line 1523
    :cond_f
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1a

    .line 1524
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "TMO - Stack return -1 trigger CSFB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    return v2

    .line 1527
    :cond_10
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v14, v1, :cond_18

    .line 1528
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(I)Z

    move-result v1

    .line 1529
    .local v1, "isCdmalessEnabled":Z
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VZW - roaming("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v5, v8}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ") CDMAless("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ") getLteEpsOnlyAttached("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 1530
    invoke-interface {v5, v8}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getLteEpsOnlyAttached(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1529
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    iget-object v3, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v3, v8}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v3, v8}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getLteEpsOnlyAttached(I)Z

    move-result v3

    if-nez v3, :cond_12

    :cond_11
    iget-object v3, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v3, v8}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v3

    if-nez v3, :cond_13

    if-eqz v1, :cond_13

    .line 1533
    :cond_12
    return v0

    .line 1534
    :cond_13
    iget-object v3, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v3, v8}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v3

    if-eqz v3, :cond_14

    if-eqz v1, :cond_14

    iget-object v3, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v3, v8}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getLteEpsOnlyAttached(I)Z

    move-result v3

    if-nez v3, :cond_14

    .line 1535
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v3

    const/16 v4, 0x9cf

    if-ne v3, v4, :cond_14

    .line 1536
    return v2

    .line 1537
    :cond_14
    invoke-static/range {p4 .. p4}, Lcom/sec/internal/helper/ImsCallUtil;->isImsOutageError(Lcom/sec/ims/util/SipError;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v3

    const/16 v4, 0x9c6

    if-ne v3, v4, :cond_15

    goto :goto_1

    .line 1539
    :cond_15
    if-eqz v1, :cond_19

    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v3, 0x641

    if-ne v0, v3, :cond_19

    .line 1540
    return v2

    .line 1538
    :cond_16
    :goto_1
    iget-object v3, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v3, v8}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v3

    if-nez v3, :cond_17

    if-nez v1, :cond_17

    move v0, v2

    :cond_17
    return v0

    .line 1542
    .end local v1    # "isCdmalessEnabled":Z
    :cond_18
    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v14, v0, :cond_19

    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_19

    .line 1543
    const/16 v0, 0xc

    if-ne v9, v0, :cond_1a

    iget-object v0, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0, v8}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRegisteredOverLteOrNr(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 1544
    invoke-interface {v0, v8}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v0, v1, :cond_1a

    .line 1545
    return v2

    .line 1542
    :cond_19
    nop

    .line 1550
    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v4, v14

    move-object/from16 v5, p4

    move v6, v15

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isCsfbErrorCodeOnList(Landroid/content/Context;IILcom/sec/internal/constants/Mno;Lcom/sec/ims/util/SipError;Z)Z

    move-result v0

    .line 1552
    .end local v15    # "ret":Z
    .local v0, "ret":Z
    return v0
.end method

.method public isCsfbErrorCodeOnList(Landroid/content/Context;IILcom/sec/internal/constants/Mno;Lcom/sec/ims/util/SipError;Z)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "callType"    # I
    .param p4, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p5, "error"    # Lcom/sec/ims/util/SipError;
    .param p6, "ret"    # Z

    .line 1556
    const-string/jumbo v0, "voice_csfb_error_code_list"

    .line 1557
    .local v0, "key":Ljava/lang/String;
    invoke-static {p3}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1558
    const-string/jumbo v0, "video_csfb_error_code_list"

    .line 1562
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v1

    const-string v2, "all_csfb_error_code_list"

    .line 1563
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1565
    .local v1, "errorCodeList":[Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "all_csfb_error_code_list "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1565
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isMatchWithErrorCodeList([Ljava/lang/String;I)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move p6, v2

    .line 1569
    const-string v2, " "

    if-nez p6, :cond_1

    .line 1570
    :try_start_1
    invoke-static {p1, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v4

    .line 1571
    invoke-virtual {v4, v0, v3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1573
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isMatchWithErrorCodeList([Ljava/lang/String;I)Z

    move-result v3

    move p6, v3

    .line 1578
    :cond_1
    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p4, v3, :cond_3

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v3, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getLteEpsOnlyAttached(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 1579
    invoke-interface {v3, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v3

    iget v3, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_3

    :cond_2
    if-eqz p6, :cond_3

    .line 1580
    invoke-static {p3}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1581
    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v3

    sget-object v4, Lcom/sec/internal/constants/ims/SipErrorBase;->ALTERNATIVE_SERVICE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v4}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 1582
    const/4 p6, 0x0

    .line 1585
    :cond_3
    if-nez p6, :cond_5

    invoke-static {p3}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1586
    const-string v3, "e911_csfb_error_code_list"

    move-object v0, v3

    .line 1587
    invoke-static {p1, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    .line 1588
    invoke-virtual {v3, v0, v4}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1589
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isMatchWithErrorCodeList([Ljava/lang/String;I)Z

    move-result v2

    move p6, v2

    .line 1592
    invoke-virtual {p4}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1593
    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v2

    const/16 v3, 0x17d

    if-eq v2, v3, :cond_4

    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v2

    const/16 v3, 0x17e

    if-ne v2, v3, :cond_5

    .line 1594
    :cond_4
    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->convertUrnToEccCat(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_5

    .line 1595
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Unrecognized service urn."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :cond_5
    invoke-virtual {p4}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v2

    const/16 v3, 0x1e7

    if-ne v2, v3, :cond_6

    .line 1602
    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p5}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Destination out of order"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1603
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "need CSFB for call forwarding"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1604
    const/4 p6, 0x1

    .line 1608
    .end local v1    # "errorCodeList":[Ljava/lang/String;
    :cond_6
    goto :goto_0

    .line 1606
    :catch_0
    move-exception v1

    .line 1607
    .local v1, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCsfbErrorCode fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCsfbErrorCode Mno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    return p6
.end method

.method public isMatchWithErrorCodeList([Ljava/lang/String;I)Z
    .locals 6
    .param p1, "errorCodeList"    # [Ljava/lang/String;
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1643
    const/4 v0, 0x0

    .line 1645
    .local v0, "ret":Z
    if-eqz p1, :cond_1

    .line 1646
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1647
    aget-object v2, p1, v1

    .line 1648
    .local v2, "value":Ljava/lang/String;
    const-string/jumbo v3, "x"

    const-string v4, "[0-9]"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1649
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 1650
    if-eqz v0, :cond_0

    .line 1651
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "match with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    goto :goto_1

    .line 1646
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1657
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method public isRttCall(I)Z
    .locals 6
    .param p1, "sessionId"    # I

    .line 1832
    const/4 v0, 0x0

    .line 1833
    .local v0, "result":Z
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    .line 1834
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v1, :cond_0

    .line 1835
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 1836
    .local v2, "profile":Lcom/sec/ims/volte2/data/CallProfile;
    if-eqz v2, :cond_0

    .line 1837
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v0

    .line 1838
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRttCall, sessionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    .end local v2    # "profile":Lcom/sec/ims/volte2/data/CallProfile;
    :cond_0
    return v0
.end method

.method public onCallEndByCS(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 832
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCallEndByCS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

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

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 834
    .local v1, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    .line 835
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 837
    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    goto :goto_1

    .line 838
    :catch_0
    move-exception v2

    .line 839
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onNetworkChanged: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 842
    .end local v1    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 843
    :cond_1
    return-void
.end method

.method public onCallEnded()V
    .locals 1

    .line 1135
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v0, :cond_0

    .line 1136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1138
    :cond_0
    return-void
.end method

.method public onImsIncomingCallEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;II)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 5
    .param p1, "event"    # Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;
    .param p2, "profile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .param p3, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p4, "callType"    # I
    .param p5, "ttyMode"    # I

    .line 983
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->create(Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Z)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mIncomingCallSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 985
    if-nez v0, :cond_0

    .line 986
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onImsIncomingCallEvent: IncomingCallSession create failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const/4 v0, 0x0

    return-object v0

    .line 989
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setSessionId(I)V

    .line 990
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mIncomingCallSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->updateCallProfile(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 991
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 992
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 993
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mIncomingCallSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0, p5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setTtyMode(I)V

    .line 996
    :cond_1
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 997
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 998
    :cond_2
    invoke-static {p4}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 999
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1000
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mIncomingCallSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getRttDbrTimer(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startRttDedicatedBearerTimer(J)V

    .line 1002
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mIncomingCallSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    .line 1004
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mIncomingCallSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setPreAlerting()V

    .line 1005
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mIncomingCallSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->addCallSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 1006
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mIncomingCallSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-object v0
.end method

.method public onPSBarred(Z)V
    .locals 6
    .param p1, "on"    # Z

    .line 949
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPSBarred: on ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 952
    const v0, 0x30000021

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->c(I)V

    .line 953
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 954
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    .line 956
    .local v2, "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v2, v3, :cond_1

    .line 960
    :cond_0
    const/16 v3, 0xd

    :try_start_0
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    goto :goto_1

    .line 961
    :catch_0
    move-exception v3

    .line 962
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "onNetworkChanged: "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 965
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v2    # "state":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 967
    :cond_2
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 1
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 1119
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v0, :cond_0

    .line 1120
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->handleRegistrationDone(Lcom/sec/ims/ImsRegistration;)V

    .line 1121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mPendingOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1123
    :cond_0
    return-void
.end method

.method public onReleaseWfcBeforeHO(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 879
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 881
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 882
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 884
    .local v2, "profile":Lcom/sec/ims/volte2/data/CallProfile;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 885
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v3, v4, :cond_0

    .line 886
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->reject(I)V

    goto :goto_1

    .line 888
    :cond_0
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(IZ)V

    .line 891
    :goto_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "end call "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Before HO"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 894
    .end local v2    # "profile":Lcom/sec/ims/volte2/data/CallProfile;
    :catch_0
    move-exception v2

    .line 895
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReleaseWfcBeforeHO: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 896
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    nop

    .line 897
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :goto_3
    goto :goto_0

    .line 898
    :cond_2
    return-void
.end method

.method public onUpdateGeolocation()V
    .locals 2

    .line 976
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 977
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->onUpdateGeolocation()V

    .line 978
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    goto :goto_0

    .line 979
    :cond_0
    return-void
.end method

.method public releaseAllSession(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 846
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 847
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v1, :cond_2

    .line 848
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 849
    goto :goto_0

    .line 853
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v2, v3, :cond_1

    .line 854
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->reject(I)V

    goto :goto_1

    .line 856
    :cond_1
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    :goto_1
    goto :goto_2

    .line 858
    :catch_0
    move-exception v2

    .line 859
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "release all session in F/W layer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    goto :goto_0

    .line 863
    :cond_3
    return-void
.end method

.method public releaseAllVideoCall()V
    .locals 4

    .line 866
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 867
    .local v1, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 868
    goto :goto_0

    .line 871
    :cond_0
    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    goto :goto_1

    .line 872
    :catch_0
    move-exception v2

    .line 873
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 875
    .end local v1    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 876
    :cond_1
    return-void
.end method

.method public releaseSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "state"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    .line 1739
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1740
    .local v1, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 1742
    const/4 v2, 0x5

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1745
    goto :goto_1

    .line 1743
    :catch_0
    move-exception v2

    .line 1744
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1747
    .end local v1    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 1748
    :cond_1
    return-void
.end method

.method public removeSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 5
    .param p1, "sessionId"    # I

    .line 580
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 581
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 582
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 583
    .local v1, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 584
    .local v2, "key":Ljava/lang/Integer;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 586
    .local v3, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 587
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-object v4

    .line 589
    .end local v1    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;>;"
    .end local v2    # "key":Ljava/lang/Integer;
    .end local v3    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_0
    goto :goto_0

    .line 590
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 704
    if-eqz p1, :cond_1

    .line 705
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 706
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->sendText(Ljava/lang/String;I)V

    .line 707
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 709
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendRttMessage: receive null string / do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :goto_1
    return-void
.end method

.method public sendRttSessionModifyRequest(IZ)I
    .locals 7
    .param p1, "callId"    # I
    .param p2, "mode"    # Z

    .line 1751
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRttSessionModifyRequest:callId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 1755
    .local v0, "inCallSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-nez v0, :cond_0

    .line 1756
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") is invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    const/4 v1, -0x1

    return v1

    .line 1760
    :cond_0
    const v1, 0x30000017

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1761
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1760
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1762
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    .line 1763
    .local v1, "currCallType":I
    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 1764
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    const/4 v4, 0x1

    invoke-interface {v2, p1, p2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->onSendRttSessionModifyResponse(IZZ)V

    .line 1765
    return v3

    .line 1766
    :cond_1
    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez p2, :cond_2

    .line 1767
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2, p1, p2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->onSendRttSessionModifyResponse(IZZ)V

    .line 1768
    return v3

    .line 1771
    :cond_2
    new-instance v2, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v2}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 1772
    .local v2, "callProfile":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {v2, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1774
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SessionId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", currCallType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    invoke-static {v1, p2}, Lcom/sec/internal/helper/ImsCallUtil;->getCallTypeForRtt(IZ)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1778
    if-eqz p2, :cond_3

    .line 1779
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    .line 1780
    .local v4, "phoneId":I
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1781
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v5, v4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getRttDbrTimer(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startRttDedicatedBearerTimer(J)V

    .line 1786
    .end local v4    # "phoneId":I
    :cond_3
    :try_start_0
    const-string v4, ""

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->update(Lcom/sec/ims/volte2/data/CallProfile;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1789
    goto :goto_0

    .line 1787
    :catch_0
    move-exception v4

    .line 1788
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1791
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    return v3
.end method

.method public sendRttSessionModifyResponse(IZ)V
    .locals 8
    .param p1, "callId"    # I
    .param p2, "accept"    # Z

    .line 1795
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRttSessionModifyResponse: callId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", accept : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 1798
    .local v0, "inCallSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-nez v0, :cond_0

    .line 1799
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") is invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    return-void

    .line 1803
    :cond_0
    const v1, 0x3000001a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1804
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1803
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1805
    new-instance v1, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v1}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 1806
    .local v1, "callProfile":Lcom/sec/ims/volte2/data/CallProfile;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1807
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    .line 1808
    .local v3, "currCallType":I
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SessionId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", currCallType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sec/internal/helper/ImsCallUtil;->getCallTypeForRtt(IZ)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1812
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    .line 1813
    .local v5, "phoneId":I
    if-eqz p2, :cond_3

    .line 1814
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1815
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1816
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2, v5}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getRttDbrTimer(I)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startRttDedicatedBearerTimer(J)V

    .line 1818
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    goto :goto_0

    .line 1820
    :cond_2
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    .line 1822
    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->accept(Lcom/sec/ims/volte2/data/CallProfile;)V

    goto :goto_1

    .line 1824
    :cond_3
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->reject(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1828
    .end local v5    # "phoneId":I
    :goto_1
    goto :goto_2

    .line 1826
    :catch_0
    move-exception v2

    .line 1827
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1829
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public setTtyMode(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I

    .line 934
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

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

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 935
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 936
    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setTtyMode(I)V

    .line 938
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_0
    goto :goto_0

    .line 939
    :cond_1
    return-void
.end method

.method public terminateMoWfcWhenWfcSettingOff(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .line 901
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 902
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 903
    goto :goto_0

    .line 906
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 907
    .local v2, "profile":Lcom/sec/ims/volte2/data/CallProfile;
    if-eqz v2, :cond_1

    .line 908
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 909
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->isDowngradedVideoCall()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v3

    if-nez v3, :cond_1

    .line 911
    const/4 v3, 0x5

    :try_start_0
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    goto :goto_1

    .line 912
    :catch_0
    move-exception v3

    .line 913
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 916
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v2    # "profile":Lcom/sec/ims/volte2/data/CallProfile;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 917
    :cond_2
    return-void
.end method

.method public triggerPsRedial(IIILcom/sec/ims/ImsRegistration;)Z
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "callId"    # I
    .param p3, "targetPdn"    # I
    .param p4, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 714
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 715
    .local v0, "origSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    const-string v1, "TMO_E911 triggerPsRedial = false"

    const/4 v2, 0x0

    if-eqz p4, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    .line 721
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    .line 722
    .local v3, "origProfile":Lcom/sec/ims/volte2/data/CallProfile;
    if-nez v3, :cond_1

    .line 723
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "TMO_E911 triggerPsRedial = false, origProfile is null"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return v2

    .line 727
    :cond_1
    invoke-virtual {v3, p3}, Lcom/sec/ims/volte2/data/CallProfile;->setNetworkType(I)V

    .line 728
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;

    invoke-virtual {v4, v3, p4, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->create(Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Z)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v4

    .line 729
    .local v4, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-nez v4, :cond_2

    .line 730
    return v2

    .line 733
    :cond_2
    :try_start_0
    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->replaceSessionEventListener(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    .line 734
    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    nop

    .line 741
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->mSessionMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0, v4}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 742
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifySessionChanged(I)V

    .line 743
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "TMO_E911 triggerPsRedial = true"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const/4 v1, 0x1

    return v1

    .line 735
    :catch_0
    move-exception v5

    .line 736
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 737
    sget-object v6, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    return v2

    .line 716
    .end local v3    # "origProfile":Lcom/sec/ims/volte2/data/CallProfile;
    .end local v4    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "TMO_E911 Call session or IMS Registration is not exist!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    return v2
.end method
