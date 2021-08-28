.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;
.super Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;
.source "FileTransferingServiceImpl.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
.implements Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IRegistrationStatusBroadcaster;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field static mContext:Landroid/content/Context;

.field private static mIFtSessions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/gsma/services/rcs/filetransfer/IFileTransfer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

.field private mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

.field private mLock:Ljava/lang/Object;

.field private mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

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

    .line 87
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mIFtSessions:Ljava/util/Hashtable;

    .line 123
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 128
    invoke-direct {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;-><init>()V

    .line 91
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    .line 108
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    .line 113
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    .line 129
    sput-object p1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mContext:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 131
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    .line 132
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    .line 133
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-interface {v0, v1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V

    .line 134
    return-void
.end method

.method public static addFileTransferingSession(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;)V
    .locals 1
    .param p0, "sessionId"    # Ljava/lang/String;
    .param p1, "transfer"    # Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;

    .line 364
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mIFtSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mIFtSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :cond_0
    return-void
.end method

.method private addRecord(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "chatIdString"    # Ljava/lang/String;
    .param p2, "idString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1178
    .local p3, "msgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1179
    .local v0, "setMsgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 1180
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 1181
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1182
    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1184
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1186
    :goto_0
    return-void
.end method

.method public static ftCancelReasonTranslator(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    .locals 2
    .param p0, "value"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 1076
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason:[I

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1108
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object v0

    .line 1090
    :pswitch_0
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_MAX_SIZE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object v0

    .line 1088
    :pswitch_1
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_LOW_SPACE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object v0

    .line 1086
    :pswitch_2
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object v0

    .line 1084
    :pswitch_3
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object v0

    .line 1082
    :pswitch_4
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object v0

    .line 1080
    :pswitch_5
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object v0

    .line 1078
    :pswitch_6
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ftRejectReasonTranslator(Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;)Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    .locals 2
    .param p0, "value"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    .line 1112
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$FtRejectReason:[I

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1120
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object v0

    .line 1116
    :cond_0
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object v0

    .line 1114
    :cond_1
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->REJECTED_MAX_SIZE:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    return-object v0
.end method

.method public static removeFileTransferingSession(Ljava/lang/String;)V
    .locals 1
    .param p0, "sessionId"    # Ljava/lang/String;

    .line 375
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mIFtSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mIFtSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :cond_0
    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 181
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addGroupFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->addGroupFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V

    .line 340
    monitor-exit v0

    .line 341
    return-void

    .line 340
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addOneToOneFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->addOneToOneFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V

    .line 312
    monitor-exit v0

    .line 313
    return-void

    .line 312
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canTransferFileToGroupChat(Ljava/lang/String;)Z
    .locals 5
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 478
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    .line 479
    .local v0, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    .line 481
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v1, :cond_0

    .line 482
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachFileToGroupChat: chat not exist - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v2, 0x0

    return v2

    .line 485
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public clearFileTransferDeliveryExpiration(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1227
    .local p1, "arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public deleteFileTransfer(Ljava/lang/String;)V
    .locals 8
    .param p1, "transferId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 647
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : deleteFileTransfer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 649
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->deleteMessages(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    .line 651
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getFileTransferByID(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;

    move-result-object v1

    .line 652
    .local v1, "fileTransfer":Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;
    if-nez v1, :cond_0

    .line 653
    return-void

    .line 655
    :cond_0
    const/4 v2, 0x0

    .line 656
    .local v2, "isGroup":Z
    const/4 v3, 0x0

    .line 657
    .local v3, "chatId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 658
    .local v4, "contactId":Lcom/gsma/services/rcs/contact/ContactId;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 659
    .local v5, "msgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 661
    :try_start_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->isGroupTransfer()Z

    move-result v6

    move v2, v6

    .line 662
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->getChatId()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 663
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    .line 667
    nop

    .line 668
    if-eqz v2, :cond_1

    .line 669
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    invoke-virtual {v6, v3, v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->broadcastDeleted(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 671
    :cond_1
    if-nez v4, :cond_2

    .line 672
    return-void

    .line 674
    :cond_2
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    invoke-virtual {v4}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->broadcastDeleted(Ljava/lang/String;Ljava/util/Set;)V

    .line 676
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->removeFileTransferingSessions(Ljava/util/List;)V

    .line 677
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->notifyChangeForDelete()V

    .line 678
    return-void

    .line 664
    :catch_0
    move-exception v6

    .line 665
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 666
    return-void
.end method

.method public deleteGroupFileTransfers()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 554
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : deleteGroupFileTransfers()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v0, "is_filetransfer = 1"

    .line 556
    .local v0, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getFileTransfers(ZLjava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 557
    .local v1, "msgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v1, :cond_1

    .line 558
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v2, "listMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 561
    .local v3, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 562
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 563
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 564
    :try_start_0
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    .line 565
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-virtual {v7, v8, v9}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->broadcastDeleted(Ljava/lang/String;Ljava/util/Set;)V

    .line 566
    monitor-exit v6

    .line 567
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    goto :goto_0

    .line 566
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 568
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 v5, 0x0

    invoke-interface {v4, v2, v5}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->deleteMessages(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    .line 569
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->removeFileTransferingSessions(Ljava/util/List;)V

    .line 570
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->notifyChangeForDelete()V

    .line 572
    .end local v2    # "listMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    :cond_1
    return-void
.end method

.method public deleteGroupFileTransfersByChatId(Ljava/lang/String;)V
    .locals 10
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 620
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : deleteGroupFileTransfersByChatId()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is_filetransfer = 1 and chat_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getFileTransfers(ZLjava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 624
    .local v1, "msgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v1, :cond_1

    .line 625
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 626
    .local v2, "listMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 628
    .local v3, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 629
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 630
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 631
    :try_start_0
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    .line 632
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-virtual {v7, v8, v9}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->broadcastDeleted(Ljava/lang/String;Ljava/util/Set;)V

    .line 633
    monitor-exit v6

    .line 634
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    goto :goto_0

    .line 633
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 635
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 v5, 0x0

    invoke-interface {v4, v2, v5}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->deleteMessages(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    .line 636
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->removeFileTransferingSessions(Ljava/util/List;)V

    .line 637
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->notifyChangeForDelete()V

    .line 639
    .end local v2    # "listMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    :cond_1
    return-void
.end method

.method public deleteOneToOneFileTransfers()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 526
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : deleteOneToOneFileTransfers()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v0, "is_filetransfer = 1"

    .line 528
    .local v0, "selection":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getFileTransfers(ZLjava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 529
    .local v2, "msgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v2, :cond_1

    .line 530
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local v3, "listMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 533
    .local v4, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 534
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 535
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getImSessionByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 536
    .local v7, "uriString":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 537
    :try_start_0
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    .line 538
    invoke-static {v7}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 539
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    .line 537
    invoke-virtual {v9, v10, v11}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->broadcastDeleted(Ljava/lang/String;Ljava/util/Set;)V

    .line 540
    monitor-exit v8

    .line 541
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v7    # "uriString":Ljava/lang/String;
    goto :goto_0

    .line 540
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v7    # "uriString":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 542
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v7    # "uriString":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v5, v3, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->deleteMessages(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    .line 543
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->removeFileTransferingSessions(Ljava/util/List;)V

    .line 544
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->notifyChangeForDelete()V

    .line 546
    .end local v3    # "listMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    :cond_1
    return-void
.end method

.method public deleteOneToOneFileTransfersByContactId(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 17
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 581
    move-object/from16 v1, p0

    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "start : deleteOneToOneFileTransfersByContactId()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, "telUri":Ljava/lang/String;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v3, v0

    .line 584
    .local v3, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 585
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    const-string v5, ""

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v4

    .line 587
    .local v4, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v4, :cond_0

    .line 588
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v5, "deleteOneToOneFileTransfersByContactId, no session for ft"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    return-void

    .line 591
    :cond_0
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    .line 592
    .local v5, "chatId":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is_filetransfer = 1 and chat_id = \'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 594
    .local v6, "selection":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getFileTransfers(ZLjava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 595
    .local v7, "msgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-eqz v7, :cond_2

    .line 596
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 597
    .local v8, "listMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    .line 599
    .local v9, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 600
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v8, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 601
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v1, v12}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getImSessionByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 602
    .local v12, "uriString":Ljava/lang/String;
    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 603
    :try_start_0
    iget-object v14, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    .line 604
    invoke-static {v12}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 605
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/util/Set;

    .line 603
    invoke-virtual {v14, v15, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->broadcastDeleted(Ljava/lang/String;Ljava/util/Set;)V

    .line 606
    monitor-exit v13

    .line 607
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v12    # "uriString":Ljava/lang/String;
    const/4 v0, 0x0

    goto :goto_0

    .line 606
    .restart local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v12    # "uriString":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 608
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v12    # "uriString":Ljava/lang/String;
    :cond_1
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 v10, 0x0

    invoke-interface {v0, v8, v10}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->deleteMessages(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    .line 609
    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->removeFileTransferingSessions(Ljava/util/List;)V

    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->notifyChangeForDelete()V

    .line 612
    .end local v8    # "listMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    :cond_2
    return-void
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig()Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v0

    .line 200
    .local v0, "config":Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)V

    return-object v1
.end method

.method public getFileTransfer(Ljava/lang/String;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    .locals 1
    .param p1, "transferId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 229
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mIFtSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    return-object v0
.end method

.method public getFileTransferByID(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;
    .locals 1
    .param p1, "transferId"    # Ljava/lang/String;

    .line 238
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mIFtSessions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;

    return-object v0
.end method

.method public getFileTransfers()Ljava/util/List;
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

    .line 211
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getFileTransfers get all transfered file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mIFtSessions:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 213
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    const/4 v1, 0x0

    .line 214
    .local v1, "temp":Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mIFtSessions:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/gsma/services/rcs/filetransfer/IFileTransfer;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    .line 216
    invoke-interface {v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    .end local v2    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/gsma/services/rcs/filetransfer/IFileTransfer;>;"
    :cond_0
    return-object v0
.end method

.method public getFileTransfers(ZLjava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p1, "isGroup"    # Z
    .param p2, "selection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1146
    const-string v0, "_id"

    const-string v1, "chat_id"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    .line 1149
    .local v2, "MESSAGES_COLUMS":[Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v3

    .line 1150
    .local v3, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 1151
    .local v4, "msgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v5, 0x0

    invoke-virtual {v3, v2, p2, v5, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1152
    .local v6, "cursorDb":Landroid/database/Cursor;
    if-eqz v6, :cond_5

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    .line 1156
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1157
    nop

    .line 1158
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 1157
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1159
    .local v5, "chatIdString":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v7

    .line 1160
    .local v7, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v7, :cond_1

    .line 1161
    goto :goto_0

    .line 1163
    :cond_1
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v8

    if-eq v8, p1, :cond_2

    .line 1164
    goto :goto_0

    .line 1166
    :cond_2
    nop

    .line 1167
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1166
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 1168
    .local v8, "idString":Ljava/lang/String;
    invoke-direct {p0, v5, v8, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->addRecord(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1169
    .end local v5    # "chatIdString":Ljava/lang/String;
    .end local v7    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v8    # "idString":Ljava/lang/String;
    goto :goto_0

    .line 1170
    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1171
    .end local v6    # "cursorDb":Landroid/database/Cursor;
    :cond_4
    return-object v4

    .line 1153
    .restart local v6    # "cursorDb":Landroid/database/Cursor;
    :cond_5
    :goto_1
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getFileTransfers: Message not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1154
    nop

    .line 1170
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1154
    :cond_6
    return-object v5

    .line 1151
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw v0
.end method

.method public getImSessionByChatId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "chatId"    # Ljava/lang/String;

    .line 1129
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    .line 1130
    .local v0, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    .line 1131
    .local v1, "imSession":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1132
    return-object v2

    .line 1134
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsString()Ljava/util/List;

    move-result-object v3

    .line 1136
    .local v3, "participantsString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1137
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 1139
    :cond_1
    return-object v2
.end method

.method public getServiceVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 1195
    const/4 v0, 0x2

    return v0
.end method

.method public getUndeliveredFileTransfers(Lcom/gsma/services/rcs/contact/ContactId;)Ljava/util/List;
    .locals 10
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 741
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : getUndeliveredFileTransfers()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
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

    .line 743
    .local v0, "uri":Lcom/sec/ims/util/ImsUri;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 744
    .local v1, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 745
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    const-string v4, ""

    invoke-virtual {v2, v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v2

    .line 747
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .local v3, "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 749
    return-object v3

    .line 751
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v4

    .line 752
    .local v4, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    const-string v5, "_id"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 755
    .local v5, "projection":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chat_id = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "notification_status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 757
    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " and "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "direction"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 758
    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "is_filetransfer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = 1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 759
    .local v6, "selection":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v7}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 760
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 761
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 762
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 759
    :catchall_0
    move-exception v8

    if-eqz v7, :cond_1

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v9

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v8

    .line 765
    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 766
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_3
    return-object v3
.end method

.method public handleContentTransfered(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 9
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 886
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getImSessionByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 887
    .local v0, "uriString":Ljava/lang/String;
    new-instance v1, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {v0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 888
    .local v1, "contact":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v2

    .line 889
    .local v2, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v3

    .line 890
    .local v3, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v3, :cond_0

    .line 891
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleContentTransfered, cannot get ImSession from chatId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    return-void

    .line 894
    :cond_0
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 895
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v5

    .line 896
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->TRANSFERRED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v8, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 895
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->broadcastTransferStateChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    goto :goto_0

    .line 899
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    .line 900
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->TRANSFERRED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v7, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 899
    invoke-virtual {v4, v1, v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->broadcastTransferStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    .line 903
    :goto_0
    return-void
.end method

.method public handleMessageDeliveryStatus(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V
    .locals 12
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 958
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getImSessionByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 959
    .local v0, "uriString":Ljava/lang/String;
    new-instance v1, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {v0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 960
    .local v1, "contact":Lcom/gsma/services/rcs/contact/ContactId;
    sget-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->FAILED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    .line 961
    .local v2, "state":Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v3, p2, :cond_0

    .line 962
    sget-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->DELIVERED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    goto :goto_0

    .line 963
    :cond_0
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v3, p2, :cond_1

    .line 964
    sget-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->DISPLAYED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    .line 966
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 967
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v3

    move-object v10, v3

    .line 968
    .local v10, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v3

    move-object v11, v3

    .line 969
    .local v11, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v11, :cond_2

    .line 970
    sget-object v3, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessageDeliveryStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", cannot get ImSession from chatId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 970
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    monitor-exit v9

    return-void

    .line 974
    :cond_2
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 975
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    .line 976
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v4

    .line 977
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->DELIVERED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    sget-object v8, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;

    .line 975
    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->broadcastGroupDeliveryInfoStateChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$ReasonCode;)V

    .line 979
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNotDisplayedCounter()I

    move-result v3

    if-nez v3, :cond_4

    .line 980
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v4

    .line 981
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 980
    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->broadcastTransferStateChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    goto :goto_1

    .line 984
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    .line 985
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 984
    invoke-virtual {v3, v1, v4, v2, v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->broadcastTransferStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    .line 988
    .end local v10    # "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .end local v11    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_4
    :goto_1
    monitor-exit v9

    .line 989
    return-void

    .line 988
    :catchall_0
    move-exception v3

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public handleTransferReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 9
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 909
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getImSessionByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, "uriString":Ljava/lang/String;
    new-instance v1, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {v0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 911
    .local v1, "contact":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v2

    .line 912
    .local v2, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v3

    .line 913
    .local v3, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v3, :cond_0

    .line 914
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleTransferReceived, cannot get ImSession from chatId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    return-void

    .line 917
    :cond_0
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 918
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v5

    .line 919
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->INVITED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v8, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 918
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->broadcastTransferStateChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    .line 921
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    .line 922
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v5

    .line 921
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->broadcastFileTransferInvitation(Ljava/lang/String;)V

    goto :goto_0

    .line 924
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    .line 925
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->INVITED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v7, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 924
    invoke-virtual {v4, v1, v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->broadcastTransferStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    .line 927
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    .line 928
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v5

    .line 927
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->broadcastFileTransferInvitation(Ljava/lang/String;)V

    .line 930
    :goto_0
    return-void
.end method

.method public handleTransferState(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 13
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 792
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getCancelReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v0

    .line 793
    .local v0, "cancel":Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRejectReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    move-result-object v1

    .line 794
    .local v1, "reject":Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;
    sget-object v2, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 795
    .local v2, "reasonCode":Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v3

    .line 796
    .local v3, "msgState":I
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v4

    .line 797
    .local v4, "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    if-eqz v1, :cond_0

    .line 798
    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->ftRejectReasonTranslator(Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;)Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    move-result-object v2

    goto :goto_0

    .line 800
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->ftCancelReasonTranslator(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    move-result-object v2

    .line 802
    :goto_0
    sget-object v5, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->FAILED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    .line 803
    .local v5, "state":Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 830
    :pswitch_0
    sget-object v5, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->QUEUED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    .line 831
    goto :goto_1

    .line 826
    :pswitch_1
    sget-object v5, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->ABORTED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    .line 827
    goto :goto_1

    .line 817
    :pswitch_2
    sget-object v5, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->TRANSFERRED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    .line 818
    goto :goto_1

    .line 814
    :pswitch_3
    sget-object v5, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->STARTED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    .line 815
    goto :goto_1

    .line 820
    :pswitch_4
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v6, v4, :cond_2

    .line 821
    sget-object v5, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->ACCEPTING:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    goto :goto_1

    .line 806
    :pswitch_5
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v6, v4, :cond_1

    .line 807
    sget-object v5, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->INVITED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    goto :goto_1

    .line 809
    :cond_1
    sget-object v5, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->INITIATING:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    .line 811
    nop

    .line 835
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getImSessionByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 836
    .local v6, "uriString":Ljava/lang/String;
    new-instance v7, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {v6}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 837
    .local v7, "contact":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v8

    .line 838
    .local v8, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v9

    .line 839
    .local v9, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v9, :cond_3

    .line 840
    sget-object v10, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleTransferState: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", cannot get ImSession from chatId : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    return-void

    .line 843
    :cond_3
    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 844
    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v11

    .line 845
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 844
    invoke-virtual {v10, v11, v12, v5, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->broadcastTransferStateChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    goto :goto_2

    .line 847
    :cond_4
    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    .line 848
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 847
    invoke-virtual {v10, v7, v11, v5, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->broadcastTransferStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    .line 851
    :goto_2
    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    invoke-virtual {v10, v7}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->broadcastUndeliveredFileTransfer(Lcom/gsma/services/rcs/contact/ContactId;)V

    .line 853
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->removeFileTransferingSession(Ljava/lang/String;)V

    .line 854
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public handleTransferingProgress(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 21
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 860
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getTransferredBytes()J

    move-result-wide v15

    .line 861
    .local v15, "currentSize":J
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v17

    .line 862
    .local v17, "totalSize":J
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getImSessionByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 863
    .local v19, "uriString":Ljava/lang/String;
    new-instance v9, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static/range {v19 .. v19}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 865
    .local v9, "contact":Lcom/gsma/services/rcs/contact/ContactId;
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v13

    .line 866
    .local v13, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v20

    .line 867
    .local v20, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v20, :cond_0

    .line 868
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTransferingProgress, cannot get ImSession from chatId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    return-void

    .line 871
    :cond_0
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 872
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v2

    .line 873
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 872
    move-wide v4, v15

    move-wide/from16 v6, v17

    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->broadcastTransferprogress(Ljava/lang/String;Ljava/lang/String;JJ)V

    move-object v1, v13

    goto :goto_0

    .line 876
    :cond_1
    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    .line 877
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 876
    move-wide v11, v15

    move-object v1, v13

    .end local v13    # "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .local v1, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    move-wide/from16 v13, v17

    invoke-virtual/range {v8 .. v14}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->broadcastTransferprogress(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;JJ)V

    .line 880
    :goto_0
    return-void
.end method

.method public isAllowedToTransferFile(Lcom/gsma/services/rcs/contact/ContactId;)Z
    .locals 6
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1232
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1233
    return v0

    .line 1236
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v1

    .line 1237
    .local v1, "phoneId":I
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v2

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    int-to-long v4, v4

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Ljava/lang/String;JI)Lcom/sec/ims/options/Capabilities;

    move-result-object v2

    .line 1239
    .local v2, "capx":Lcom/sec/ims/options/Capabilities;
    if-eqz v2, :cond_2

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    invoke-virtual {v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 1242
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1240
    :cond_2
    :goto_0
    return v0
.end method

.method public isAllowedTotransferFile(Lcom/gsma/services/rcs/contact/ContactId;)Z
    .locals 2
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 466
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getOwnCapabilities()Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    .line 467
    .local v0, "capx":Lcom/sec/ims/options/Capabilities;
    if-eqz v0, :cond_1

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    invoke-virtual {v0, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 470
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 468
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public isFileTransferAutoAccepted()Z
    .locals 2

    .line 1219
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig()Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v0

    .line 1220
    .local v0, "config":Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtAutAccept()Z

    move-result v1

    return v1
.end method

.method public isFtAutoAcceptedModeChangeable()Z
    .locals 2

    .line 1204
    invoke-static {}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance()Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object v0

    .line 1205
    .local v0, "rcsSetting":Lcom/sec/internal/ims/util/RcsSettingsUtils;
    if-eqz v0, :cond_0

    .line 1206
    nop

    .line 1207
    const-string v1, "AutoAcceptFtChangeable"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1206
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1209
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isServiceRegistered()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 154
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 155
    .local v0, "manager":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 156
    return v1

    .line 159
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 160
    .local v2, "registration":[Lcom/sec/ims/ImsRegistration;
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 161
    .local v5, "reg":Lcom/sec/ims/ImsRegistration;
    const-string v6, "ft"

    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 162
    const-string v6, "ft_http"

    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 160
    .end local v5    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 163
    .restart local v5    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_2
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 167
    .end local v5    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_3
    return v1
.end method

.method public markFileTransferAsRead(Ljava/lang/String;)V
    .locals 8
    .param p1, "transferId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 497
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v0

    .line 498
    .local v0, "message":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    if-nez v0, :cond_0

    .line 499
    return-void

    .line 501
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v1, "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->readMessages(Ljava/lang/String;Ljava/util/List;)V

    .line 505
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->updateNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    .line 506
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getImSessionByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 507
    .local v2, "uriString":Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 508
    .local v3, "phoneNum":Ljava/lang/String;
    new-instance v4, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {v4, v3}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 509
    .local v4, "contactId":Lcom/gsma/services/rcs/contact/ContactId;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    sget-object v6, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->DISPLAYED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v7, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    invoke-virtual {v5, v4, p1, v6, v7}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->broadcastTransferStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    .line 511
    return-void
.end method

.method public markUndeliveredFileTransfersAsProcessed(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 776
    .local p1, "transferIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : markUndeliveredFileTransfersAsProcessed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    .line 778
    .local v0, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 779
    .local v2, "msgId":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImMessage(I)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v3

    .line 780
    .local v3, "message":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    if-nez v3, :cond_0

    .line 781
    goto :goto_0

    .line 783
    :cond_0
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 784
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeFromPendingList(I)V

    .line 785
    .end local v2    # "msgId":Ljava/lang/String;
    .end local v3    # "message":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    goto :goto_0

    .line 786
    :cond_1
    return-void
.end method

.method public notifyChangeForDelete()V
    .locals 3

    .line 517
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/gsma/services/rcs/filetransfer/FileTransferLog;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 518
    return-void
.end method

.method public notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    .locals 4
    .param p1, "registered"    # Z
    .param p2, "code"    # Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    .line 400
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 404
    if-eqz p1, :cond_0

    .line 405
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceRegistered()V

    goto :goto_1

    .line 407
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3, p2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceUnregistered(Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    :goto_1
    goto :goto_2

    .line 409
    :catch_0
    move-exception v3

    .line 410
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 402
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 414
    .end local v1    # "N":I
    monitor-exit v0

    .line 415
    return-void

    .line 414
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

    .line 1068
    return-void
.end method

.method public onFileResizingNeeded(Lcom/sec/internal/ims/servicemodules/im/FtMessage;J)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .param p2, "resizeLimit"    # J

    .line 1063
    return-void
.end method

.method public onFileTransferAttached(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 1022
    return-void
.end method

.method public onFileTransferCreated(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 8
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 996
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mIFtSessions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 997
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->sendFile(J)V

    .line 999
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    .line 1000
    .local v0, "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    .line 1001
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v1, :cond_0

    .line 1002
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFileTransferCreated, cannot get ImSession from chatId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    return-void

    .line 1005
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1006
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v3

    .line 1007
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->STARTED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v6, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 1006
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->broadcastTransferStateChanged(Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    goto :goto_0

    .line 1010
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->getImSessionByChatId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1011
    .local v2, "uriString":Ljava/lang/String;
    new-instance v3, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-static {v2}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 1012
    .local v3, "contact":Lcom/gsma/services/rcs/contact/ContactId;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    .line 1013
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->STARTED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    sget-object v7, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 1012
    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->broadcastTransferStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;)V

    .line 1017
    .end local v0    # "cache":Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v2    # "uriString":Ljava/lang/String;
    .end local v3    # "contact":Lcom/gsma/services/rcs/contact/ContactId;
    :cond_2
    :goto_0
    return-void
.end method

.method public onFileTransferReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 1027
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-direct {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V

    .line 1029
    .local v0, "oneToOneFileTransfer":Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->addFileTransferingSession(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;)V

    .line 1031
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->handleTransferReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 1032
    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V
    .locals 1
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .param p2, "remoteUri"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .param p4, "isGroupChat"    # Z

    .line 1057
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->handleMessageDeliveryStatus(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    .line 1058
    return-void
.end method

.method public onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "strategyResponse"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .param p3, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 1073
    return-void
.end method

.method public onTransferCanceled(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 1051
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->handleTransferState(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 1052
    return-void
.end method

.method public onTransferCompleted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 1046
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->handleContentTransfered(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 1047
    return-void
.end method

.method public onTransferProgressReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 1036
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->handleTransferingProgress(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 1037
    return-void
.end method

.method public onTransferStarted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 1042
    return-void
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 190
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeFileTransferingSessions(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 386
    .local p1, "sessionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 387
    .local v1, "sessionId":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mIFtSessions:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .end local v1    # "sessionId":Ljava/lang/String;
    goto :goto_0

    .line 389
    :cond_0
    return-void
.end method

.method public removeGroupFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mGroupFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/GroupFileTransferBroadcaster;->removeGroupFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V

    .line 354
    monitor-exit v0

    .line 355
    return-void

    .line 354
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeOneToOneFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mOneToOneFileTransferBroadcaster:Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/OneToOneFileTransferBroadcaster;->removeOneToOneFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V

    .line 326
    monitor-exit v0

    .line 327
    return-void

    .line 326
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAutoAccept(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 692
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->isFtAutoAcceptedModeChangeable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->setAutoAcceptFt(I)V

    .line 696
    return-void

    .line 693
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string v1, "Auto accept mode is not changeable"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAutoAcceptInRoaming(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 710
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->isFtAutoAcceptedModeChangeable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->isFileTransferAutoAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->setAutoAcceptFt(I)V

    .line 717
    return-void

    .line 714
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string v1, "Auto accept mode in normal conditions must be enabled"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :cond_1
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string v1, "Auto accept mode is not changeable"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setImageResizeOption(I)V
    .locals 3
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 727
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 728
    .local v0, "data":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImageResizeOption"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/config/ConfigConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 730
    return-void
.end method

.method public transferAudioMessage(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    .locals 18
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "file"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1248
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1249
    .local v2, "telUri":Ljava/lang/String;
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v3, p2

    invoke-static {v0, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/FileUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v15

    .line 1250
    .local v15, "fileName":Ljava/lang/String;
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "transferAudioMessage, fileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 1252
    invoke-static {v0, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    sget-object v16, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->ATTACH:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    .line 1251
    const/4 v5, 0x0

    const/4 v9, 0x0

    const-string v10, "application/audio-message"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v0, 0x0

    move-object v6, v15

    move-object/from16 v17, v15

    .end local v15    # "fileName":Ljava/lang/String;
    .local v17, "fileName":Ljava/lang/String;
    move-object v15, v0

    invoke-interface/range {v4 .. v16}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->attachFileToSingleChat(ILjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 1255
    .local v4, "msg":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/sec/internal/ims/servicemodules/im/FtMessage;>;"
    const/4 v5, 0x0

    .line 1257
    .local v5, "messageId":Ljava/lang/String;
    :try_start_0
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    .line 1262
    :goto_0
    goto :goto_1

    .line 1260
    :catch_0
    move-exception v0

    .line 1261
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1

    .line 1258
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 1259
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 1263
    :goto_1
    if-nez v5, :cond_0

    .line 1264
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v6, "attachFileToSingleChat failed, return null!"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    const/4 v0, 0x0

    return-object v0

    .line 1267
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;

    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-direct {v0, v5, v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;-><init>(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V

    .line 1269
    .local v0, "transferImpl":Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;
    invoke-static {v5, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->addFileTransferingSession(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;)V

    .line 1270
    return-object v0
.end method

.method public transferFile(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    .locals 20
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "file"    # Landroid/net/Uri;
    .param p3, "disposition"    # Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    .param p4, "attachFileIcon"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 275
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "telUri":Ljava/lang/String;
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v3, p2

    invoke-static {v0, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/FileUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v15

    .line 277
    .local v15, "fileName":Ljava/lang/String;
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "transferFile, fileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/16 v17, 0x0

    :try_start_0
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const/4 v5, 0x0

    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 280
    invoke-static {v0, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v0, 0x0

    .line 282
    sget-object v6, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->RENDER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v14, p3

    if-ne v14, v6, :cond_0

    :try_start_1
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->RENDER:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    move-object/from16 v19, v15

    goto :goto_1

    .line 292
    :catch_1
    move-exception v0

    move-object/from16 v19, v15

    goto :goto_2

    .line 282
    :cond_0
    :try_start_2
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->ATTACH:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_0
    move-object/from16 v18, v6

    .line 279
    move-object v6, v15

    const/4 v14, 0x0

    move-object/from16 v19, v15

    .end local v15    # "fileName":Ljava/lang/String;
    .local v19, "fileName":Ljava/lang/String;
    move-object v15, v0

    move-object/from16 v16, v18

    :try_start_3
    invoke-interface/range {v4 .. v16}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->attachFileToSingleChat(ILjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 282
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 284
    .local v0, "ftMessage":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    if-nez v0, :cond_1

    .line 285
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v5, "attachFileToSingleChat failed, return null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-object v17

    .line 289
    :cond_1
    new-instance v4, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;

    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-direct {v4, v0, v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V

    .line 290
    .local v4, "transferImpl":Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->addFileTransferingSession(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2

    .line 291
    return-object v4

    .line 294
    .end local v0    # "ftMessage":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .end local v4    # "transferImpl":Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;
    :catch_2
    move-exception v0

    goto :goto_1

    .line 292
    :catch_3
    move-exception v0

    goto :goto_2

    .line 294
    .end local v19    # "fileName":Ljava/lang/String;
    .restart local v15    # "fileName":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v19, v15

    .line 295
    .end local v15    # "fileName":Ljava/lang/String;
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    .restart local v19    # "fileName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_3

    .line 292
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v19    # "fileName":Ljava/lang/String;
    .restart local v15    # "fileName":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v19, v15

    .line 293
    .end local v15    # "fileName":Ljava/lang/String;
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v19    # "fileName":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 296
    .end local v0    # "e":Ljava/lang/InterruptedException;
    nop

    .line 298
    :goto_3
    return-object v17
.end method

.method public transferFileToGroupChat(Ljava/lang/String;Landroid/net/Uri;Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;Z)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;
    .locals 17
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "file"    # Landroid/net/Uri;
    .param p3, "disposition"    # Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    .param p4, "attachFileIcon"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 434
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->canTransferFileToGroupChat(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 435
    return-object v2

    .line 437
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v3, p2

    invoke-static {v0, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/FileUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v15

    .line 438
    .local v15, "fileName":Ljava/lang/String;
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "transferFileToGroupChat, fileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :try_start_0
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 441
    invoke-static {v0, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 443
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->RENDER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v6, p3

    if-ne v6, v0, :cond_1

    :try_start_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->RENDER:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    move-object/from16 v16, v15

    goto :goto_1

    .line 452
    :catch_1
    move-exception v0

    move-object/from16 v16, v15

    goto :goto_2

    .line 443
    :cond_1
    :try_start_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->ATTACH:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4

    .line 440
    :goto_0
    move-object/from16 v5, p1

    move-object v6, v15

    move-object/from16 v16, v15

    .end local v15    # "fileName":Ljava/lang/String;
    .local v16, "fileName":Ljava/lang/String;
    move-object v15, v0

    :try_start_3
    invoke-interface/range {v4 .. v15}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->attachFileToGroupChat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 443
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 445
    .local v0, "ftMessage":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    if-nez v0, :cond_2

    .line 446
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v5, "attachFileToGroupChat failed, return null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-object v2

    .line 449
    :cond_2
    new-instance v4, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;

    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-direct {v4, v0, v5}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V

    .line 450
    .local v4, "transferImpl":Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->addFileTransferingSession(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2

    .line 451
    return-object v4

    .line 454
    .end local v0    # "ftMessage":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .end local v4    # "transferImpl":Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;
    :catch_2
    move-exception v0

    goto :goto_1

    .line 452
    :catch_3
    move-exception v0

    goto :goto_2

    .line 454
    .end local v16    # "fileName":Ljava/lang/String;
    .restart local v15    # "fileName":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v16, v15

    .line 455
    .end local v15    # "fileName":Ljava/lang/String;
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    .restart local v16    # "fileName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_3

    .line 452
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v16    # "fileName":Ljava/lang/String;
    .restart local v15    # "fileName":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v16, v15

    .line 453
    .end local v15    # "fileName":Ljava/lang/String;
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v16    # "fileName":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 456
    .end local v0    # "e":Ljava/lang/InterruptedException;
    nop

    .line 458
    :goto_3
    return-object v2
.end method
