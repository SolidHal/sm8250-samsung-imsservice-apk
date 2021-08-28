.class public Lcom/sec/internal/ims/servicemodules/im/FtProcessor;
.super Landroid/os/Handler;
.source "FtProcessor.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;


# static fields
.field private static final EVENT_REJECT_FT_RESUME_INVITE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

.field private mContext:Landroid/content/Context;

.field private final mFtEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;",
            "Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field private final mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

.field private mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

.field private mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

.field private final mImsFtListenerList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/ft/IImsOngoingFtEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRcsSettingsUtils:Lcom/sec/internal/ims/util/RcsSettingsUtils;

.field private final mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

.field private final mThumbnailTool:Lcom/sec/internal/ims/util/ThumbnailTool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/internal/ims/servicemodules/im/ImCache;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imService"    # Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;
    .param p3, "imModule"    # Lcom/sec/internal/ims/servicemodules/im/ImModule;
    .param p4, "imCache"    # Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 100
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 91
    invoke-static {}, Lcom/sec/internal/helper/CollectionUtils;->createArrayListMultimap()Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mFtEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImsFtListenerList:Ljava/util/Map;

    .line 101
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 103
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 104
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 105
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    .line 106
    new-instance v0, Lcom/sec/internal/ims/util/ThumbnailTool;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/util/ThumbnailTool;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mThumbnailTool:Lcom/sec/internal/ims/util/ThumbnailTool;

    .line 107
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mRcsSettingsUtils:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    .line 108
    return-void
.end method

.method private checkForRejectIncomingFileTransfer(ILcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;ZZZZZZ)Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;
    .locals 12
    .param p1, "phoneId"    # I
    .param p2, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;
    .param p3, "isGroupChat"    # Z
    .param p4, "hasImSession"    # Z
    .param p5, "isMuted"    # Z
    .param p6, "hasDuplicateMessage"    # Z
    .param p7, "isResumeRequest"    # Z
    .param p8, "isSent"    # Z

    .line 1253
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    iget-object v3, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContentType:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContentType:Ljava/lang/String;

    const-string v5, "application/vnd.gsma.rcspushlocation+xml"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v5, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSenderUri:Lcom/sec/ims/util/ImsUri;

    .line 1254
    invoke-virtual {v3, p1, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getActiveCall(Lcom/sec/ims/util/ImsUri;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1255
    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v3

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->SIMPLE_IM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v3, v5, :cond_0

    .line 1256
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Receive geolocation Push via MSRP FT during inactive call!!."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iget-object v5, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    iget-object v7, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileTransferId:Ljava/lang/String;

    invoke-direct {v3, v5, v4, v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;-><init>(Ljava/lang/Object;Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;Ljava/lang/String;)V

    return-object v3

    .line 1260
    :cond_0
    if-eqz p3, :cond_2

    .line 1261
    if-nez p4, :cond_1

    iget-boolean v3, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    if-nez v3, :cond_1

    .line 1262
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v5, "onIncomingFileTransferReceived, no GC session for GC FT. auto reject"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iget-object v5, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->NOT_ACCEPTABLE_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    iget-object v7, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileTransferId:Ljava/lang/String;

    invoke-direct {v3, v5, v4, v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;-><init>(Ljava/lang/Object;Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;Ljava/lang/String;)V

    return-object v3

    .line 1265
    :cond_1
    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    .line 1266
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v5, "onIncomingFileTransferReceived, user reject GC FT."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iget-object v5, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    iget-object v7, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileTransferId:Ljava/lang/String;

    invoke-direct {v3, v5, v4, v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;-><init>(Ljava/lang/Object;Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;Ljava/lang/String;)V

    return-object v3

    .line 1272
    :cond_2
    const/4 v3, 0x1

    if-eqz p6, :cond_3

    if-nez p7, :cond_3

    if-eqz p8, :cond_3

    .line 1273
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onIncomingFileTransferReceived, duplicate message with imdnid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    invoke-static {p0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 1275
    .local v3, "callback":Landroid/os/Message;
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iget-object v7, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->NOT_ACCEPTABLE_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    const/4 v10, 0x0

    iget-boolean v11, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    move-object v6, v4

    move-object v8, v3

    invoke-direct/range {v6 .. v11}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;-><init>(Ljava/lang/Object;Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;Ljava/lang/String;Z)V

    return-object v4

    .line 1278
    .end local v3    # "callback":Landroid/os/Message;
    :cond_3
    if-nez p6, :cond_4

    if-eqz p7, :cond_4

    iget-boolean v5, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mPush:Z

    if-eqz v5, :cond_4

    .line 1279
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v5, "onIncomingFileTransferReceived, resume invite from MT cannot find history, auto reject"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    invoke-static {p0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 1281
    .restart local v3    # "callback":Landroid/os/Message;
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iget-object v7, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->NOT_ACCEPTABLE_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    const/4 v10, 0x0

    iget-boolean v11, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    move-object v6, v4

    move-object v8, v3

    invoke-direct/range {v6 .. v11}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;-><init>(Ljava/lang/Object;Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;Ljava/lang/String;Z)V

    return-object v4

    .line 1283
    .end local v3    # "callback":Landroid/os/Message;
    :cond_4
    return-object v4
.end method

.method private findFileTransfer(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 7
    .param p1, "session"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p2, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;
    .param p3, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1287
    if-nez p1, :cond_0

    .line 1288
    const/4 v0, 0x0

    return-object v0

    .line 1291
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileName:Ljava/lang/String;

    iget-wide v4, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileSize:J

    iget-object v6, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileTransferId:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessageforFtRequest(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v0

    .line 1294
    .local v0, "message":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    if-nez v0, :cond_1

    iget-object v1, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1295
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v2, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, p3, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v1

    .line 1296
    .local v1, "messageByImdn":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    instance-of v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v2, :cond_1

    .line 1297
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onIncomingFileTransferReceived, found messageByImdn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    move-object v0, v1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 1301
    .end local v1    # "messageByImdn":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :cond_1
    return-object v0
.end method

.method private notifyRegistrationError(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 1167
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getOwnIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1168
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    .line 1169
    .local v1, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    if-eqz v1, :cond_0

    const-string v2, "ft_fallback_directly_offline"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1170
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    goto :goto_0

    .line 1172
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    .line 1174
    :goto_0
    return-void
.end method

.method private onNotifyCloudMsgFtEvent(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 13
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 1206
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getOwnIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1207
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    .line 1208
    .local v1, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    if-eqz v1, :cond_2

    const-string v2, "central_msg_store"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1209
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNotifyCloudMsgFtEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :try_start_0
    const-string v2, "com.sec.internal.ims.cmstore.CloudMessageServiceWrapper"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1212
    .local v2, "cldMsgServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_1

    .line 1213
    const-string v3, "getInstance"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1214
    .local v3, "cldGetInstance":Ljava/lang/reflect/Method;
    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mContext:Landroid/content/Context;

    aput-object v6, v5, v7

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1215
    .local v5, "cldMsgServiceObj":Ljava/lang/Object;
    if-eqz v5, :cond_1

    .line 1216
    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v9

    const/4 v10, 0x2

    const/4 v11, 0x3

    if-ne v8, v9, :cond_0

    .line 1217
    const-string/jumbo v8, "receiveRCSMessage"

    new-array v9, v11, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v9, v7

    const-class v12, Ljava/lang/String;

    aput-object v12, v9, v4

    const-class v12, Ljava/lang/String;

    aput-object v12, v9, v10

    invoke-virtual {v2, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 1218
    .local v8, "method":Ljava/lang/reflect/Method;
    new-array v9, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v7

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getImdnId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v4

    aput-object v6, v9, v10

    invoke-static {v8, v5, v9}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1219
    .end local v8    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 1220
    :cond_0
    const-string/jumbo v8, "sentRCSMessage"

    new-array v9, v11, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v9, v7

    const-class v12, Ljava/lang/String;

    aput-object v12, v9, v4

    const-class v12, Ljava/lang/String;

    aput-object v12, v9, v10

    invoke-virtual {v2, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 1221
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    new-array v9, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v7

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getImdnId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v4

    aput-object v6, v9, v10

    invoke-static {v8, v5, v9}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1227
    .end local v2    # "cldMsgServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "cldGetInstance":Ljava/lang/reflect/Method;
    .end local v5    # "cldMsgServiceObj":Ljava/lang/Object;
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    goto :goto_1

    .line 1225
    :catch_0
    move-exception v2

    .line 1226
    .local v2, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v2}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 1229
    .end local v2    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_2
    :goto_1
    return-void
.end method

.method private rejectFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .locals 1
    .param p1, "rejectParams"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 1237
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mIsSlmSvcMsg:Z

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->rejectFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V

    goto :goto_0

    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->rejectFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V

    .line 1242
    :goto_0
    return-void
.end method


# virtual methods
.method protected acceptFileTransfer(I)V
    .locals 1
    .param p1, "messageId"    # I

    .line 535
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$tcDKm3sQTrX_jfp57aavrJnmN7Q;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$tcDKm3sQTrX_jfp57aavrJnmN7Q;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;I)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->post(Ljava/lang/Runnable;)Z

    .line 556
    return-void
.end method

.method protected attachFileToGroupChat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Ljava/util/concurrent/Future;
    .locals 15
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p4, "requestMessageId"    # Ljava/lang/String;
    .param p5, "contentType"    # Ljava/lang/String;
    .param p6, "isResizable"    # Z
    .param p7, "isBroadcast"    # Z
    .param p8, "isExtraFt"    # Z
    .param p9, "isFtSms"    # Z
    .param p10, "extInfo"    # Ljava/lang/String;
    .param p11, "fileDisposition"    # Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/FtMessage;",
            ">;"
        }
    .end annotation

    .line 705
    .local p3, "dispositionNotification":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v14, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p9

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p11

    move/from16 v12, p8

    move-object/from16 v13, p10

    invoke-direct/range {v1 .. v13}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$wbZpjBR-a055TQQl_hCiFZ3umuo;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;ZLjava/lang/String;ZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZLjava/lang/String;)V

    invoke-direct {v0, v14}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 785
    .local v0, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/sec/internal/ims/servicemodules/im/FtMessage;>;"
    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->post(Ljava/lang/Runnable;)Z

    .line 786
    return-object v0
.end method

.method protected attachFileToSingleChat(ILjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Ljava/util/concurrent/Future;
    .locals 15
    .param p1, "phoneId"    # I
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "contactUri"    # Lcom/sec/ims/util/ImsUri;
    .param p5, "requestMessageId"    # Ljava/lang/String;
    .param p6, "contentType"    # Ljava/lang/String;
    .param p7, "isprotectedAccountMsg"    # Z
    .param p8, "isResizable"    # Z
    .param p9, "isExtraft"    # Z
    .param p10, "isFtSms"    # Z
    .param p11, "extInfo"    # Ljava/lang/String;
    .param p12, "fileDisposition"    # Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/FtMessage;",
            ">;"
        }
    .end annotation

    .line 576
    .local p4, "dispositionNotification":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v14}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->attachFileToSingleChat(ILjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZZ)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected attachFileToSingleChat(ILjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZZ)Ljava/util/concurrent/Future;
    .locals 18
    .param p1, "phoneId"    # I
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "contactUri"    # Lcom/sec/ims/util/ImsUri;
    .param p5, "requestMessageId"    # Ljava/lang/String;
    .param p6, "contentType"    # Ljava/lang/String;
    .param p7, "isprotectedAccountMsg"    # Z
    .param p8, "isResizable"    # Z
    .param p9, "isExtraft"    # Z
    .param p10, "isFtSms"    # Z
    .param p11, "extInfo"    # Ljava/lang/String;
    .param p12, "fileDisposition"    # Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    .param p13, "isTokenUsed"    # Z
    .param p14, "isTokenLink"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;",
            "ZZ)",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/FtMessage;",
            ">;"
        }
    .end annotation

    .line 586
    .local p4, "dispositionNotification":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v15, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;

    move-object v1, v15

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v17, v0

    move-object v0, v15

    move/from16 v15, p14

    move-object/from16 v16, p11

    invoke-direct/range {v1 .. v16}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$1W7ZfSfa0h8vJhXN7j-lwDfaA0U;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;ILjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZZLjava/lang/String;)V

    move-object/from16 v1, v17

    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    move-object v0, v1

    .line 683
    .local v0, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/sec/internal/ims/servicemodules/im/FtMessage;>;"
    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->post(Ljava/lang/Runnable;)Z

    .line 684
    return-object v0
.end method

.method protected cancelFileTransfer(I)V
    .locals 1
    .param p1, "messageId"    # I

    .line 976
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$WQcdjFrRlbR01gfShWbT_eGAmhg;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$WQcdjFrRlbR01gfShWbT_eGAmhg;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;I)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->post(Ljava/lang/Runnable;)Z

    .line 986
    return-void
.end method

.method protected getFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Ljava/util/Collection;
    .locals 1
    .param p1, "type"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;",
            ">;"
        }
    .end annotation

    .line 1245
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mFtEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected getThumbnailTool()Lcom/sec/internal/ims/util/ThumbnailTool;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mThumbnailTool:Lcom/sec/internal/ims/util/ThumbnailTool;

    return-object v0
.end method

.method protected handleFileResizeResponse(IZLjava/lang/String;)V
    .locals 1
    .param p1, "messageId"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "filePath"    # Ljava/lang/String;

    .line 1108
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$WuywymtXMn4gh8fD5_ZuoqrsFnU;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$WuywymtXMn4gh8fD5_ZuoqrsFnU;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;IZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->post(Ljava/lang/Runnable;)Z

    .line 1132
    return-void
.end method

.method protected handleFileTransferProgress(Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    .line 1183
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFileTransferProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    if-eqz p1, :cond_3

    .line 1185
    const/4 v0, 0x0

    .line 1186
    .local v0, "ftMsg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    iget v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1187
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v0

    goto :goto_0

    .line 1188
    :cond_0
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mRawHandle:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1189
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMsrpMessage(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    move-result-object v0

    .line 1191
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1192
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->handleTransferProgress(Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;)V

    goto :goto_1

    .line 1194
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleFileTransferProgress: cannot get FtMessage."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    .end local v0    # "ftMsg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    :cond_3
    :goto_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 126
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 132
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    if-eqz v0, :cond_1

    .line 133
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    .line 134
    .local v1, "handlerResult":Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v2, v3, :cond_1

    .line 135
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "CancelingState: Failed to reject transfer."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    .end local v1    # "handlerResult":Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;
    :cond_1
    :goto_0
    return-void
.end method

.method protected init(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/ims/servicemodules/im/ImTranslation;)V
    .locals 0
    .param p1, "imSessionProcessor"    # Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;
    .param p2, "imTranslation"    # Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    .line 111
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    .line 112
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    .line 113
    return-void
.end method

.method public synthetic lambda$acceptFileTransfer$2$FtProcessor(I)V
    .locals 5
    .param p1, "messageId"    # I

    .line 536
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptFileTransfer: messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v0

    .line 539
    .local v0, "message":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    if-nez v0, :cond_0

    .line 540
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "FT not found in the cache."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 543
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 544
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "acceptFileTransfer: not registered"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v2

    .line 546
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v2, :cond_1

    .line 547
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v4, "acceptFileTransfer: No session"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-void

    .line 550
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->notifyRegistrationError(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 551
    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    goto :goto_0

    .line 552
    :cond_2
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->acceptTransfer()V

    .line 555
    .end local v1    # "phoneId":I
    :goto_0
    return-void
.end method

.method public synthetic lambda$attachFileToGroupChat$4$FtProcessor(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;ZLjava/lang/String;ZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 24
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "dispositionNotification"    # Ljava/util/Set;
    .param p4, "requestMessageId"    # Ljava/lang/String;
    .param p5, "isFtSms"    # Z
    .param p6, "contentType"    # Ljava/lang/String;
    .param p7, "isResizable"    # Z
    .param p8, "isBroadcast"    # Z
    .param p9, "fileDisposition"    # Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    .param p10, "isExtraFt"    # Z
    .param p11, "extInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 706
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v15, p2

    move/from16 v13, p8

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachFileToGroupChat: chatId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", filePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", disp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", requestMessageId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p4

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "isFtSms="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p5

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", contentType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p6

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isResizable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p7

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isBroadcast="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", fileDisposition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p9

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v6

    .line 712
    .local v6, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    const/16 v17, 0x0

    .line 715
    .local v17, "message":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    if-nez v6, :cond_0

    .line 716
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachFileToGroupChat: chat not exist - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    move-object v14, v15

    goto/16 :goto_3

    .line 720
    :cond_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v5

    .line 721
    .local v5, "phoneId":I
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    .line 722
    .local v4, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v14

    invoke-interface {v4, v2, v3, v14}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isFTViaHttp(Lcom/sec/internal/ims/servicemodules/im/ImConfig;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v18

    .line 724
    .local v18, "isFTViaHttp":Z
    const-string v3, "attachFileToGroupChat: No files found"

    const/16 v19, 0x0

    if-eqz v18, :cond_5

    .line 725
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 726
    const-string/jumbo v14, "slm"

    invoke-virtual {v2, v5, v14}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isServiceRegistered(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 727
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v13, :cond_3

    :cond_1
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 728
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getSlmAuth()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    move-result-object v2

    sget-object v14, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->ENABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    if-ne v2, v14, :cond_3

    .line 729
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v13, :cond_2

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v2

    sget-object v14, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_MANY_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne v2, v14, :cond_3

    :cond_2
    const/4 v14, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    move v14, v2

    .line 733
    .local v14, "isSlm":Z
    :goto_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v16

    move-object/from16 v20, v3

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 735
    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v21

    move-object/from16 v22, v4

    .end local v4    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .local v22, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    invoke-virtual/range {v21 .. v21}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v21

    .line 733
    move-object/from16 v4, v20

    move-object v3, v1

    move-object v1, v4

    move-object v4, v6

    move/from16 v23, v5

    .end local v5    # "phoneId":I
    .local v23, "phoneId":I
    move-object/from16 v5, p2

    move-object/from16 v20, v6

    .end local v6    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .local v20, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    move-object/from16 v6, v16

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move/from16 v10, p10

    move-object/from16 v11, v21

    move/from16 v12, p5

    move/from16 v13, p8

    move-object v0, v15

    move-object/from16 v15, p9

    move/from16 v16, p7

    invoke-virtual/range {v2 .. v16}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingFtHttpMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZLandroid/net/Network;ZZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;Z)Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    move-result-object v2

    .line 738
    .end local v17    # "message":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .local v2, "message":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 739
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    .line 741
    return-object v19

    .line 743
    .end local v14    # "isSlm":Z
    :cond_4
    move-object v14, v0

    move-object/from16 v3, v20

    move-object/from16 v1, v22

    move/from16 v15, v23

    move-object/from16 v0, p0

    goto/16 :goto_2

    .line 745
    .end local v2    # "message":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .end local v20    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v22    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v23    # "phoneId":I
    .restart local v4    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v5    # "phoneId":I
    .restart local v6    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local v17    # "message":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    :cond_5
    move-object v1, v3

    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v20, v6

    move-object v0, v15

    .end local v4    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v5    # "phoneId":I
    .end local v6    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local v20    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local v22    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v23    # "phoneId":I
    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    move/from16 v15, v23

    .end local v23    # "phoneId":I
    .local v15, "phoneId":I
    invoke-virtual {v3, v15}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    const/4 v10, 0x0

    move-object/from16 v4, v20

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingFtMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v2

    .line 747
    .end local v17    # "message":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .restart local v2    # "message":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attachFileToGroupChat: Make new outgoing ft "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v15}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 750
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "attachFileToGroupChat: not registered"

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->notifyRegistrationError(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 752
    return-object v19

    .line 755
    :cond_6
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    .line 756
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    .line 758
    return-object v19

    .line 761
    :cond_7
    move-object/from16 v1, v22

    const/4 v3, 0x1

    .end local v22    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .local v1, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    invoke-interface {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isFtHttpOnlySupported(Z)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 762
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v4, "attachFileToGroupChat: FT MSRP is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne v3, v4, :cond_8

    .line 764
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    goto :goto_1

    :cond_8
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 763
    :goto_1
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    .line 765
    return-object v19

    .line 768
    :cond_9
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v15}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    .line 769
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v5

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_SERVICE:I

    int-to-long v6, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v8

    move-object/from16 v3, v20

    .end local v20    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .local v3, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v9

    .line 768
    invoke-interface/range {v4 .. v9}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->checkCapability(Ljava/util/Set;JLcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v4

    .line 771
    .local v4, "strategyResponse":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v5, v6, :cond_a

    .line 772
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->startSession()V

    .line 779
    .end local v4    # "strategyResponse":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    :cond_a
    :goto_2
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 780
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->attachFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    move-object/from16 v17, v2

    .line 782
    .end local v1    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v2    # "message":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .end local v15    # "phoneId":I
    .end local v18    # "isFTViaHttp":Z
    .restart local v17    # "message":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    :goto_3
    return-object v17
.end method

.method public synthetic lambda$attachFileToSingleChat$3$FtProcessor(ILjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 26
    .param p1, "phoneId"    # I
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "contactUri"    # Lcom/sec/ims/util/ImsUri;
    .param p4, "dispositionNotification"    # Ljava/util/Set;
    .param p5, "requestMessageId"    # Ljava/lang/String;
    .param p6, "contentType"    # Ljava/lang/String;
    .param p7, "isprotectedAccountMsg"    # Z
    .param p8, "isResizable"    # Z
    .param p9, "isExtraft"    # Z
    .param p10, "isFtSms"    # Z
    .param p11, "fileDisposition"    # Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    .param p12, "isTokenUsed"    # Z
    .param p13, "isTokenLink"    # Z
    .param p14, "extInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 587
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    move-object/from16 v13, p4

    move-object/from16 v12, p6

    move/from16 v11, p10

    move/from16 v10, p12

    move/from16 v9, p13

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachFileToSingleChat: filePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " contactUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " disp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " requestMessageId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p5

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " contentType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isprotectedAccountMsg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isResizable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p8

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isExtraft="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p9

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isFtSms="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " fileDisposition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " isTokenUsed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isTokenLink="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 593
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v4, v2

    .line 594
    .local v4, "p":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1, v14}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 596
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 598
    .local v2, "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    if-eqz v9, :cond_0

    goto :goto_0

    .line 600
    :cond_0
    if-eqz v10, :cond_1

    .line 601
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->ON:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-object v3, v2

    goto :goto_1

    .line 604
    :cond_1
    :goto_0
    move-object v3, v2

    .end local v2    # "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .local v3, "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    :goto_1
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v2

    .line 608
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v2, :cond_2

    .line 609
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v5, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-object/from16 v22, v2

    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .local v22, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v17

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILjava/util/Collection;)Ljava/util/Set;

    move-result-object v18

    sget-object v19, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    sget-object v20, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-object/from16 v16, v6

    move-object/from16 v21, v3

    invoke-virtual/range {v16 .. v21}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewEmptySession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v2

    .line 613
    .end local v22    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local v2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v16, v3

    .end local v3    # "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .local v16, "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    .end local v4    # "p":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .local v17, "p":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    const-string/jumbo v4, "session not found, new session created: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v2

    goto :goto_2

    .line 608
    .end local v5    # "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .end local v16    # "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .end local v17    # "p":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .restart local v3    # "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .restart local v4    # "p":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    :cond_2
    move-object/from16 v22, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v3    # "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .end local v4    # "p":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .restart local v16    # "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .restart local v17    # "p":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .restart local v22    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    move-object/from16 v6, v22

    .line 617
    .end local v22    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .local v6, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :goto_2
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v5

    .line 618
    .local v5, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v4

    invoke-interface {v5, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isFTViaHttp(Lcom/sec/internal/ims/servicemodules/im/ImConfig;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_4

    if-eqz v11, :cond_3

    goto :goto_3

    :cond_3
    move v2, v4

    goto :goto_4

    :cond_4
    :goto_3
    move v2, v3

    :goto_4
    move/from16 v18, v2

    .line 621
    .local v18, "isFTViaHttp":Z
    const-string v2, "application/vnd.gsma.rcspushlocation+xml"

    const/16 v19, 0x0

    if-nez v18, :cond_6

    invoke-interface {v5, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isFtHttpOnlySupported(Z)Z

    move-result v20

    if-eqz v20, :cond_5

    goto :goto_5

    :cond_5
    move-object/from16 v21, v5

    move-object/from16 v25, v6

    move-object/from16 v24, v16

    goto :goto_6

    :cond_6
    :goto_5
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 623
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 625
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v20

    move-object/from16 v21, v5

    .end local v5    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .local v21, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v5

    invoke-virtual {v4, v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v20

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 623
    move-object/from16 v24, v16

    .end local v16    # "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .local v24, "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    move-object v4, v6

    move-object/from16 v5, p2

    move-object/from16 v25, v6

    .end local v6    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .local v25, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p9

    move-object/from16 v11, v20

    move/from16 v12, p10

    move/from16 v13, v22

    move/from16 v14, v23

    move-object/from16 v15, p11

    move/from16 v16, p8

    invoke-virtual/range {v2 .. v16}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingFtHttpMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZLandroid/net/Network;ZZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;Z)Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    move-result-object v2

    .line 629
    .local v2, "message":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    if-nez v18, :cond_d

    .line 630
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v4, "attachFileToSingleChat: isFTViaHttp is false"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    .line 632
    return-object v19

    .line 621
    .end local v2    # "message":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .end local v21    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v24    # "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .end local v25    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local v5    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v6    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .restart local v16    # "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    :cond_7
    move-object/from16 v21, v5

    move-object/from16 v25, v6

    move-object/from16 v24, v16

    .line 635
    .end local v5    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v6    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v16    # "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .restart local v21    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v24    # "chatMode":Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .restart local v25    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :goto_6
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v14, v5

    .line 636
    .local v14, "modifiedDisposition":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->CPM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v5, v6, :cond_8

    goto :goto_7

    :cond_8
    move v3, v4

    :goto_7
    move v15, v3

    .line 637
    .local v15, "isCpm":Z
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtStAndFwEnabled()Z

    move-result v16

    .line 640
    .local v16, "supportFtStAndFw":Z
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v13

    .line 641
    .local v13, "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    if-eqz v13, :cond_9

    .line 642
    sget-object v3, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    move-object/from16 v12, p3

    invoke-interface {v13, v12, v3, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v3

    goto :goto_8

    :cond_9
    move-object/from16 v12, p3

    move-object/from16 v3, v19

    :goto_8
    move-object v11, v3

    .line 643
    .local v11, "capx":Lcom/sec/ims/options/Capabilities;
    if-eqz v15, :cond_a

    .line 644
    move-object/from16 v10, p4

    invoke-interface {v14, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v9, p6

    goto :goto_a

    .line 646
    :cond_a
    move-object/from16 v10, p4

    if-eqz v11, :cond_b

    if-eqz v16, :cond_b

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    invoke-virtual {v11, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 647
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v14, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, p6

    goto :goto_9

    .line 648
    :cond_b
    move-object/from16 v9, p6

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 649
    invoke-interface {v14, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    .line 651
    :cond_c
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {v14, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 653
    :goto_9
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMDN modified: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] to ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :goto_a
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual/range {v25 .. v25}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    const/16 v20, 0x0

    move-object/from16 v4, v25

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object v7, v14

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v22, v11

    .end local v11    # "capx":Lcom/sec/ims/options/Capabilities;
    .local v22, "capx":Lcom/sec/ims/options/Capabilities;
    move/from16 v11, p8

    move/from16 v12, v20

    move-object/from16 v20, v13

    .end local v13    # "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    .local v20, "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    move-object/from16 v13, p14

    invoke-virtual/range {v2 .. v13}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingFtMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v2

    .line 660
    .end local v14    # "modifiedDisposition":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;>;"
    .end local v15    # "isCpm":Z
    .end local v16    # "supportFtStAndFw":Z
    .end local v20    # "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    .end local v22    # "capx":Lcom/sec/ims/options/Capabilities;
    .restart local v2    # "message":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    :cond_d
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attachFileToSingleChat: Make new outgoing ft "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v3

    if-nez v3, :cond_e

    .line 663
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v4, "attachFileToSingleChat: not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->notifyRegistrationError(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 665
    return-object v19

    .line 668
    :cond_e
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getContentType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UNSUPPORTED TYPE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 669
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    .line 670
    return-object v19

    .line 673
    :cond_f
    new-instance v3, Ljava/io/File;

    move-object/from16 v4, p2

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_10

    .line 674
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v5, "attachFileToSingleChat: No files found"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    .line 676
    return-object v19

    .line 678
    :cond_10
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-object/from16 v5, v25

    .end local v25    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .local v5, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 679
    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->attachFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 680
    return-object v2
.end method

.method public synthetic lambda$cancelFileTransfer$10$FtProcessor(I)V
    .locals 3
    .param p1, "messageId"    # I

    .line 977
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelFileTransfer: messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v0

    .line 980
    .local v0, "message":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    if-nez v0, :cond_0

    .line 981
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "FT not found in the cache."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 983
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    .line 985
    :goto_0
    return-void
.end method

.method public synthetic lambda$handleFileResizeResponse$12$FtProcessor(IZLjava/lang/String;)V
    .locals 5
    .param p1, "messageId"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "filePath"    # Ljava/lang/String;

    .line 1109
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v0

    .line 1110
    .local v0, "msg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    if-eqz v0, :cond_3

    .line 1112
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    .line 1113
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v1, :cond_0

    .line 1114
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleFileResizeResponse: FT not found in the cache."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    return-void

    .line 1117
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v2

    .line 1118
    .local v2, "phoneId":I
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1119
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handleFileResizeResponse: not registered"

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->notifyRegistrationError(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 1121
    return-void

    .line 1123
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getCancelReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-ne v3, v4, :cond_2

    .line 1124
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handleFileResizeResponse: FT is cancelled already!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    return-void

    .line 1127
    :cond_2
    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->handleFileResizeResponse(ZLjava/lang/String;)V

    .line 1128
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .end local v2    # "phoneId":I
    goto :goto_0

    .line 1129
    :cond_3
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Message not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :goto_0
    return-void
.end method

.method public synthetic lambda$notifyOngoingFtEvent$13$FtProcessor(ZI)V
    .locals 4
    .param p1, "state"    # Z
    .param p2, "phoneId"    # I

    .line 1142
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOngoingFtEvent ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImsFtListenerList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1146
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImsFtListenerList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 1147
    .local v0, "listenerList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/ft/IImsOngoingFtEventListener;>;"
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1148
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1149
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    .line 1150
    .local v3, "listener":Lcom/sec/ims/ft/IImsOngoingFtEventListener;
    invoke-interface {v3, p1}, Lcom/sec/ims/ft/IImsOngoingFtEventListener;->onFtStateChanged(Z)V

    .line 1148
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1152
    .end local v2    # "index":I
    .end local v3    # "listener":Lcom/sec/ims/ft/IImsOngoingFtEventListener;
    :cond_0
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1156
    .end local v0    # "listenerList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/ft/IImsOngoingFtEventListener;>;"
    .end local v1    # "length":I
    :cond_1
    goto :goto_1

    .line 1154
    :catch_0
    move-exception v0

    .line 1155
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1157
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public synthetic lambda$onAutoResumeTransfer$0$FtProcessor(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 4
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 352
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoResumeTransfer: messageId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 354
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v0, :cond_0

    .line 355
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onAutoResumeTransfer: session not found in the cache."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 360
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 361
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onAutoResumeTransfer: not registered"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void

    .line 365
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 366
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->startSession()V

    .line 368
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 369
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->resumeTransferFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 370
    return-void
.end method

.method public synthetic lambda$onSendDeliveredNotification$1$FtProcessor(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 4
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 428
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSendDeliveredNotification: msgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 430
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v0, :cond_0

    .line 431
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendDeliveredNotification: conversationId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", imdnId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getImdnId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 431
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendDeliveredNotification(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    .line 435
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "session not found in the cache."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :goto_0
    return-void
.end method

.method public synthetic lambda$readFile$6$FtProcessor(J)V
    .locals 7
    .param p1, "messageId"    # J

    .line 845
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readFile: messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v0

    .line 848
    .local v0, "msg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    if-nez v0, :cond_0

    .line 849
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    return-void

    .line 852
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 853
    .local v1, "phoneId":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 854
    .local v2, "messageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v3, :cond_1

    .line 856
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "readFile: not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateDesiredNotificationStatusAsDisplay(Ljava/util/Collection;)V

    .line 859
    return-void

    .line 861
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v3

    .line 862
    .local v3, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v3, :cond_2

    .line 863
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "readFile: session not found."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    return-void

    .line 866
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendDisplayedNotification: conversationId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", imdnId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getImdnId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 866
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 868
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->readMessages(Ljava/util/List;)V

    .line 869
    return-void
.end method

.method public synthetic lambda$rejectFileTransfer$7$FtProcessor(I)V
    .locals 3
    .param p1, "messageId"    # I

    .line 879
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rejectFileTransfer: messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v0

    .line 882
    .local v0, "message":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    if-nez v0, :cond_0

    .line 883
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "FT not found in the cache."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 885
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->rejectTransfer()V

    .line 887
    :goto_0
    return-void
.end method

.method public synthetic lambda$resumeReceivingTransfer$9$FtProcessor(I)V
    .locals 5
    .param p1, "messageId"    # I

    .line 936
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeReceivingTransfer: messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v0

    .line 938
    .local v0, "message":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    if-nez v0, :cond_0

    .line 939
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "resumeReceivingTransfer: FT not found in the cache."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    return-void

    .line 942
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->isOutgoing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 944
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "resumeReceivingTransfer: Ignore resume forking FT."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    return-void

    .line 947
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    .line 948
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v1, :cond_2

    .line 949
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "FT not found in the cache."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    return-void

    .line 953
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v2

    .line 954
    .local v2, "phoneId":I
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v3

    if-nez v3, :cond_3

    instance-of v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v3, :cond_3

    .line 955
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "resumeReceivingTransfer: not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->notifyRegistrationError(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 957
    return-void

    .line 959
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 960
    instance-of v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v3, :cond_4

    .line 961
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "request resuming FT to sender using INVITE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->removeAutoResumeFileTimer()V

    .line 963
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->resumeTransferFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_0

    .line 965
    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->receiveTransfer(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;Z)V

    .line 967
    :goto_0
    return-void
.end method

.method public synthetic lambda$resumeSendingTransfer$8$FtProcessor(IZ)V
    .locals 5
    .param p1, "messageId"    # I
    .param p2, "isResizable"    # Z

    .line 898
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeSendingTransfer: messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v0

    .line 900
    .local v0, "message":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    const-string/jumbo v1, "resumeSendingTransfer: FT not found in the cache."

    if-nez v0, :cond_0

    .line 901
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    return-void

    .line 905
    :cond_0
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setIsResizable(Z)V

    .line 906
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v2

    .line 907
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v2, :cond_1

    .line 908
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    return-void

    .line 912
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 913
    .local v1, "phoneId":I
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v3

    if-nez v3, :cond_2

    instance-of v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v3, :cond_2

    .line 914
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "resumeSendingTransfer: not registered"

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->notifyRegistrationError(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 916
    return-void

    .line 920
    :cond_2
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 921
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->startSession()V

    .line 923
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 924
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->removeAutoResumeFileTimer()V

    .line 925
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->resumeTransferFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 926
    return-void
.end method

.method public synthetic lambda$sendFile$5$FtProcessor(JLjava/lang/String;)V
    .locals 5
    .param p1, "messageId"    # J
    .param p3, "deviceName"    # Ljava/lang/String;

    .line 806
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendFile: messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", deviceName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v0

    .line 808
    .local v0, "msg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    if-nez v0, :cond_0

    .line 809
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendFile: Message not found in cache"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    return-void

    .line 812
    :cond_0
    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setDeviceName(Ljava/lang/String;)V

    .line 814
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    .line 815
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v1, :cond_1

    .line 816
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendFile: Session not found in the cache"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    return-void

    .line 820
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v2

    .line 821
    .local v2, "phoneId":I
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isRegistered(I)Z

    move-result v3

    if-nez v3, :cond_2

    instance-of v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v3, :cond_2

    .line 822
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "sendFile: not registered"

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->notifyRegistrationError(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 824
    return-void

    .line 830
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsSlmSvcMsg:Z

    if-nez v3, :cond_3

    .line 831
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->startSession()V

    .line 833
    :cond_3
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 834
    return-void
.end method

.method public synthetic lambda$setAutoAcceptFt$11$FtProcessor(II)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "accept"    # I

    .line 996
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    move v0, p1

    .local v0, "tmpPhoneId":I
    goto :goto_0

    .line 999
    .end local v0    # "tmpPhoneId":I
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v0

    .line 1002
    .restart local v0    # "tmpPhoneId":I
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAutoAcceptFt: accept="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isRoaming="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isDataRoaming(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isDataRoaming(I)Z

    move-result v3

    invoke-virtual {v1, v2, p2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->setFtAutAccept(Landroid/content/Context;IZ)V

    .line 1005
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p2, v3, :cond_2

    if-ne p2, v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v3

    .line 1006
    .local v4, "home":Z
    :goto_2
    if-ne p2, v2, :cond_3

    move v1, v3

    .line 1007
    .local v1, "roaming":Z
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mRcsSettingsUtils:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    if-eqz v2, :cond_4

    .line 1008
    const-string v3, "AutoAcceptFileTransfer"

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->writeBoolean(Ljava/lang/String;Z)V

    .line 1009
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mRcsSettingsUtils:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    const-string v3, "AutoAcceptFtInRoaming"

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->writeBoolean(Ljava/lang/String;Z)V

    .line 1011
    :cond_4
    return-void
.end method

.method protected notifyOngoingFtEvent(ZI)V
    .locals 1
    .param p1, "state"    # Z
    .param p2, "phoneId"    # I

    .line 1141
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$eUdb_vLoehsyXXZP_FZ5WcmjfYw;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$eUdb_vLoehsyXXZP_FZ5WcmjfYw;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;ZI)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->post(Ljava/lang/Runnable;)Z

    .line 1158
    return-void
.end method

.method public onAutoResumeTransfer(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 1
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 351
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$Md1r9weCxFp5zwL8vSlJz_7c51k;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$Md1r9weCxFp5zwL8vSlJz_7c51k;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->post(Ljava/lang/Runnable;)Z

    .line 371
    return-void
.end method

.method public onCancelRequestFailed(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 413
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mFtEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;

    .line 414
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;->onCancelRequestFailed(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 415
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
    goto :goto_0

    .line 416
    :cond_0
    return-void
.end method

.method public onFileResizingNeeded(Lcom/sec/internal/ims/servicemodules/im/FtMessage;J)V
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .param p2, "resizeLimit"    # J

    .line 399
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mFtEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;

    .line 400
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;->onFileResizingNeeded(Lcom/sec/internal/ims/servicemodules/im/FtMessage;J)V

    .line 401
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
    goto :goto_0

    .line 402
    :cond_0
    return-void
.end method

.method public onFtErrorReport(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V
    .locals 5
    .param p1, "ftError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 448
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onFtErrorReport"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 450
    .local v0, "imsRegistration":Lcom/sec/ims/ImsRegistration;
    if-eqz v0, :cond_0

    .line 451
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    .line 452
    .local v1, "governor":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    if-eqz v1, :cond_0

    .line 453
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne p1, v2, :cond_0

    .line 454
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onFtErrorReport : 403 forbidden w/o warning header"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v2, Lcom/sec/ims/util/SipError;

    const/16 v3, 0x193

    const-string v4, "Forbidden"

    invoke-direct {v2, v3, v4}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    const-string v3, "ft"

    invoke-interface {v1, v3, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    .line 459
    .end local v1    # "governor":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    :cond_0
    return-void
.end method

.method protected onIncomingFileTransferReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;)V
    .locals 22
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;

    .line 1020
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingFileTransferReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImDump()Lcom/sec/internal/ims/servicemodules/im/ImDump;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingFileTransferReceived: conversationId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", imdnId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isSLM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImDump;->addEventLogs(Ljava/lang/String;)V

    .line 1024
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v1, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v8

    .line 1025
    .local v8, "phoneId":I
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v7

    .line 1029
    .local v7, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v1, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mParticipants:Ljava/util/List;

    iget-object v2, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSenderUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getNormalizedParticipants(ILjava/util/List;Lcom/sec/ims/util/ImsUri;)Ljava/util/Set;

    move-result-object v6

    .line 1031
    .local v6, "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingFileTransferReceived normalizedParticipants : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-gt v0, v5, :cond_1

    iget-boolean v0, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsConference:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v5

    :goto_1
    move v3, v0

    .line 1033
    .local v3, "isGroupChat":Z
    iget v0, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mStart:I

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    move v2, v0

    .line 1034
    .local v2, "isResumeRequest":Z
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-boolean v1, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    if-nez v1, :cond_4

    iget-object v1, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1035
    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string/jumbo v11, "participantbased_closed_groupchat"

    invoke-interface {v1, v11}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v4

    goto :goto_4

    :cond_4
    :goto_3
    move v1, v5

    .line 1034
    :goto_4
    invoke-virtual {v0, v3, v1, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->generateChatType(ZZZ)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v1

    .line 1038
    .local v1, "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    iget-object v11, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v13, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v0, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    iget-object v15, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    sget-object v20, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move v12, v8

    move v14, v3

    move-object/from16 v18, v15

    move-object v15, v1

    move-object/from16 v17, v0

    move-object/from16 v19, v6

    invoke-virtual/range {v11 .. v20}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->findSession(ILjava/lang/String;ZLcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v11

    .line 1040
    .local v11, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    iget-object v0, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v8, v0}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v12

    .line 1041
    .local v12, "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    invoke-direct {v9, v11, v10, v12}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->findFileTransfer(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v13

    .line 1042
    .local v13, "message":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    if-eqz v11, :cond_5

    move v14, v5

    goto :goto_5

    :cond_5
    move v14, v4

    :goto_5
    if-eqz v11, :cond_6

    .line 1043
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_6

    move v15, v5

    goto :goto_6

    :cond_6
    move v15, v4

    :goto_6
    if-eqz v13, :cond_7

    move/from16 v16, v5

    goto :goto_7

    :cond_7
    move/from16 v16, v4

    :goto_7
    if-eqz v13, :cond_8

    .line 1044
    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v0, v4, :cond_8

    move/from16 v18, v5

    goto :goto_8

    :cond_8
    const/16 v18, 0x0

    .line 1042
    :goto_8
    move-object/from16 v0, p0

    move-object v4, v1

    .end local v1    # "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .local v4, "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    move v1, v8

    move/from16 v19, v2

    .end local v2    # "isResumeRequest":Z
    .local v19, "isResumeRequest":Z
    move-object/from16 v2, p1

    move/from16 v20, v3

    .end local v3    # "isGroupChat":Z
    .local v20, "isGroupChat":Z
    move-object/from16 v17, v12

    move-object v12, v4

    .end local v4    # "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .local v12, "chatType":Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .local v17, "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    move v4, v14

    move v14, v5

    move v5, v15

    move-object v15, v6

    .end local v6    # "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    .local v15, "normalizedParticipants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    move/from16 v6, v16

    move-object/from16 v21, v7

    .end local v7    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .local v21, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    move/from16 v7, v19

    move/from16 v16, v8

    .end local v8    # "phoneId":I
    .local v16, "phoneId":I
    move/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->checkForRejectIncomingFileTransfer(ILcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;ZZZZZZ)Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    move-result-object v0

    .line 1046
    .local v0, "rejectParams":Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;
    if-eqz v0, :cond_9

    .line 1047
    invoke-direct {v9, v0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->rejectFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V

    .line 1048
    return-void

    .line 1051
    :cond_9
    move/from16 v1, v19

    .end local v19    # "isResumeRequest":Z
    .local v1, "isResumeRequest":Z
    if-eqz v1, :cond_b

    iget-boolean v2, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mPush:Z

    if-eqz v2, :cond_b

    if-eqz v13, :cond_b

    .line 1052
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onIncomingFileTransferReceived, resume invite"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iget v2, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mStart:I

    if-lez v2, :cond_a

    iget v2, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mStart:I

    add-int/lit8 v4, v2, -0x1

    goto :goto_9

    :cond_a
    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v13, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setTransferredBytes(I)V

    .line 1059
    :cond_b
    if-nez v11, :cond_c

    .line 1060
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onIncomingFileTransferReceived: Session not found by participants."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object v2, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v3, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    move-object/from16 v14, v17

    .end local v17    # "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .local v14, "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    invoke-virtual {v2, v3, v15, v12, v14}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewEmptySession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v11

    goto :goto_a

    .line 1059
    .end local v14    # "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .restart local v17    # "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    :cond_c
    move-object/from16 v14, v17

    .line 1065
    .end local v17    # "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .restart local v14    # "direction":Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    :goto_a
    iget-object v2, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    invoke-virtual {v11, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setConversationId(Ljava/lang/String;)V

    .line 1066
    iget-object v2, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    invoke-virtual {v11, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setContributionId(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {v11, v14}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setDirection(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V

    .line 1069
    if-eqz v13, :cond_e

    .line 1070
    iget-object v2, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mDeviceName:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 1071
    iget-object v2, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v13, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setDeviceName(Ljava/lang/String;)V

    .line 1073
    :cond_d
    iget-object v2, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v2, v13}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1074
    iget-object v2, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    invoke-virtual {v13, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setConversationId(Ljava/lang/String;)V

    .line 1075
    iget-object v2, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    invoke-virtual {v13, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setContributionId(Ljava/lang/String;)V

    goto :goto_b

    .line 1077
    :cond_e
    iget-boolean v2, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsRoutingMsg:Z

    if-eqz v2, :cond_f

    .line 1078
    iget-object v2, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v3, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRequestUri:Lcom/sec/ims/util/ImsUri;

    iget-object v4, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mPAssertedId:Lcom/sec/ims/util/ImsUri;

    iget-object v5, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSenderUri:Lcom/sec/ims/util/ImsUri;

    iget-object v6, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mReceiver:Lcom/sec/ims/util/ImsUri;

    .line 1079
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v7

    .line 1078
    move/from16 v8, v16

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getMsgRoutingType(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;ZI)Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object v2

    iput-object v2, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 1080
    iget-object v2, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    if-ne v2, v3, :cond_f

    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1081
    iget-object v2, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mReceiver:Lcom/sec/ims/util/ImsUri;

    iput-object v2, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSenderUri:Lcom/sec/ims/util/ImsUri;

    .line 1084
    :cond_f
    iget-object v2, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    invoke-virtual {v2, v3, v11, v10, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewIncomingFtMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v13

    .line 1086
    :goto_b
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1087
    iget-object v2, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->setLegacyLatching(Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)V

    .line 1089
    :cond_10
    invoke-virtual {v11, v13, v10, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->receiveTransfer(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;Z)V

    .line 1091
    if-eqz v1, :cond_11

    const-string v2, "auto_accept_ft_resume"

    move-object/from16 v3, v21

    .end local v21    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .local v3, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    invoke-interface {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1092
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Resume FT auto accept"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->acceptTransfer()V

    goto :goto_c

    .line 1091
    .end local v3    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v21    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    :cond_11
    move-object/from16 v3, v21

    .line 1096
    .end local v21    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .restart local v3    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    :cond_12
    :goto_c
    iget-object v2, v9, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v4, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    iget-object v5, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSenderUri:Lcom/sec/ims/util/ImsUri;

    iget-object v6, v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnTime:Ljava/util/Date;

    invoke-virtual {v2, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->updateServiceAvailability(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V

    .line 1097
    return-void
.end method

.method public onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 1
    .param p1, "ftMessage"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "strategyResponse"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .param p3, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 468
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 469
    return-void
.end method

.method public onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 1
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 463
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 464
    return-void
.end method

.method public onRequestChatType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .locals 2
    .param p1, "chatId"    # Ljava/lang/String;

    .line 480
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 481
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v1

    return-object v1

    .line 484
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public onRequestCompleteCallback(Ljava/lang/String;)Landroid/os/Message;
    .locals 2
    .param p1, "chatId"    # Ljava/lang/String;

    .line 496
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 497
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getFtCompleteCallback()Landroid/os/Message;

    move-result-object v1

    return-object v1

    .line 500
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public onRequestIncomingFtTransferPath()Ljava/lang/String;
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/helper/FilePathGenerator;->getFileDownloadPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onRequestParticipantUris(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 513
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 516
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    return-object v1
.end method

.method public onRequestRegistrationType()Ljava/lang/Integer;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->onRequestRegistrationType()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onSendDeliveredNotification(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 1
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 427
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$338HdMOIMai1P3XdpYNAnSyrp6Y;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$338HdMOIMai1P3XdpYNAnSyrp6Y;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->post(Ljava/lang/Runnable;)Z

    .line 438
    return-void
.end method

.method public onTransferCanceled(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 4
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 295
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->isReportMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getReportMsgParams()Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessage(I)V

    .line 298
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getReportMsgParams()Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamMsgId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onMessageReportResponse(Ljava/lang/Long;Z)V

    .line 300
    :cond_0
    return-void

    .line 304
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/os/ImsGateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    const-string v0, "GATE"

    const-string v1, "<GATE-M>MMS_ERROR</GATE-M>"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mFtEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;

    .line 311
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;->onTransferCanceled(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 312
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
    goto :goto_0

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 314
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-nez v0, :cond_4

    .line 315
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onTransferCanceled: session not found in the cache."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void

    .line 318
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->hasFileTransferInprogress()Z

    move-result v1

    if-nez v1, :cond_5

    .line 319
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->notifyImSessionClosed(I)V

    .line 321
    :cond_5
    return-void
.end method

.method public onTransferCompleted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 8
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 250
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->isReportMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getReportMsgParams()Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessage(I)V

    .line 253
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getReportMsgParams()Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamMsgId()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImTranslation;->onMessageReportResponse(Ljava/lang/Long;Z)V

    .line 255
    :cond_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 259
    .local v0, "phoneId":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    .line 260
    .local v2, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const-string v4, "display_ft_in_gallery"

    invoke-interface {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 261
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 262
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, "contentType":Ljava/lang/String;
    if-eqz v4, :cond_3

    const-string/jumbo v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "image"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 264
    :cond_2
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update gallery app: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mContext:Landroid/content/Context;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFilePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    const/4 v6, 0x0

    invoke-static {v5, v1, v6, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 271
    .end local v4    # "contentType":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->setCountReconfiguration(I)V

    .line 272
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->removeReconfigurationEvent()V

    .line 273
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mFtEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;

    .line 274
    .local v3, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
    invoke-interface {v3, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;->onTransferCompleted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 275
    .end local v3    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
    goto :goto_0

    .line 277
    :cond_4
    instance-of v1, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-nez v1, :cond_5

    .line 278
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    .line 279
    .local v1, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeFromPendingList(I)V

    .line 280
    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->hasFileTransferInprogress()Z

    move-result v3

    if-nez v3, :cond_5

    .line 281
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->notifyImSessionClosed(I)V

    .line 284
    .end local v1    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_5
    return-void
.end method

.method public onTransferCreated(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 185
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTransferCreated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->onNotifyCloudMsgFtEvent(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->isReportMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 189
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 192
    :cond_0
    return-void

    .line 195
    .end local v0    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mFtEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;

    .line 196
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;->onFileTransferCreated(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 197
    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;->onFileTransferAttached(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 198
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
    goto :goto_0

    .line 199
    :cond_2
    return-void
.end method

.method public onTransferInProgress(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 4
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 332
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mFtEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;

    .line 333
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;->onTransferStarted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 334
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
    goto :goto_0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 336
    .local v0, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    if-eqz v0, :cond_1

    .line 337
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->notifyImSessionEstablished(I)V

    .line 339
    :cond_1
    return-void
.end method

.method public onTransferProgressReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 4
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 225
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTransferProgressReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getTransferredBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImSessionProcessor:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->isReportMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mFtEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;

    .line 231
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;->onTransferProgressReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 232
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
    goto :goto_0

    .line 233
    :cond_1
    return-void
.end method

.method public onTransferReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 209
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFileTransferReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->onNotifyCloudMsgFtEvent(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 211
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mFtEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;

    .line 212
    .local v1, "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;->onFileTransferReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 213
    .end local v1    # "listener":Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
    goto :goto_0

    .line 214
    :cond_0
    return-void
.end method

.method protected readFile(J)V
    .locals 1
    .param p1, "messageId"    # J

    .line 844
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$fKa51Fa0Jn7B51GDC94TdkChOoU;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$fKa51Fa0Jn7B51GDC94TdkChOoU;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;J)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->post(Ljava/lang/Runnable;)Z

    .line 870
    return-void
.end method

.method protected registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V
    .locals 1
    .param p1, "type"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .param p2, "listener"    # Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;

    .line 116
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mFtEventListeners:Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method protected registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V
    .locals 4
    .param p1, "listener"    # Lcom/sec/ims/ft/IImsOngoingFtEventListener;
    .param p2, "phoneId"    # I

    .line 148
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerImsOngoingFtListener phoneId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImsFtListenerList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImsFtListenerList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImsFtListenerList:Ljava/util/Map;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImsFtListenerList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 154
    .local v1, "listenerList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/ft/IImsOngoingFtEventListener;>;"
    if-eqz p1, :cond_1

    .line 155
    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 160
    .end local v1    # "listenerList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/ft/IImsOngoingFtEventListener;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->hasProcessingFileTransfer()Z

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->notifyOngoingFtEvent(ZI)V

    .line 162
    return-void

    .line 157
    .restart local v1    # "listenerList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/ft/IImsOngoingFtEventListener;>;"
    :cond_1
    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "no registerImsOngoingFtListener and not work"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    monitor-exit v0

    return-void

    .line 160
    .end local v1    # "listenerList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/ft/IImsOngoingFtEventListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected rejectFileTransfer(I)V
    .locals 1
    .param p1, "messageId"    # I

    .line 878
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$Ua6OJTV6lIO9-8ygQF8K5QOnVs8;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$Ua6OJTV6lIO9-8ygQF8K5QOnVs8;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;I)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->post(Ljava/lang/Runnable;)Z

    .line 888
    return-void
.end method

.method protected resumeReceivingTransfer(I)V
    .locals 1
    .param p1, "messageId"    # I

    .line 935
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$_MB1Fms-utCH65FSIKTv1Ineuks;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$_MB1Fms-utCH65FSIKTv1Ineuks;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;I)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->post(Ljava/lang/Runnable;)Z

    .line 968
    return-void
.end method

.method protected resumeSendingTransfer(IZ)V
    .locals 1
    .param p1, "messageId"    # I
    .param p2, "isResizable"    # Z

    .line 897
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$I50GspMyL4qg9nNCYi8GaN3GiOA;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$I50GspMyL4qg9nNCYi8GaN3GiOA;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;IZ)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->post(Ljava/lang/Runnable;)Z

    .line 927
    return-void
.end method

.method protected sendFile(J)V
    .locals 1
    .param p1, "messageId"    # J

    .line 795
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->sendFile(JLjava/lang/String;)V

    .line 796
    return-void
.end method

.method protected sendFile(JLjava/lang/String;)V
    .locals 1
    .param p1, "messageId"    # J
    .param p3, "deviceName"    # Ljava/lang/String;

    .line 805
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$VgOtQR-ioZ9gVbli8cMJUvYCzlA;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$VgOtQR-ioZ9gVbli8cMJUvYCzlA;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->post(Ljava/lang/Runnable;)Z

    .line 835
    return-void
.end method

.method protected setAutoAcceptFt(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "accept"    # I

    .line 994
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$ucDZtQRSNEu0e7053hP-3slaDK8;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$FtProcessor$ucDZtQRSNEu0e7053hP-3slaDK8;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;II)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->post(Ljava/lang/Runnable;)Z

    .line 1012
    return-void
.end method

.method protected unregisterImsOngoingListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/ft/IImsOngoingFtEventListener;
    .param p2, "phoneId"    # I

    .line 165
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterImsOngoingListener phoneId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImsFtListenerList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImsFtListenerList:Ljava/util/Map;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->mImsFtListenerList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 170
    .local v1, "listenerlist":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/ft/IImsOngoingFtEventListener;>;"
    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 173
    .end local v1    # "listenerlist":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/sec/ims/ft/IImsOngoingFtEventListener;>;"
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 175
    :cond_1
    :goto_0
    return-void
.end method
