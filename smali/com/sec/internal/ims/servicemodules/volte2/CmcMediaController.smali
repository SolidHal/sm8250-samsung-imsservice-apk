.class public Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;
.super Ljava/lang/Object;
.source "CmcMediaController.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;


# static fields
.field private static final EVENT_CMC_MEDIA_EVENT:I = 0xb

.field private static final EVENT_CMC_RECORDER_START:I = 0x2

.field private static final EVENT_CMC_RECORDER_STOP:I = 0x3

.field private static final EVENT_RETRY_CREATE_RELAY_CHANNEL:I = 0xc

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCmcMediaEventHandler:Landroid/os/Handler;

.field private mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

.field private final mCmcRecordingCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/ims/cmc/ISemCmcRecordingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mExtStream:I

.field protected mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

.field private mIntStream:I

.field private mPendingRelayChannelCreation:Z

.field private mRelayDirection:I

.field private mRelayStreamMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;",
            ">;"
        }
    .end annotation
.end field

.field private mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/helper/SimpleEventLog;)V
    .locals 1
    .param p1, "vsm"    # Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callSessionManager"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;
    .param p4, "eventLog"    # Lcom/sec/internal/helper/SimpleEventLog;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcRecordingCallbacks:Landroid/os/RemoteCallbackList;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    .line 49
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaEventHandler:Landroid/os/Handler;

    .line 50
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mExtStream:I

    .line 54
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mIntStream:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayDirection:I

    .line 56
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mPendingRelayChannelCreation:Z

    .line 64
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 65
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    .line 66
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 68
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getCmcHandler()Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    .line 70
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaEventHandler:Landroid/os/Handler;

    .line 114
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->init()V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;
    .param p1, "x1"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    .line 37
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->onImsRelayEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    .line 37
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;
    .param p1, "x1"    # I

    .line 37
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    .line 37
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mPendingRelayChannelCreation:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;)Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    .line 37
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;)Lcom/sec/internal/helper/SimpleEventLog;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    .line 37
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    .line 37
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->resetCreateRelayChannelParams()V

    return-void
.end method

.method private getActiveCallByCmcType(II)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "cmcType"    # I

    .line 385
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionList()Ljava/util/List;

    move-result-object v0

    .line 386
    .local v0, "callSessions":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;>;"
    monitor-enter v0

    .line 387
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 388
    .local v2, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v3, v4, :cond_0

    .line 389
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v3

    if-ne v3, p2, :cond_0

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 390
    monitor-exit v0

    return-object v2

    .line 392
    .end local v2    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_0
    goto :goto_0

    .line 393
    :cond_1
    monitor-exit v0

    .line 395
    const/4 v1, 0x0

    return-object v1

    .line 393
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 4
    .param p1, "sessionId"    # I

    .line 276
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionList()Ljava/util/List;

    move-result-object v0

    .line 277
    .local v0, "callSessions":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;>;"
    monitor-enter v0

    .line 278
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 279
    .local v2, "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 280
    monitor-exit v0

    return-object v2

    .line 282
    .end local v2    # "s":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_0
    goto :goto_0

    .line 284
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 285
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleRelayChannel()V
    .locals 9

    .line 195
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRelayChannel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v0, -0x1

    .line 197
    .local v0, "extStream":I
    const/4 v1, -0x1

    .line 198
    .local v1, "intStream":I
    const/4 v2, 0x0

    .local v2, "keyId":I
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_6

    .line 199
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    .line 200
    .local v3, "rs":Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getSessionId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v5

    .line 201
    .local v5, "relaySession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    sget-object v6, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Streamid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getStreamId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " SessionId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getSessionId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-nez v5, :cond_0

    .line 204
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Session is null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getStreamId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->delete(I)V

    .line 206
    goto :goto_1

    .line 210
    :cond_0
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v6

    .line 211
    .local v6, "cmcType":I
    if-nez v6, :cond_2

    .line 212
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v7

    if-le v7, v4, :cond_2

    .line 213
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getRelayChannelId()I

    move-result v7

    if-ne v7, v4, :cond_2

    .line 214
    if-le v0, v4, :cond_1

    .line 215
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 217
    :cond_1
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getStreamId()I

    move-result v0

    goto :goto_1

    .line 218
    :cond_2
    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3

    const/4 v7, 0x7

    if-eq v6, v7, :cond_3

    const/4 v7, 0x5

    if-ne v6, v7, :cond_5

    .line 222
    :cond_3
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v7

    if-le v7, v4, :cond_5

    .line 223
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getRelayChannelId()I

    move-result v7

    if-ne v7, v4, :cond_5

    .line 224
    if-le v1, v4, :cond_4

    .line 225
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 227
    :cond_4
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getStreamId()I

    move-result v1

    .line 198
    .end local v3    # "rs":Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;
    .end local v5    # "relaySession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v6    # "cmcType":I
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 231
    .end local v2    # "keyId":I
    :cond_6
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extStream: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", intStream"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    if-eq v0, v4, :cond_7

    if-eq v1, v4, :cond_7

    .line 233
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->startRelayChannel(II)V

    .line 235
    :cond_7
    return-void
.end method

.method private onCmcRecordingEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    .line 328
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getCmcRecordingEvent()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 344
    const/4 v0, 0x1

    .local v0, "recordEvent":I
    goto :goto_0

    .line 341
    .end local v0    # "recordEvent":I
    :cond_0
    const/16 v0, 0x385

    .line 342
    .restart local v0    # "recordEvent":I
    goto :goto_0

    .line 338
    .end local v0    # "recordEvent":I
    :cond_1
    const/16 v0, 0x384

    .line 339
    .restart local v0    # "recordEvent":I
    goto :goto_0

    .line 335
    .end local v0    # "recordEvent":I
    :cond_2
    const/16 v0, 0x321

    .line 336
    .restart local v0    # "recordEvent":I
    goto :goto_0

    .line 332
    .end local v0    # "recordEvent":I
    :cond_3
    const/16 v0, 0x320

    .line 333
    .restart local v0    # "recordEvent":I
    nop

    .line 348
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getPhoneId()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getCmcRecordingArg()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v4

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->notifyOnCmcRecordingEvent(IIII)V

    .line 349
    return-void

    .line 330
    .end local v0    # "recordEvent":I
    :cond_4
    return-void
.end method

.method private onImsRelayEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    .line 289
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->isRelayChannelEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayChannelEvent()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 291
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mPendingRelayChannelCreation:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mExtStream:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mIntStream:I

    if-eq v2, v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    .line 293
    .local v0, "extRS":Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mIntStream:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    .line 294
    .local v1, "intRS":Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 295
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mExtStream:I

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mIntStream:I

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sreCreateRelayChannel(II)I

    move-result v2

    .line 296
    .local v2, "relayChannel":I
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retry Start Relay Channel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const v3, 0x70000005

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayDirection:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 298
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayDirection:I

    invoke-interface {v3, v2, v4}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sreStartRelayChannel(II)I

    .line 299
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->setRelayChannelId(I)V

    .line 300
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->setRelayChannelId(I)V

    .line 301
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retry StartRelayChannel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " with direction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayDirection:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 304
    .end local v0    # "extRS":Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;
    .end local v1    # "intRS":Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;
    .end local v2    # "relayChannel":I
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->resetCreateRelayChannelParams()V

    .line 306
    :cond_1
    return-void

    .line 309
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 311
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-nez v0, :cond_3

    .line 312
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImsRelayEvent: session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void

    .line 316
    :cond_3
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 317
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    .line 319
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->isRelayStreamEvent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 320
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->onRelayStreamEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;I)V

    goto :goto_0

    .line 321
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->isCmcRecordingEvent()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 322
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->onCmcRecordingEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 324
    :cond_5
    :goto_0
    return-void
.end method

.method private declared-synchronized onRelayStreamEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;I)V
    .locals 9
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    .param p2, "handle"    # I

    monitor-enter p0

    .line 134
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRelayStreamEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayStreamEvent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayStreamEvent()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v2

    const/16 v3, 0x1c

    invoke-interface {v0, v1, v2, v3, p2}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sendMediaEvent(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 139
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayStreamEvent()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 140
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 141
    .local v0, "tmpSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v0, :cond_1

    .line 142
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getPhoneId()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v3

    const/16 v4, 0x3d

    invoke-interface {v1, v2, v3, v4, p2}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sendMediaEvent(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :cond_1
    monitor-exit p0

    return-void

    .line 146
    .end local v0    # "tmpSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayStreamEvent()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 147
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayRtpStats()Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    move-result-object v0

    .line 148
    .local v0, "rtpStats":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sendRtpStatsToStack(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 150
    .end local v0    # "rtpStats":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayStreamEvent()I

    move-result v0

    const/16 v1, 0xc

    const/16 v2, 0xb

    const/16 v3, 0xa

    if-eq v0, v3, :cond_8

    .line 151
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayStreamEvent()I

    move-result v0

    if-eq v0, v2, :cond_8

    .line 152
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayStreamEvent()I

    move-result v0

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 169
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayStreamEvent()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 170
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->resetCreateRelayChannelParams()V

    .line 171
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getStreamId()I

    move-result v0

    .line 172
    .local v0, "idToRemove":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    .line 173
    .local v1, "tmpRelayStr":Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 174
    if-eqz v1, :cond_5

    .line 175
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getBoundStreamId()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_5

    .line 176
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getBoundStreamId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    .line 177
    .local v2, "tmpBoundRelayStr":Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;
    if-eqz v2, :cond_5

    .line 178
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reset bound stream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getStreamId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->setRelayChannelId(I)V

    .line 180
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->setBoundStreamId(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    .end local v2    # "tmpBoundRelayStr":Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;
    :cond_5
    monitor-exit p0

    return-void

    .line 187
    .end local v0    # "idToRemove":I
    .end local v1    # "tmpRelayStr":Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;
    :cond_6
    :try_start_4
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 188
    .local v0, "relayStream":Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getStreamId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_7

    .line 190
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->handleRelayChannel()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 192
    :cond_7
    monitor-exit p0

    return-void

    .line 153
    .end local v0    # "relayStream":Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;
    :cond_8
    :goto_0
    const/4 v0, 0x0

    .local v0, "keyId":I
    :goto_1
    :try_start_5
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_c

    .line 154
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    .line 155
    .local v4, "rs":Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getSessionId()I

    move-result v5

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v6

    if-ne v5, v6, :cond_b

    .line 156
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayStreamEvent()I

    move-result v5

    if-ne v5, v3, :cond_9

    .line 157
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hold relay channel : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getRelayChannelId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getRelayChannelId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sreHoldRelayChannel(I)I

    goto :goto_2

    .line 159
    :cond_9
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayStreamEvent()I

    move-result v5

    if-ne v5, v2, :cond_a

    .line 160
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resume relay channel : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getRelayChannelId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getRelayChannelId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sreResumeRelayChannel(I)I

    goto :goto_2

    .line 162
    :cond_a
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayStreamEvent()I

    move-result v5

    if-ne v5, v1, :cond_b

    .line 163
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "start record relay channel : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getRelayChannelId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v6

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getStreamId()I

    move-result v7

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getRelayChannelId()I

    move-result v8

    invoke-interface {v5, v6, v7, v8}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sreStartRecordingChannel(III)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 153
    .end local v4    # "rs":Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;
    :cond_b
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 168
    .end local v0    # "keyId":I
    :cond_c
    monitor-exit p0

    return-void

    .line 133
    .end local p1    # "event":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    .end local p2    # "handle":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private resetCreateRelayChannelParams()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaEventHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mPendingRelayChannelCreation:Z

    .line 356
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mExtStream:I

    .line 357
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mIntStream:I

    .line 358
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayDirection:I

    .line 359
    return-void
.end method

.method private startRelayChannel(II)V
    .locals 11
    .param p1, "extStream"    # I
    .param p2, "intStream"    # I

    .line 238
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    .line 239
    .local v0, "extRS":Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    .line 240
    .local v1, "intRS":Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 241
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getRelayChannelId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getRelayChannelId()I

    move-result v2

    if-ne v2, v3, :cond_6

    .line 242
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getSessionId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    .line 243
    .local v2, "extSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getSessionId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v4

    .line 244
    .local v4, "intSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v2, :cond_5

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 249
    :cond_0
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v5

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getSessionId()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 250
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v5

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getSessionId()I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 251
    :cond_1
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->setBoundStreamId(I)V

    .line 252
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->setBoundStreamId(I)V

    .line 253
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    invoke-interface {v5, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sreCreateRelayChannel(II)I

    move-result v5

    .line 254
    .local v5, "relayChannel":I
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    const/4 v8, 0x1

    if-eq v6, v7, :cond_3

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v6, v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v6, v8

    .line 255
    .local v6, "relayDirection":I
    :goto_1
    sget-object v7, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Start Relay Channel "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " with direction "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    if-le v5, v3, :cond_4

    .line 257
    const v3, 0x70000005

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 258
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    invoke-interface {v3, v5, v6}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sreStartRelayChannel(II)I

    .line 259
    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->setRelayChannelId(I)V

    .line 260
    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->setRelayChannelId(I)V

    .line 261
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->resetCreateRelayChannelParams()V

    .line 262
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Start RelayChannel "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    goto :goto_3

    .line 264
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaEventHandler:Landroid/os/Handler;

    const/16 v7, 0xc

    invoke-virtual {v3, v7, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v9, 0xc8

    invoke-virtual {v3, v7, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 265
    iput-boolean v8, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mPendingRelayChannelCreation:Z

    .line 266
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mExtStream:I

    .line 267
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mIntStream:I

    .line 268
    iput v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mRelayDirection:I

    .line 269
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pending StartRelayChannel with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    goto :goto_3

    .line 245
    .end local v5    # "relayChannel":I
    .end local v6    # "relayDirection":I
    :cond_5
    :goto_2
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    const-string v5, "extSession or intSession is null"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void

    .line 273
    .end local v2    # "extSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v4    # "intSession":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public connectToSve(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sendConnectToSve(I)V

    .line 119
    return-void
.end method

.method public disconnectToSve()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sendDisonnectToSve()V

    .line 123
    return-void
.end method

.method public init()V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaEventHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->registerForCmcMediaEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 127
    return-void
.end method

.method public declared-synchronized sendCmcRecordingEvent(IILcom/samsung/android/ims/cmc/SemCmcRecordingInfo;)V
    .locals 24
    .param p1, "phoneId"    # I
    .param p2, "event"    # I
    .param p3, "info"    # Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;

    move-object/from16 v1, p0

    move/from16 v0, p2

    monitor-enter p0

    .line 363
    const/4 v2, 0x0

    .line 364
    .local v2, "ret":Z
    const/4 v3, 0x1

    move/from16 v4, p1

    :try_start_0
    invoke-direct {v1, v4, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->getActiveCallByCmcType(II)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    .line 365
    .local v3, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    if-eqz v3, :cond_1

    .line 366
    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    .line 367
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendCmcRecordingEvent: SemCmcRecordingInfo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v8

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->getAudioSource()I

    move-result v10

    .line 369
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->getOutputFormat()I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->getMaxFileSize()J

    move-result-wide v12

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->getMaxDuration()I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->getOutputPath()Ljava/lang/String;

    move-result-object v15

    .line 370
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->getAudioEncodingBitRate()I

    move-result v16

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->getAudioChannels()I

    move-result v17

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->getAudioSamplingRate()I

    move-result v18

    .line 371
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->getAudioEncoder()I

    move-result v19

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->getDurationInterval()I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->getFileSizeInterval()J

    move-result-wide v21

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;->getAuthor()Ljava/lang/String;

    move-result-object v23

    .line 368
    invoke-interface/range {v7 .. v23}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->startCmcRecord(IIIIJILjava/lang/String;IIIIIJLjava/lang/String;)Z

    move-result v5

    move v2, v5

    goto :goto_0

    .line 372
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;
    :cond_0
    const/4 v5, 0x3

    if-ne v0, v5, :cond_1

    .line 373
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v6

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->stopCmcRecord(II)Z

    move-result v5

    move v2, v5

    .line 377
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 378
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 379
    .local v5, "mediaEvent":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 380
    invoke-direct {v1, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->onCmcRecordingEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    .end local v5    # "mediaEvent":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    :cond_2
    monitor-exit p0

    return-void

    .line 362
    .end local v2    # "ret":Z
    .end local v3    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local p1    # "phoneId":I
    .end local p2    # "event":I
    .end local p3    # "info":Lcom/samsung/android/ims/cmc/SemCmcRecordingInfo;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
