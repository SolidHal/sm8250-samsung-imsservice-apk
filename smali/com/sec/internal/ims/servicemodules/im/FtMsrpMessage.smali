.class public Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;
.super Lcom/sec/internal/ims/servicemodules/im/FtMessage;
.source "FtMsrpMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;,
        Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder2;,
        Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mConferenceUri:Lcom/sec/ims/util/ImsUri;

.field private mNewContactValueUri:Lcom/sec/ims/util/ImsUri;

.field private mRetryTimer:I

.field private mSwapUriType:Z


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 75
    .local p1, "builder":Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;, "Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)V

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mRetryTimer:I

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mImdnId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mImdnId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mImdnId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    .local v0, "name":Ljava/lang/String;
    goto :goto_1

    .line 79
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v0, ""

    .line 84
    .restart local v0    # "name":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->LOG_TAG:Ljava/lang/String;

    .line 85
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->mRawHandle:Ljava/lang/Object;

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mRawHandle:Ljava/lang/Object;

    .line 86
    return-void
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    .line 66
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->isChatbotMessage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    .line 66
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->setCancelReasonBasedOnLineType()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;)Lcom/sec/ims/util/ImsUri;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mNewContactValueUri:Lcom/sec/ims/util/ImsUri;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;
    .param p1, "x1"    # Lcom/sec/ims/util/ImsUri;

    .line 66
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mNewContactValueUri:Lcom/sec/ims/util/ImsUri;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    .line 66
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mSwapUriType:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;
    .param p1, "x1"    # Z

    .line 66
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mSwapUriType:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;)Lcom/sec/ims/util/ImsUri;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mConferenceUri:Lcom/sec/ims/util/ImsUri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    .line 66
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mRetryTimer:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;
    .param p1, "x1"    # I

    .line 66
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mRetryTimer:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;
    .param p1, "x1"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;

    .line 66
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->updateFtMessageInfo(Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;)V

    return-void
.end method

.method public static builder()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder<",
            "*>;"
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder2;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$1;)V

    return-object v0
.end method

.method private isChatbotMessage()Z
    .locals 2

    .line 233
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mIsGroupChat:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mChatId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onRequestParticipantUris(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setCancelReasonBasedOnLineType()V
    .locals 2

    .line 204
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->isChatbotMessage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REJECTED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-eq v0, v1, :cond_0

    .line 205
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    goto :goto_0

    .line 207
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->FORBIDDEN_NO_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 209
    :goto_0
    return-void
.end method

.method private updateFtMessageInfo(Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;

    .line 212
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mRawHandle:Ljava/lang/Object;

    .line 213
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mFilePath:Ljava/lang/String;

    .line 214
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mFileName:Ljava/lang/String;

    .line 215
    iget-wide v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileSize:J

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mFileSize:J

    .line 216
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mContributionId:Ljava/lang/String;

    .line 217
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mConversationId:Ljava/lang/String;

    .line 218
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContentType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mContentType:Ljava/lang/String;

    .line 219
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->setSlmSvcMsg(Z)V

    .line 220
    return-void
.end method


# virtual methods
.method protected createFtStateMachine(Ljava/lang/String;Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 195
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FtMsrpMessage#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$FtMsrpStateMachine;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;Ljava/lang/String;Landroid/os/Looper;)V

    return-object v0
.end method

.method public getRawHandle()Ljava/lang/Object;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mRawHandle:Ljava/lang/Object;

    return-object v0
.end method

.method public getTransferMech()I
    .locals 1

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public receiveTransfer(Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;Z)V
    .locals 3
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;
    .param p3, "resume"    # Z

    .line 94
    iput-boolean p3, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mIsResuming:Z

    .line 95
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mFtCompleteCallback:Landroid/os/Message;

    .line 96
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 97
    return-void
.end method

.method protected renameFile()Z
    .locals 7

    .line 162
    const/4 v0, 0x1

    .line 164
    .local v0, "renameSuccess":Z
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, "oldFile":Ljava/io/File;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "temporary file path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "dir":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v3, "folder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 169
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 172
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mFileName:Ljava/lang/String;

    const/16 v5, 0x80

    invoke-static {v2, v4, v5}, Lcom/sec/internal/helper/FilePathGenerator;->generateUniqueFilePath(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mFilePath:Ljava/lang/String;

    .line 173
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new file path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v4, "newFile":Ljava/io/File;
    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->LOG_TAG:Ljava/lang/String;

    const-string v6, "file rename success"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :cond_1
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->LOG_TAG:Ljava/lang/String;

    const-string v6, "file rename fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v0, 0x0

    .line 182
    :goto_0
    return v0
.end method

.method protected sendDeliveredNotification(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;ZZ)V
    .locals 18
    .param p1, "rawHandle"    # Ljava/lang/Object;
    .param p2, "conversationId"    # Ljava/lang/String;
    .param p3, "contributionId"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;
    .param p5, "ownImsi"    # Ljava/lang/String;
    .param p6, "isGroupchat"    # Z
    .param p7, "isBotSessionAnonymized"    # Z

    .line 109
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v2, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 112
    .local v1, "remoteUri":Lcom/sec/ims/util/ImsUri;
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mChatId:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mConversationId:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object/from16 v9, p2

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mConversationId:Ljava/lang/String;

    move-object v9, v3

    .line 113
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v10

    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mDeviceId:Ljava/lang/String;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->getNewImdnData(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;

    move-result-object v14

    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    move-object v5, v2

    move-object/from16 v6, p1

    move-object v7, v1

    move-object/from16 v11, p5

    move-object/from16 v12, p4

    move/from16 v15, p6

    move/from16 v17, p7

    invoke-direct/range {v5 .. v17}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;-><init>(Ljava/lang/Object;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;ZLjava/util/Date;Z)V

    .line 115
    .local v2, "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;
    iget-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mIsSlmSvcMsg:Z

    if-eqz v3, :cond_1

    .line 116
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->sendSlmDeliveredNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    goto :goto_1

    .line 118
    :cond_1
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->sendFtDeliveredNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    .line 120
    :goto_1
    return-void
.end method

.method protected sendDisplayedNotification(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;ZZ)V
    .locals 18
    .param p1, "rawHandle"    # Ljava/lang/Object;
    .param p2, "conversationId"    # Ljava/lang/String;
    .param p3, "contributionId"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;
    .param p5, "ownImsi"    # Ljava/lang/String;
    .param p6, "isGroupchat"    # Z
    .param p7, "isBotSessionAnonymized"    # Z

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v2, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 128
    .local v1, "remoteUri":Lcom/sec/ims/util/ImsUri;
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mChatId:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mConversationId:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object/from16 v9, p2

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mConversationId:Ljava/lang/String;

    move-object v9, v3

    .line 129
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v10

    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mDeviceId:Ljava/lang/String;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->getNewImdnData(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;

    move-result-object v14

    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    move-object v5, v2

    move-object/from16 v6, p1

    move-object v7, v1

    move-object/from16 v11, p5

    move-object/from16 v12, p4

    move/from16 v15, p6

    move/from16 v17, p7

    invoke-direct/range {v5 .. v17}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;-><init>(Ljava/lang/Object;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;ZLjava/util/Date;Z)V

    .line 131
    .local v2, "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;
    iget-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mIsSlmSvcMsg:Z

    if-eqz v3, :cond_1

    .line 132
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->sendSlmDisplayedNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    goto :goto_1

    .line 134
    :cond_1
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->sendFtDisplayedNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    .line 136
    :goto_1
    return-void
.end method

.method protected sendRejectFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;)V
    .locals 2
    .param p1, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    .line 140
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;-><init>()V

    .line 141
    .local v0, "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mRawHandle:Ljava/lang/Object;

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    .line 142
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mIsSlmSvcMsg:Z

    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    .line 143
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->sendRejectFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;)V

    .line 144
    return-void
.end method

.method protected sendRejectFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;)V
    .locals 7
    .param p1, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;
    .param p2, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;

    .line 148
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    .line 150
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iget-object v1, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mFileTransferId:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mImdnId:Ljava/lang/String;

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;-><init>(Ljava/lang/Object;Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .local v0, "rejectParams":Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;
    iget-boolean v1, p2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->rejectFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->rejectFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V

    .line 158
    :goto_0
    return-void
.end method

.method public setConferenceUri(Lcom/sec/ims/util/ImsUri;)V
    .locals 0
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 186
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mConferenceUri:Lcom/sec/ims/util/ImsUri;

    .line 187
    return-void
.end method

.method public setSlmSvcMsg(Z)V
    .locals 4
    .param p1, "isSlmSvcMsg"    # Z

    .line 224
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mIsSlmSvcMsg:Z

    .line 225
    if-eqz p1, :cond_1

    .line 226
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mFileSize:J

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPagerModeLimit()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_LARGE_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_PAGER_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->setMessagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)V

    goto :goto_1

    .line 228
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->setMessagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)V

    .line 230
    :goto_1
    return-void
.end method

.method public startFileTransferTimer()V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startFileTransferTimer() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 104
    return-void
.end method
