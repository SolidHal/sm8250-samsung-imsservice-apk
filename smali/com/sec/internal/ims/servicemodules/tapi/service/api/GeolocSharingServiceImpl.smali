.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;
.super Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub;
.source "GeolocSharingServiceImpl.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
.implements Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IRegistrationStatusBroadcaster;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mGeolocSharingEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

.field private mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

.field private final mGshSessions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mServiceListeners:Landroid/os/RemoteCallbackList;
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

    .line 77
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    .line 104
    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService$Stub;-><init>()V

    .line 82
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGshSessions:Ljava/util/Hashtable;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mLock:Ljava/lang/Object;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGeolocSharingEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

    .line 94
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    .line 99
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    .line 105
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    .line 106
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGeolocSharingEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

    .line 107
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-interface {v0, v1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;->registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V

    .line 108
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-interface {v0, v1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;->registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V

    .line 109
    return-void
.end method

.method private addGeolocSharingSession(Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;)V
    .locals 2
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGshSessions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->getSharingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;->printStackTrace()V

    .line 122
    .end local v0    # "e":Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
    :goto_0
    return-void
.end method

.method private getContactId(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Lcom/gsma/services/rcs/contact/ContactId;
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 501
    new-instance v0, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getGeoMessage(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .param p1, "selection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 465
    const-string v0, "_id"

    const-string v1, "chat_id"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    .line 469
    .local v2, "MESSAGES_COLUMS":[Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v3

    .line 470
    .local v3, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 471
    .local v4, "msgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    invoke-virtual {v3, v2, p1, v5, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 472
    .local v6, "cursorDb":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    .line 473
    nop

    .line 495
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 473
    :cond_0
    return-object v5

    .line 471
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 476
    :cond_1
    :goto_0
    if-eqz v6, :cond_5

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 477
    nop

    .line 478
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 477
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 479
    .local v5, "chatIdString":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v7

    .line 480
    .local v7, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v7, :cond_2

    .line 481
    goto :goto_0

    .line 484
    :cond_2
    nop

    .line 485
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 484
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 486
    .local v8, "idString":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 487
    .local v9, "setMsgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v9, :cond_3

    .line 488
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    move-object v9, v10

    .line 489
    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 490
    invoke-interface {v4, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 492
    :cond_3
    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    .end local v5    # "chatIdString":Ljava/lang/String;
    .end local v7    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v8    # "idString":Ljava/lang/String;
    .end local v9    # "setMsgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    goto :goto_0

    .line 471
    :goto_2
    if-eqz v6, :cond_4

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v0

    .line 495
    :cond_5
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 497
    .end local v6    # "cursorDb":Landroid/database/Cursor;
    :cond_6
    return-object v4
.end method

.method private getImSessionByChatId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "chatId"    # Ljava/lang/String;

    .line 451
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    .line 452
    .local v0, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    .line 453
    .local v1, "imSession":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v1, :cond_0

    .line 454
    const/4 v2, 0x0

    return-object v2

    .line 456
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsString()Ljava/util/List;

    move-result-object v2

    .line 457
    .local v2, "participantsString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3
.end method

.method private getSharingId(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 505
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifyStateChanged(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;)V
    .locals 4
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .param p2, "state"    # Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;
    .param p3, "reason"    # Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    .line 544
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 548
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGeolocSharingEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->getContactId(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v2

    .line 549
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->getSharingId(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Ljava/lang/String;

    move-result-object v3

    .line 548
    invoke-virtual {v1, v2, v3, p2, p3}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->broadcastGeolocSharingStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;)V

    .line 550
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 552
    :cond_0
    :goto_0
    return-void
.end method

.method private removeGeolocSharingSession(Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGshSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method

.method public static translateToReasonCode(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;
    .locals 3
    .param p0, "code"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 509
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "translateToReasonCode(), CancelReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason:[I

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 540
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    return-object v0

    .line 522
    :pswitch_0
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->FAILED_SHARING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    return-object v0

    .line 520
    :pswitch_1
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    return-object v0

    .line 518
    :pswitch_2
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    return-object v0

    .line 516
    :pswitch_3
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    return-object v0

    .line 514
    :pswitch_4
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGeolocSharingEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->addEventListener(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;)V

    .line 314
    monitor-exit v0

    .line 315
    return-void

    .line 314
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addServiceRegistrationListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 177
    monitor-exit v0

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteAllGeolocSharings()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 348
    const-string v0, "content_type =\'application/vnd.gsma.rcspushlocation+xml\'"

    .line 349
    .local v0, "selection":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->getGeoMessage(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 350
    .local v1, "msgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v1, :cond_0

    .line 351
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v3, "deleteAllGeolocSharings: Message not found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void

    .line 355
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v2, "listMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 357
    .local v3, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 358
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 359
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->getImSessionByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 360
    .local v6, "uriString":Ljava/lang/String;
    new-instance v7, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {v6}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 361
    .local v7, "contact":Lcom/gsma/services/rcs/contact/ContactId;
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 362
    :try_start_0
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGeolocSharingEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

    new-instance v10, Ljava/util/ArrayList;

    .line 363
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 362
    invoke-virtual {v9, v7, v10}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->broadcastDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V

    .line 364
    monitor-exit v8

    .line 365
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v6    # "uriString":Ljava/lang/String;
    .end local v7    # "contact":Lcom/gsma/services/rcs/contact/ContactId;
    goto :goto_0

    .line 364
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v6    # "uriString":Ljava/lang/String;
    .restart local v7    # "contact":Lcom/gsma/services/rcs/contact/ContactId;
    :catchall_0
    move-exception v4

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 367
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v6    # "uriString":Ljava/lang/String;
    .end local v7    # "contact":Lcom/gsma/services/rcs/contact/ContactId;
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    invoke-interface {v4, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;->deleteGeolocSharings(Ljava/util/List;)V

    .line 368
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 369
    .local v5, "id":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->removeGeolocSharingSession(Ljava/lang/String;)V

    .line 370
    .end local v5    # "id":Ljava/lang/String;
    goto :goto_1

    .line 371
    :cond_2
    return-void
.end method

.method public deleteGeolocSharingBySharingId(Ljava/lang/String;)V
    .locals 5
    .param p1, "sharingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;->deleteGeolocSharings(Ljava/util/List;)V

    .line 432
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->getGeolocSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;

    .line 433
    .local v1, "geoSharing":Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;
    if-nez v1, :cond_0

    .line 434
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteGeolocSharingBySharingId, id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", GeolocSharingImpl not found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-void

    .line 438
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 439
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGeolocSharingEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->broadcastDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V

    .line 440
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->removeGeolocSharingSession(Ljava/lang/String;)V

    .line 443
    return-void

    .line 440
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public deleteGeolocSharingsByContactId(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 14
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 379
    if-nez p1, :cond_0

    .line 380
    return-void

    .line 383
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "telUri":Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 385
    .local v1, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    const-string v4, ""

    invoke-virtual {v2, v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v2

    .line 388
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v2, :cond_1

    .line 389
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v4, "deleteGeolocSharingsByContactId: No session for geoloc"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void

    .line 393
    :cond_1
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, "chatId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is_filetransfer = 1 and chat_id = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "content_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " =\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "application/vnd.gsma.rcspushlocation+xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 398
    .local v4, "selection":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->getGeoMessage(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 399
    .local v5, "msgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v5, :cond_2

    .line 400
    sget-object v6, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v7, "deleteGeolocSharingsByContactId: Message not found."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void

    .line 404
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v6, "listMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    .line 407
    .local v7, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 408
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v6, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 409
    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 410
    :try_start_0
    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGeolocSharingEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

    new-instance v12, Ljava/util/ArrayList;

    .line 411
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 410
    invoke-virtual {v11, p1, v12}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->broadcastDeleted(Lcom/gsma/services/rcs/contact/ContactId;Ljava/util/List;)V

    .line 412
    monitor-exit v10

    .line 413
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    goto :goto_0

    .line 412
    .restart local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v8

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 415
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_3
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    invoke-interface {v8, v6}, Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;->deleteGeolocSharings(Ljava/util/List;)V

    .line 416
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 417
    .local v9, "id":Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->removeGeolocSharingSession(Ljava/lang/String;)V

    .line 418
    .end local v9    # "id":Ljava/lang/String;
    goto :goto_1

    .line 420
    :cond_4
    return-void
.end method

.method public getGeolocSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;
    .locals 1
    .param p1, "sharingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGshSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    return-object v0
.end method

.method public getGeolocSharings()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .line 284
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Get geoloc sharing sessions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGshSessions:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 287
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGshSessions:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    .line 289
    .local v2, "sessionApi":Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;
    invoke-interface {v2}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .end local v2    # "sessionApi":Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;
    goto :goto_0

    .line 291
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;>;"
    :cond_0
    return-object v0
.end method

.method public getServiceVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 339
    const/4 v0, 0x2

    return v0
.end method

.method public handleGeolocSharingProgress(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 8
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 555
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSharingProgress id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getTransferredBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    .line 558
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v4

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "%."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 555
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 561
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGeolocSharingEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->getContactId(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v2

    .line 562
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->getSharingId(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Ljava/lang/String;

    move-result-object v3

    .line 563
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getTransferredBytes()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v6

    .line 561
    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->broadcastGeolocSharingprogress(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V

    .line 564
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 566
    :cond_0
    :goto_0
    return-void
.end method

.method public isServiceRegistered()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 151
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 152
    .local v0, "manager":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 153
    return v1

    .line 156
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 157
    .local v2, "registration":[Lcom/sec/ims/ImsRegistration;
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 158
    .local v5, "reg":Lcom/sec/ims/ImsRegistration;
    const-string v6, "gls"

    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 159
    const/4 v1, 0x1

    return v1

    .line 157
    .end local v5    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 163
    :cond_2
    return v1
.end method

.method public notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    .locals 4
    .param p1, "registered"    # Z
    .param p2, "code"    # Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    .line 203
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 207
    if-eqz p1, :cond_0

    .line 208
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceRegistered()V

    goto :goto_1

    .line 210
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3, p2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceUnregistered(Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :goto_1
    goto :goto_2

    .line 212
    :catch_0
    move-exception v3

    .line 213
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 205
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 217
    .end local v1    # "N":I
    monitor-exit v0

    .line 218
    return-void

    .line 217
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onCancelRequestFailed(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 637
    return-void
.end method

.method public onFileResizingNeeded(Lcom/sec/internal/ims/servicemodules/im/FtMessage;J)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .param p2, "resizeLimit"    # J

    .line 632
    return-void
.end method

.method public onFileTransferAttached(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 579
    return-void
.end method

.method public onFileTransferCreated(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 570
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGshSessions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;->startLocationShareInCall(J)V

    .line 572
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->INITIATING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    sget-object v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->notifyStateChanged(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;)V

    .line 574
    :cond_0
    return-void
.end method

.method public onFileTransferReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 583
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    invoke-direct {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;)V

    .line 584
    .local v0, "sessionApi":Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->addGeolocSharingSession(Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;)V

    .line 585
    sget-object v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->INVITED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    sget-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->notifyStateChanged(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;)V

    .line 587
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGeolocSharingEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->getSharingId(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->broadcastGeolocSharingInvitation(Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .param p2, "remoteUri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .param p4, "isGroupChat"    # Z

    .line 627
    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "remoteUri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .param p4, "isGroupChat"    # Z

    .line 673
    return-void
.end method

.method public onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 652
    return-void
.end method

.method public onMessageSendResponse(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 647
    return-void
.end method

.method public onMessageSendResponseFailed(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "messageNumber"    # I
    .param p3, "reasoncode"    # I
    .param p4, "requestMessageId"    # Ljava/lang/String;

    .line 667
    return-void
.end method

.method public onMessageSendResponseTimeout(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 642
    return-void
.end method

.method public onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "reason"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .param p3, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 662
    return-void
.end method

.method public onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 657
    return-void
.end method

.method public onTransferCanceled(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 614
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getCancelReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v0

    .line 615
    .local v0, "cancelReason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    sget-object v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    .line 616
    .local v1, "reasonCode":Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;
    if-eqz v0, :cond_0

    .line 617
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->translateToReasonCode(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    move-result-object v1

    .line 620
    :cond_0
    sget-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ABORTED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    invoke-direct {p0, p1, v2, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->notifyStateChanged(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;)V

    .line 621
    return-void
.end method

.method public onTransferCompleted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 609
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->TRANSFERRED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    sget-object v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->notifyStateChanged(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;)V

    .line 610
    return-void
.end method

.method public onTransferProgressReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 8
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 592
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->handleGeolocSharingProgress(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 593
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 595
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGeolocSharingEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->getContactId(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v2

    .line 596
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->getSharingId(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Ljava/lang/String;

    move-result-object v3

    .line 597
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getTransferredBytes()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v6

    .line 595
    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->broadcastGeolocSharingprogress(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V

    .line 598
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 600
    :cond_0
    :goto_0
    return-void
.end method

.method public onTransferStarted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 604
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->STARTED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    sget-object v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->notifyStateChanged(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;)V

    .line 605
    return-void
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGeolocSharingEventBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GeolocSharingEventBroadcaster;->removeEventListener(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;)V

    .line 327
    monitor-exit v0

    .line 328
    return-void

    .line 327
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeServiceRegistrationListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 191
    monitor-exit v0

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shareGeoloc(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;
    .locals 12
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "geoloc"    # Lcom/gsma/services/rcs/Geoloc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 234
    .local v0, "uri":Lcom/sec/ims/util/ImsUri;
    new-instance v1, Landroid/location/Location;

    const-string v2, "gps"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    move-object v10, v1

    .line 235
    .local v10, "location":Landroid/location/Location;
    const/4 v11, 0x0

    if-eqz p2, :cond_3

    .line 236
    invoke-virtual {p2}, Lcom/gsma/services/rcs/Geoloc;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v10, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 237
    invoke-virtual {p2}, Lcom/gsma/services/rcs/Geoloc;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v10, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 238
    invoke-virtual {p2}, Lcom/gsma/services/rcs/Geoloc;->getAccuracy()F

    move-result v1

    invoke-virtual {v10, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 243
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    if-nez v1, :cond_0

    .line 244
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "GLS module is not created"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-object v11

    .line 247
    :cond_0
    const/4 v2, 0x0

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 248
    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    .line 249
    invoke-virtual {p2}, Lcom/gsma/services/rcs/Geoloc;->getLabel()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 247
    move-object v3, v0

    move-object v5, v10

    invoke-interface/range {v1 .. v9}, Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;->createInCallLocationShare(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 250
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/sec/internal/ims/servicemodules/im/FtMessage;>;"
    const-string/jumbo v2, "sharing geolocation  failed, return null!"

    if-nez v1, :cond_1

    .line 251
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-object v11

    .line 256
    :cond_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 257
    .local v3, "msg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    if-nez v3, :cond_2

    .line 258
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->LOG_TAG:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-object v11

    .line 263
    :cond_2
    new-instance v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;)V

    .line 264
    .local v2, "sessionApi":Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->addGeolocSharingSession(Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    return-object v2

    .line 269
    .end local v2    # "sessionApi":Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;
    .end local v3    # "msg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    :catch_0
    move-exception v2

    .line 270
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    .line 267
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v2

    .line 268
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 271
    .end local v2    # "e":Ljava/lang/InterruptedException;
    nop

    .line 273
    :goto_0
    return-object v11

    .line 240
    .end local v1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/sec/internal/ims/servicemodules/im/FtMessage;>;"
    :cond_3
    return-object v11
.end method
