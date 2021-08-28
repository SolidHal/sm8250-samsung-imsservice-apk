.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;
.super Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;
.source "MultimediaSessionServiceImpl.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;
.implements Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IRegistrationStatusBroadcaster;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private final mMultimediaMessagingCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mMultimediaMessagingSessionEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;

.field private final mMultimediaStreamingCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mMultimediaStreamingSessionEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;

.field private final mSessionEstablishCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

.field private mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

.field private serviceListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;)V
    .locals 1
    .param p1, "service"    # Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    .line 98
    invoke-direct {p0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->lock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaMessagingCache:Ljava/util/Map;

    .line 75
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaMessagingSessionEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaStreamingCache:Ljava/util/Map;

    .line 81
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaStreamingSessionEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionEstablishCache:Ljava/util/Map;

    .line 92
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    .line 99
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    .line 100
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mContext:Landroid/content/Context;

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->registerMessagingSessionListener(Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;)V

    .line 102
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 103
    return-void
.end method

.method private addMultimediaMessaging(Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;)V
    .locals 3
    .param p1, "multimediaMessaging"    # Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaMessagingCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionEstablishCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;->getSessionId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-void
.end method

.method private static translateError(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    .locals 2
    .param p0, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p1, "state"    # Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    .line 533
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->FAILED_MEDIA:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    if-ne p1, v0, :cond_0

    .line 534
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->FAILED_MEDIA:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object v0

    .line 537
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 565
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object v0

    .line 563
    :pswitch_0
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_SERVER_TIMEOUT:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object v0

    .line 561
    :pswitch_1
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_NOT_IMPLEMENTED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object v0

    .line 559
    :pswitch_2
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_REMOTE_USER_INVALID:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object v0

    .line 557
    :pswitch_3
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_REQUEST_PENDING:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object v0

    .line 555
    :pswitch_4
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_TEMP_NOT_ACCEPTABLE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object v0

    .line 553
    :pswitch_5
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object v0

    .line 551
    :pswitch_6
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_USER_CALL_BLOCK:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object v0

    .line 549
    :pswitch_7
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_SERVICE_UNAVAILABLE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object v0

    .line 547
    :pswitch_8
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_REQ_TERMINATED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object v0

    .line 545
    :pswitch_9
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_BAD_REQUEST:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object v0

    .line 543
    :pswitch_a
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_TEMP_UNAVAILABLE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object v0

    .line 541
    :pswitch_b
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_DECLINE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object v0

    .line 539
    :pswitch_c
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_BUSY:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static translateState(Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/gsma/services/rcs/extension/MultimediaSession$State;
    .locals 2
    .param p0, "state"    # Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;
    .param p1, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 571
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl$1;->$SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState:[I

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 593
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->FAILED:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    return-object v0

    .line 591
    :pswitch_0
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->ABORTED:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    return-object v0

    .line 589
    :pswitch_1
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->ABORTED:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    return-object v0

    .line 587
    :pswitch_2
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->ABORTED:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    return-object v0

    .line 585
    :pswitch_3
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->STARTED:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    return-object v0

    .line 579
    :pswitch_4
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p1, v0, :cond_0

    .line 580
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->RINGING:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    return-object v0

    .line 582
    :cond_0
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->ACCEPTING:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    return-object v0

    .line 573
    :pswitch_5
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p1, v0, :cond_1

    .line 574
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->INITIATING:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    return-object v0

    .line 576
    :cond_1
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->INVITED:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    .line 113
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 115
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addEventListener2(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaMessagingSessionEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;

    .line 128
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;->addMultimediaMessagingEventListener(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;)V

    .line 129
    monitor-exit v0

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addEventListener3(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaStreamingSessionEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;

    .line 143
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;->addMultimediaStreamingEventListener(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;)V

    .line 144
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;->getInstance(Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;)Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceConfigurationImpl;

    move-result-object v0

    return-object v0
.end method

.method public getMessagingSession(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;
    .locals 4
    .param p1, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaMessagingCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    .line 196
    .local v0, "result":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;
    if-eqz v0, :cond_0

    .line 197
    return-object v0

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->getMessagingSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    .line 201
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v1, :cond_1

    .line 202
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Session not exists."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v2, 0x0

    return-object v2

    .line 206
    :cond_1
    new-instance v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    invoke-direct {v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;-><init>(Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 207
    .local v2, "impl":Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->addMultimediaMessaging(Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;)V

    .line 209
    return-object v2
.end method

.method public getMessagingSessions(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 223
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v0, "multimediaMessagingSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaMessagingCache:Ljava/util/Map;

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

    check-cast v2, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    .line 226
    .local v2, "session":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;
    invoke-interface {v2}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->getServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    invoke-interface {v2}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v2    # "session":Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;
    :cond_0
    goto :goto_0

    .line 230
    :cond_1
    return-object v0

    .line 232
    .end local v0    # "multimediaMessagingSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStreamingSession(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 247
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string v1, "Unsupported operation"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStreamingSessions(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 261
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v0, "multimediaStreamingSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaStreamingCache:Ljava/util/Map;

    .line 263
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 262
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    .line 264
    .local v2, "multimediaStreamingSession":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;
    invoke-interface {v2}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->getServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    invoke-interface {v2}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v2    # "multimediaStreamingSession":Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;
    :cond_0
    goto :goto_0

    .line 268
    :cond_1
    return-object v0

    .line 270
    .end local v0    # "multimediaStreamingSessions":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public initiateMessagingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;[Ljava/lang/String;[Ljava/lang/String;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;
    .locals 6
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p3, "acceptType"    # [Ljava/lang/String;
    .param p4, "acceptWrappedType"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 295
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initiateMessagingSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ContactId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 298
    .local v0, "imsRegInfo":Lcom/sec/ims/ImsRegistration;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 299
    return-object v1

    .line 302
    :cond_0
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 303
    .local v2, "impu":Lcom/sec/ims/util/ImsUri;
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 304
    invoke-virtual {p2}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 306
    .local v3, "mUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v3, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    invoke-interface {v1, p1, v3, p3, p4}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->initiateMessagingSession(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;[Ljava/lang/String;[Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    .line 312
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    new-instance v4, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    invoke-direct {v4, v5, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;-><init>(Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 313
    .local v4, "impl":Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->addMultimediaMessaging(Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;)V

    .line 315
    return-object v4

    .line 307
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v4    # "impl":Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;
    :cond_2
    :goto_0
    return-object v1
.end method

.method public initiateStreamingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;
    .locals 2
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 334
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string v1, "Unsupported operation"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isServiceRegistered()Z
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->isServiceRegistered()Z

    move-result v0

    return v0
.end method

.method public notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    .locals 4
    .param p1, "registered"    # Z
    .param p2, "code"    # Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    .line 357
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 361
    if-eqz p1, :cond_0

    .line 362
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceRegistered()V

    goto :goto_1

    .line 364
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3, p2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceUnregistered(Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 368
    :catch_0
    move-exception v3

    .line 369
    .local v3, "e":Ljava/lang/NullPointerException;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 366
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 367
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 370
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    nop

    .line 359
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 372
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 373
    .end local v1    # "N":I
    monitor-exit v0

    .line 374
    return-void

    .line 373
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onIncomingSessionInvited(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;)V
    .locals 3
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 465
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingSessionInvited: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gsma.services.rcs.extension.action.NEW_MESSAGING_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 468
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 471
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 472
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sessionId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 475
    return-void
.end method

.method public onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/ImSession;[BLjava/lang/String;)V
    .locals 4
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p2, "content"    # [B
    .param p3, "contentType"    # Ljava/lang/String;

    .line 513
    const/4 v0, 0x0

    .line 514
    .local v0, "contactId":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 515
    .local v1, "uri":Lcom/sec/ims/util/ImsUri;
    if-eqz v1, :cond_0

    .line 516
    new-instance v2, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 518
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaMessagingSessionEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;

    .line 520
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    .line 518
    invoke-virtual {v2, v0, v3, p2, p3}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;->broadcastMessageReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[BLjava/lang/String;)V

    .line 521
    return-void
.end method

.method public onMessagesFlushed(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 3
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 525
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessagesFlushed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaMessagingSessionEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;

    new-instance v1, Lcom/gsma/services/rcs/contact/ContactId;

    .line 527
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    .line 526
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;->broadcastMessagesFlushed(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method public onStateChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)V
    .locals 8
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p2, "state"    # Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    .line 479
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStateChanged: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 481
    .local v0, "remoteUri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionClosedEvent()Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    move-result-object v1

    .line 482
    .local v1, "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isTimerExpired()Z

    move-result v2

    .line 483
    .local v2, "isTimerForSessionExpired":Z
    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 485
    .local v3, "reasonCode":Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    if-eqz v0, :cond_5

    .line 486
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    if-ne p2, v4, :cond_0

    .line 487
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionEstablishCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    :cond_0
    if-eqz v1, :cond_1

    .line 491
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->translateError(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    move-result-object v3

    .line 494
    :cond_1
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->CLOSED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    if-ne p2, v4, :cond_2

    if-eqz v2, :cond_2

    .line 495
    sget-object v3, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->ABORTED_BY_INACTIVITY:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 500
    :cond_2
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->CLOSED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    if-eq p2, v4, :cond_3

    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->FAILED_MEDIA:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    if-ne p2, v4, :cond_4

    .line 502
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->removeMultimediaMessaging(Ljava/lang/String;)V

    .line 505
    :cond_4
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaMessagingSessionEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;

    new-instance v5, Lcom/gsma/services/rcs/contact/ContactId;

    .line 506
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v6

    .line 507
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v7

    invoke-static {p2, v7}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->translateState(Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    move-result-object v7

    .line 505
    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;->broadcastStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/extension/MultimediaSession$State;Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V

    .line 509
    :cond_5
    return-void
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    .line 384
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 385
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->serviceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 386
    monitor-exit v0

    .line 387
    return-void

    .line 386
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeEventListener2(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    .line 398
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaMessagingSessionEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;

    .line 400
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaMessagingSessionEventBroadcaster;->removeMultimediaMessagingEventListener(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;)V

    .line 401
    monitor-exit v0

    .line 402
    return-void

    .line 401
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeEventListener3(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    .line 413
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 414
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaStreamingSessionEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;->removeMultimediaStreamingEventListener(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;)V

    .line 416
    monitor-exit v0

    .line 417
    return-void

    .line 416
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeMultimediaMessaging(Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 449
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mMultimediaMessagingCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionEstablishCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    return-void
.end method

.method public sendInstantMultimediaMessage(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;[BLjava/lang/String;)V
    .locals 3
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p3, "content"    # [B
    .param p4, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 429
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendInstantMultimediaMessage,serviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "contactId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    if-nez p2, :cond_0

    .line 432
    return-void

    .line 436
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaSessionServiceImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    invoke-virtual {p2}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/UriUtil;->parseNumber(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3, p4}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->sendInstantMultimediaMessage(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    nop

    .line 441
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setInactivityTimeout(J)V
    .locals 3
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 421
    :try_start_0
    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->setInactivityTimeout(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    nop

    .line 425
    return-void

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
