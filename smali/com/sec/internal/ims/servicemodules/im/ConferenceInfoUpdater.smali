.class public Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;
.super Ljava/lang/Object;
.source "ConferenceInfoUpdater.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mAddedParticipants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field mDeletedParticipants:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;"
        }
    .end annotation
.end field

.field mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

.field mInsertedParticipants:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;"
        }
    .end annotation
.end field

.field mIsLeaderChange:Z

.field mJoinedParticipants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field mKickedOutParticipants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field mLeftParticipants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

.field mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

.field mNewLeader:Ljava/lang/String;

.field mOwnUri:Lcom/sec/ims/util/ImsUri;

.field mPhoneId:I

.field mUpdatedParticipants:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;"
        }
    .end annotation
.end field

.field mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImSession;ILcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;Lcom/sec/internal/ims/util/UriGenerator;Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)V
    .locals 0
    .param p1, "imSession"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .param p2, "phoneId"    # I
    .param p3, "ownUri"    # Lcom/sec/ims/util/ImsUri;
    .param p4, "mnoStrategy"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .param p5, "uriGenerator"    # Lcom/sec/internal/ims/util/UriGenerator;
    .param p6, "listener"    # Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mPhoneId:I

    .line 59
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mOwnUri:Lcom/sec/ims/util/ImsUri;

    .line 60
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    .line 61
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 62
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    .line 63
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 64
    return-void
.end method

.method private downloadGroupIcon(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V
    .locals 30
    .param p1, "iconData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 166
    .local v1, "config":Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v3, "downloadGroupIcon: FT HTTP is not enabled."

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 168
    return-void

    .line 170
    :cond_0
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    iget v3, v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mPhoneId:I

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;-><init>(I)V

    .line 171
    .local v2, "downloadFileTask":Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    invoke-interface {v4}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->onRequestIncomingFtTransferPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "received_files"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "dir":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v4, "folder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_1

    .line 174
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->LOG_TAG:Ljava/lang/String;

    const-string v6, "downloadGroupIcon: cannot create dir. Use default download directory."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 177
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateFileTransferId()Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, "fileName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v7, Ljava/io/File;->separatorChar:C

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "path":Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v7, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getIconUri()Ljava/lang/String;

    move-result-object v15

    .line 182
    .local v15, "url":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpDLUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 183
    const-string/jumbo v8, "url"

    invoke-interface {v7, v8, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 185
    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ci"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_2
    sget-object v14, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v8, 0x1

    new-array v12, v8, [Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    new-instance v23, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    const-wide/16 v10, 0x1

    const-wide/16 v16, 0x0

    .line 190
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpCsUser()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpCsPwd()Ljava/lang/String;

    move-result-object v19

    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    .line 191
    invoke-interface {v8, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getFtHttpUserAgent(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Ljava/lang/String;

    move-result-object v20

    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v8, v8, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    const/4 v13, 0x0

    invoke-interface {v8, v13}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getNetwork(I)Landroid/net/Network;

    move-result-object v21

    .line 192
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpTrustAllCerts()Z

    move-result v22

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpDLUrl()Ljava/lang/String;

    move-result-object v24

    new-instance v9, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater$1;

    move-object/from16 v8, p1

    invoke-direct {v9, v0, v8, v6}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater$1;-><init>(Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;Ljava/lang/String;)V

    move-object/from16 v8, v23

    move-object/from16 v25, v9

    move-object v9, v15

    move-object/from16 v26, v12

    move/from16 v27, v13

    move-wide/from16 v12, v16

    move-object/from16 v28, v14

    move-object v14, v6

    move-object/from16 v29, v15

    .end local v15    # "url":Ljava/lang/String;
    .local v29, "url":Ljava/lang/String;
    move-object/from16 v15, v18

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    move/from16 v19, v22

    move-object/from16 v20, v24

    move-object/from16 v21, v7

    move-object/from16 v22, v25

    invoke-direct/range {v8 .. v22}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;ZLjava/lang/String;Ljava/util/Map;Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;)V

    move-object/from16 v8, v26

    aput-object v23, v8, v27

    .line 188
    move-object/from16 v9, v28

    invoke-virtual {v2, v9, v8}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 210
    return-void
.end method

.method private isJoinedParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)Z
    .locals 2
    .param p1, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    .param p2, "prevStatus"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 372
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INITIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->TO_INVITE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INVITED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    .line 374
    const-string v1, "display_invited_systemmessage"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 372
    :goto_0
    return v0
.end method

.method private isKickedOutParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;)Z
    .locals 2
    .param p1, "prevStatus"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    .param p2, "userElemState"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;
    .param p3, "disconnectionReason"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    .line 380
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->BOOTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    if-ne p3, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INVITED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    .line 383
    const-string v1, "display_invited_systemmessage"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 380
    :goto_0
    return v0
.end method

.method private isLeftParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;)Z
    .locals 2
    .param p1, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    .param p2, "prevStatus"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    .param p3, "userElemState"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    .line 389
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->needToNotifyParticipantUpdates(Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INVITED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    .line 391
    const-string v1, "display_invited_systemmessage"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 389
    :goto_0
    return v0
.end method

.method private isNonUpdateState(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)Z
    .locals 1
    .param p1, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    .param p2, "prevStatus"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 396
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->TO_INVITE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INVITED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p2, v0, :cond_2

    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isSubjectChanged(Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)Z
    .locals 3
    .param p1, "currData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;
    .param p2, "receivedData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    .line 402
    if-nez p2, :cond_0

    .line 403
    const/4 v0, 0x0

    return v0

    .line 406
    :cond_0
    const-string v0, ""

    .local v0, "oldSubject":Ljava/lang/String;
    const-string v1, ""

    .line 407
    .local v1, "newSubject":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 408
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getSubject()Ljava/lang/String;

    move-result-object v0

    .line 410
    :cond_1
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 411
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getSubject()Ljava/lang/String;

    move-result-object v1

    .line 414
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method private needToNotifyParticipantUpdates(Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;)Z
    .locals 3
    .param p1, "state"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 157
    return v1

    .line 160
    :cond_0
    const-string v2, "check_participant_of_partial_state"

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;->PARTIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    if-eq p1, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private newParticipantAdded(Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V
    .locals 9
    .param p1, "info"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;
    .param p2, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 242
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->TO_INVITE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v1, "Participant doesn\'t exist, nor status is connected/pending...ignore"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 243
    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->REGULAR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 244
    .local v0, "type":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;
    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mIsChairman:Z

    if-eqz v1, :cond_2

    .line 245
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mNewLeader:Ljava/lang/String;

    .line 246
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->CHAIRMAN:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 247
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mNewLeader:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onGroupChatLeaderChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mNewLeader:Ljava/lang/String;

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mLeaderParticipant:Ljava/lang/String;

    .line 251
    :cond_2
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    iget-object v8, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDispName:Ljava/lang/String;

    move-object v3, v1

    move-object v5, p2

    move-object v6, v0

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    .line 252
    .local v1, "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mInsertedParticipants:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-ne p2, v2, :cond_3

    .line 255
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mAddedParticipants:Ljava/util/Map;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mJoiningTime:Ljava/util/Date;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .end local v0    # "type":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;
    .end local v1    # "p":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    :cond_3
    nop

    .line 260
    :goto_1
    return-void
.end method

.method private ownInfoUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;
    .param p2, "leader"    # Ljava/lang/String;

    .line 226
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "ownInfoUpdated"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mIsChairman:Z

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mNewLeader:Ljava/lang/String;

    .line 229
    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mNewLeader:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onGroupChatLeaderInformed(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mNewLeader:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mLeaderParticipant:Ljava/lang/String;

    .line 234
    :cond_1
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDispName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDispName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnGroupAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 235
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConferenceInfoUpdated, old ownGroupAlias= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnGroupAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", new DispName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDispName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDispName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateOwnGroupAlias(Ljava/lang/String;)V

    .line 239
    :cond_2
    return-void
.end method

.method private participantStatusUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V
    .locals 2
    .param p1, "info"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;
    .param p2, "participant"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    .param p3, "status"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    .param p4, "prevStatus"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 264
    invoke-direct {p0, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->isJoinedParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mJoinedParticipants:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mJoiningTime:Ljava/util/Date;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_0
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUserElemState:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionReason:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    invoke-direct {p0, p4, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->isKickedOutParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mKickedOutParticipants:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionTime:Ljava/util/Date;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUserElemState:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    invoke-direct {p0, p3, p4, v0}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->isLeftParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mLeftParticipants:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionTime:Ljava/util/Date;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_2
    :goto_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-ne p3, v0, :cond_3

    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionCause:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_USER_INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v0, v1, :cond_3

    .line 275
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v1, "invitation has failed with 404. update capability"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 276
    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-direct {p0, p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->triggerCapability(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/ims/options/CapabilityRefreshType;)V

    .line 279
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p3, v0, :cond_5

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-ne p3, v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    .line 280
    const-string/jumbo v1, "remove_failed_participant_groupchat"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 283
    :cond_4
    invoke-direct {p0, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->isNonUpdateState(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 284
    invoke-virtual {p2, p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->setStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V

    .line 285
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mUpdatedParticipants:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 281
    :cond_5
    :goto_1
    invoke-virtual {p2, p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->setStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V

    .line 282
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mDeletedParticipants:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_6
    :goto_2
    return-void
.end method

.method private triggerCapability(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/ims/options/CapabilityRefreshType;)V
    .locals 3
    .param p1, "p"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    .param p2, "type"    # Lcom/sec/ims/options/CapabilityRefreshType;

    .line 219
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    .line 220
    .local v0, "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getPhoneId(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, p2, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    .line 223
    :cond_0
    return-void
.end method


# virtual methods
.method public findAbsentParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;

    .line 295
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 296
    .local v1, "participant":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    const/4 v2, 0x1

    .line 297
    .local v2, "isAbsent":Z
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mParticipantsInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;

    .line 298
    .local v4, "info":Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    iget-object v6, v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v5, v6}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 299
    const/4 v2, 0x0

    .line 300
    goto :goto_2

    .line 302
    .end local v4    # "info":Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;
    :cond_0
    goto :goto_1

    .line 303
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INVITED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq v3, v4, :cond_2

    .line 304
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConferenceInfoUpdated, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is absent from updated full list."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 305
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mLeftParticipants:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->setStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V

    .line 307
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mDeletedParticipants:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 309
    .end local v1    # "participant":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    .end local v2    # "isAbsent":Z
    :cond_2
    goto :goto_0

    .line 310
    :cond_3
    return-void
.end method

.method public notifyParticipantsInfo()V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mInsertedParticipants:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mInsertedParticipants:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onParticipantsInserted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mUpdatedParticipants:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mUpdatedParticipants:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onParticipantsUpdated(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mDeletedParticipants:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mDeletedParticipants:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onParticipantsDeleted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 321
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setSessionUri(Lcom/sec/ims/util/ImsUri;)V

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mAddedParticipants:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 326
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mAddedParticipants:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onNotifyParticipantsAdded(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V

    .line 328
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mJoinedParticipants:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 329
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mJoinedParticipants:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onNotifyParticipantsJoined(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V

    .line 331
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mLeftParticipants:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 332
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mLeftParticipants:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onNotifyParticipantsLeft(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V

    .line 334
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mKickedOutParticipants:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 335
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mKickedOutParticipants:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onNotifyParticipantsKickedOut(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V

    .line 338
    :cond_6
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mIsLeaderChange:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mNewLeader:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mNewLeader:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onGroupChatLeaderChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mNewLeader:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mLeaderParticipant:Ljava/lang/String;

    .line 342
    :cond_7
    return-void
.end method

.method protected onConferenceInfoUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;Ljava/lang/String;)V
    .locals 8
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;
    .param p2, "leader"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onConferenceInfoUpdated : Fail!! Strategy is null"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void

    .line 77
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mAddedParticipants:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mJoinedParticipants:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mLeftParticipants:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mKickedOutParticipants:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mInsertedParticipants:Ljava/util/Set;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mUpdatedParticipants:Ljava/util/Set;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mDeletedParticipants:Ljava/util/Set;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mIsLeaderChange:Z

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mNewLeader:Ljava/lang/String;

    .line 95
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mParticipantsInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;

    .line 96
    .local v1, "info":Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;
    if-eqz v1, :cond_7

    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    if-eqz v2, :cond_7

    .line 97
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConferenceInfoUpdated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->normalizeUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 100
    iget-boolean v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mIsOwn:Z

    if-nez v2, :cond_6

    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mOwnUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v2, v3}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipant(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object v2

    .line 106
    .local v2, "participant":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    invoke-static {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/translator/TranslatorCollection;->translateEngineParticipantInfo(Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v3

    .line 107
    .local v3, "status":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    if-nez v2, :cond_2

    .line 109
    invoke-direct {p0, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->newParticipantAdded(Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V

    goto/16 :goto_3

    .line 111
    :cond_2
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v4

    .line 112
    .local v4, "prevStatus":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " prevStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    if-eqz v3, :cond_3

    if-eq v4, v3, :cond_3

    .line 114
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->participantStatusUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V

    .line 117
    :cond_3
    iget-boolean v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mIsChairman:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->CHAIRMAN:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    goto :goto_1

    :cond_4
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->REGULAR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 118
    .local v5, "type":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;
    :goto_1
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    move-result-object v6

    if-eq v5, v6, :cond_5

    .line 119
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mIsLeaderChange:Z

    .line 120
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v7, "onConferenceInfoUpdated, mIsLeaderChange=true."

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->setType(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;)V

    .line 122
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mUpdatedParticipants:Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->CHAIRMAN:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    if-ne v5, v6, :cond_5

    .line 124
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mNewLeader:Ljava/lang/String;

    .line 128
    :cond_5
    iget-object v6, v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDispName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDispName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUserAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 129
    iget-object v6, v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDispName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->setUserAlias(Ljava/lang/String;)V

    .line 130
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mUpdatedParticipants:Ljava/util/Set;

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onParticipantAliasUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    goto :goto_3

    .line 101
    .end local v2    # "participant":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    .end local v3    # "status":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    .end local v4    # "prevStatus":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    .end local v5    # "type":Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;
    :cond_6
    :goto_2
    invoke-direct {p0, v1, p2}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->ownInfoUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;Ljava/lang/String;)V

    .line 102
    goto/16 :goto_0

    .line 135
    .end local v1    # "info":Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;
    :cond_7
    :goto_3
    goto/16 :goto_0

    .line 137
    :cond_8
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mConferenceInfoType:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;->FULL:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;

    if-ne v0, v1, :cond_9

    .line 138
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->findAbsentParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V

    .line 141
    :cond_9
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->notifyParticipantsInfo()V

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSubjectData()Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->isSubjectChanged(Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 144
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConferenceInfoUpdated, event.mSubjectData= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mChatData.getSubjectData()= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 145
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSubjectData()Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateSubjectData(Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)V

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChatSubjectUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)V

    .line 150
    :cond_a
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mIconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    if-eqz v0, :cond_b

    .line 151
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mIconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->onGroupChatIconUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    .line 153
    :cond_b
    return-void
.end method

.method public onGroupChatIconUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V
    .locals 3
    .param p1, "iconData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    .line 345
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConferenceInfoUpdated, event.mIconData= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mChatData.getIconData()= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getIconType()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_URI:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    if-ne v0, v1, :cond_4

    .line 348
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getIconUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateIconData(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    .line 350
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onGroupChatIconDeleted(Ljava/lang/String;)V

    goto :goto_2

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getIconUri()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getIconUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 353
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getIconLocation()Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 356
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getIconLocation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 358
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->downloadGroupIcon(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    goto :goto_0

    .line 360
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getIconLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->setIconLocation(Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateIconData(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    .line 363
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    goto :goto_2

    .line 354
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->downloadGroupIcon(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    goto :goto_2

    .line 366
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateIconData(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    .line 367
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onGroupChatIconUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    .line 369
    :goto_2
    return-void
.end method
