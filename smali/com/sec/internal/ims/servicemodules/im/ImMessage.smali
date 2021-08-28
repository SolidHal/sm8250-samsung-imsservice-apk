.class public Lcom/sec/internal/ims/servicemodules/im/ImMessage;
.super Lcom/sec/internal/ims/servicemodules/im/MessageBase;
.source "ImMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder2;,
        Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mGroupCcListUri:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 42
    .local p1, "builder":Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;-><init>(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)V

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mGroupCcListUri:Ljava/util/Set;

    .line 43
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->access$000(Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;)Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;

    .line 44
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;

    return-object v0
.end method

.method public static builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder<",
            "*>;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder2;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImMessage$1;)V

    return-object v0
.end method

.method private requestReliableImageDownload()V
    .locals 31

    .line 91
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    .line 92
    .local v1, "msg":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "rcsreliable_d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "dir":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getReliableMessage()Ljava/lang/String;

    move-result-object v15

    .line 94
    .local v15, "url":Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-virtual {v15, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v15, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 96
    .local v14, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 98
    .local v13, "path":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v3

    .line 100
    .local v18, "checkFile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "requestReliableImageDownload, file already exist."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v0, v13}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->setReliableMessage(Ljava/lang/String;)V

    .line 103
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;

    invoke-interface {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;->onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V

    .line 104
    return-void

    .line 107
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v19, v3

    .line 109
    .local v19, "folder":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "requestReliableImageDownload, mkdirs"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestReliableImageDownload, url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPhoneId()I

    move-result v5

    invoke-direct {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;-><init>(I)V

    move-object v12, v3

    .line 115
    .local v12, "downloadTask":Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;
    sget-object v11, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v10, v4, [Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    const/16 v20, 0x0

    new-instance v21, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x0

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 116
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpCsUser()Ljava/lang/String;

    move-result-object v16

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpCsPwd()Ljava/lang/String;

    move-result-object v17

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 117
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v22

    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mNetwork:Landroid/net/Network;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpTrustAllCerts()Z

    move-result v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    new-instance v4, Lcom/sec/internal/ims/servicemodules/im/ImMessage$1;

    invoke-direct {v4, v0, v1, v13}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$1;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImMessage;Lcom/sec/internal/ims/servicemodules/im/ImMessage;Ljava/lang/String;)V

    move-object/from16 v3, v21

    move-object/from16 v26, v4

    move-object v4, v15

    move-object/from16 v27, v9

    move-object v9, v13

    move-object/from16 v28, v10

    move-object/from16 v10, v16

    move-object/from16 v29, v11

    move-object/from16 v11, v17

    move-object/from16 v30, v12

    .end local v12    # "downloadTask":Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;
    .local v30, "downloadTask":Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;
    move-object/from16 v12, v22

    move-object/from16 v22, v13

    .end local v13    # "path":Ljava/lang/String;
    .local v22, "path":Ljava/lang/String;
    move-object/from16 v13, v27

    move-object/from16 v27, v14

    .end local v14    # "fileName":Ljava/lang/String;
    .local v27, "fileName":Ljava/lang/String;
    move/from16 v14, v23

    move-object/from16 v23, v15

    .end local v15    # "url":Ljava/lang/String;
    .local v23, "url":Ljava/lang/String;
    move-object/from16 v15, v24

    move-object/from16 v16, v25

    move-object/from16 v17, v26

    invoke-direct/range {v3 .. v17}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;ZLjava/lang/String;Ljava/util/Map;Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;)V

    move-object/from16 v3, v28

    aput-object v21, v3, v20

    .line 115
    move-object/from16 v5, v29

    move-object/from16 v4, v30

    .end local v30    # "downloadTask":Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;
    .local v4, "downloadTask":Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;
    invoke-virtual {v4, v5, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 138
    return-void
.end method


# virtual methods
.method public getGroupCcListUri()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mGroupCcListUri:Ljava/util/Set;

    return-object v0
.end method

.method public getServiceTag()Ljava/lang/String;
    .locals 1

    .line 52
    const-string v0, "IM"

    return-object v0
.end method

.method public onReceived()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mReliableMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->requestReliableImageDownload()V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;->onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V

    .line 76
    :goto_0
    return-void
.end method

.method public onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V
    .locals 3
    .param p1, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    .param p2, "strategyResponse"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    .line 57
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSendMessageDone() : mid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mBody = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mBody:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v0, v1, :cond_1

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->setSentTimestamp(J)V

    .line 61
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;->onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    .line 65
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;

    invoke-interface {v0, p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;->onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 68
    :cond_1
    :goto_0
    return-void
.end method

.method public onSendMessageResponseTimeout()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;->onMessageSendResponseTimeout(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V

    .line 80
    return-void
.end method

.method public setGroupCcListUri(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 87
    .local p1, "ccList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mGroupCcListUri:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 88
    return-void
.end method

.method public setSlmSvcMsg(Z)V
    .locals 2
    .param p1, "isSlmSvcMsg"    # Z

    .line 142
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mIsSlmSvcMsg:Z

    .line 143
    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPagerModeLimit()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 145
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_LARGE_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_PAGER_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 144
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->setMessagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)V

    goto :goto_1

    .line 147
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->setMessagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)V

    .line 149
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImMessage ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
