.class public Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;
.super Lcom/sec/internal/ims/core/handler/ImHandler;
.source "ResipImHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;,
        Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    }
.end annotation


# instance fields
.field protected final mChatbotAnonymizeNotifyRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mChatbotAnonymizeResponseRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mComposingRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mConferenceInfoUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mFtSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;",
            ">;"
        }
    .end annotation
.end field

.field protected final mGroupChatInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mGroupChatListRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mImdnFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

.field private mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field protected final mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mMessageFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

.field protected final mPendingFtSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPendingSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;",
            ">;"
        }
    .end annotation
.end field

.field protected final mReportChatbotAsSpamRespRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mSendMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

.field protected final mSessionClosedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;",
            ">;"
        }
    .end annotation
.end field

.field private mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

.field protected final mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 245
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;)V

    .line 246
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;
    .param p3, "imdnHandler"    # Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    .line 249
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/ImHandler;-><init>(Landroid/os/Looper;)V

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mPendingFtSessions:Ljava/util/Map;

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mPendingSessions:Ljava/util/Map;

    .line 160
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 161
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessionClosedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 162
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 163
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 164
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 165
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mComposingRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 166
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mConferenceInfoUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 167
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mMessageFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 168
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 169
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 171
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mGroupChatListRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 172
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mGroupChatInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 173
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    .line 174
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSendMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    .line 175
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mChatbotAnonymizeResponseRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 176
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mChatbotAnonymizeNotifyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 177
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mReportChatbotAsSpamRespRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 250
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 251
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    invoke-direct {v0, p1, p0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    .line 252
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    .line 255
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerImHandler(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 256
    return-void
.end method

.method private static adjustFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "path"    # Ljava/lang/String;

    .line 2269
    return-object p0
.end method

.method private getImsUriOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I
    .locals 6
    .param p1, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "Ljava/lang/Iterable<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;I)[I"
        }
    .end annotation

    .line 2289
    .local p2, "stringList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/sec/ims/util/ImsUri;>;"
    new-array v0, p3, [I

    .line 2290
    .local v0, "stringArray":[I
    const/4 v1, 0x0

    .line 2291
    .local v1, "i":I
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 2292
    .local v3, "uri":Lcom/sec/ims/util/ImsUri;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2293
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    aput v5, v0, v1

    move v1, v4

    .line 2295
    .end local v3    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_0
    goto :goto_0

    .line 2296
    :cond_1
    return-object v0
.end method

.method private getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I
    .locals 6
    .param p1, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;I)[I"
        }
    .end annotation

    .line 2278
    .local p2, "stringList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-array v0, p3, [I

    .line 2279
    .local v0, "stringArray":[I
    const/4 v1, 0x0

    .line 2280
    .local v1, "i":I
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2281
    .local v3, "str":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2282
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-virtual {p1, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    aput v5, v0, v1

    move v1, v4

    .line 2284
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_0
    goto :goto_0

    .line 2285
    :cond_1
    return-object v0
.end method

.method private handleAcceptFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;)V
    .locals 13
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;

    .line 1966
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAcceptFtSessionRequest(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 1969
    .local v0, "sessionHandle":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    .line 1970
    .local v1, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1971
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAcceptFtSessionRequest(): no session in map, return accept failure, id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 1973
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v4, v5, v6, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1974
    iput-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    .line 1976
    :cond_0
    return-void

    .line 1978
    :cond_1
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    iput-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mAcceptCallback:Landroid/os/Message;

    .line 1979
    iget v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mMessageId:I

    iput v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mId:I

    .line 1981
    iget v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mUaHandle:I

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v3

    .line 1982
    .local v3, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v3, :cond_3

    .line 1983
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v5, "handleAcceptFtSessionRequest(): User agent not found!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v4, :cond_2

    .line 1985
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v5, v6, v7, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1986
    iput-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    .line 1988
    :cond_2
    return-void

    .line 1992
    :cond_3
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1993
    .local v2, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mFilePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->adjustFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 1994
    .local v10, "filePathOffset":I
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mUserAlias:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mUserAlias:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v4, ""

    :goto_0
    invoke-virtual {v2, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 1997
    .local v11, "userAliasOffset":I
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptFtSession;->startRequestAcceptFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1998
    iget v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mHandle:I

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptFtSession;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1999
    iget-wide v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mStart:J

    invoke-static {v2, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptFtSession;->addStart(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2000
    iget-wide v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mEnd:J

    invoke-static {v2, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptFtSession;->addEnd(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2001
    invoke-static {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptFtSession;->addFilePath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2002
    invoke-static {v2, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptFtSession;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2003
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptFtSession;->endRequestAcceptFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    .line 2005
    .local v4, "offset":I
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2006
    const/16 v5, 0x229

    invoke-static {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2007
    const/16 v5, 0x30

    invoke-static {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2008
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2009
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v12

    .line 2011
    .end local v4    # "offset":I
    .local v12, "offset":I
    const/16 v5, 0x229

    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    move-object v4, p0

    move-object v6, v2

    move v7, v12

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 2012
    return-void
.end method

.method private handleAcceptImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;)V
    .locals 13
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;

    .line 890
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAcceptImSessionRequest(): params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 893
    .local v0, "sessionHandle":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 895
    .local v1, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 896
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handleAcceptImSessionRequest: no session in map, return accept failure"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 898
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;->mCallback:Landroid/os/Message;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v5, v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    .line 899
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v2, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;Ljava/lang/Object;)V

    .line 898
    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 900
    iput-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;->mCallback:Landroid/os/Message;

    .line 902
    :cond_0
    return-void

    .line 905
    :cond_1
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;->mChatId:Ljava/lang/String;

    iput-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    .line 907
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;->mCallback:Landroid/os/Message;

    iput-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAcceptCallback:Landroid/os/Message;

    .line 908
    iget-boolean v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;->mIsSnF:Z

    iput-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mIsSnF:Z

    .line 910
    iget v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v3

    .line 911
    .local v3, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v3, :cond_3

    .line 912
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleAcceptImSessionRequest(): UserAgent not found. UaHandle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAcceptCallback:Landroid/os/Message;

    if-eqz v4, :cond_2

    .line 914
    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAcceptCallback:Landroid/os/Message;

    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v6, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    .line 915
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v2, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;Ljava/lang/Object;)V

    .line 914
    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 916
    iput-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAcceptCallback:Landroid/os/Message;

    .line 918
    :cond_2
    return-void

    .line 922
    :cond_3
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;->mUserAlias:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v2, ""

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;->mUserAlias:Ljava/lang/String;

    .line 923
    .local v2, "userAlias":Ljava/lang/String;
    :goto_0
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v10, v4

    .line 924
    .local v10, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 926
    .local v11, "userAliasOffset":I
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptImSession;->startRequestAcceptImSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 927
    int-to-long v4, v0

    invoke-static {v10, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptImSession;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 928
    invoke-static {v10, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptImSession;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 929
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptImSession;->endRequestAcceptImSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    .line 930
    .local v4, "offset":I
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 931
    const/16 v5, 0x1f6

    invoke-static {v10, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 932
    const/16 v5, 0x28

    invoke-static {v10, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 933
    invoke-static {v10, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 934
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v12

    .line 936
    .end local v4    # "offset":I
    .local v12, "offset":I
    const/16 v5, 0x1f6

    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    move-object v4, p0

    move-object v6, v10

    move v7, v12

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 937
    return-void
.end method

.method private handleAddParticipantsRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;)V
    .locals 18
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;

    .line 1395
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAddParticipantsRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mRawHandle:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 1398
    .local v8, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    if-nez v8, :cond_1

    .line 1399
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleAddParticipantsRequest: Session not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1401
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mCallback:Landroid/os/Message;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v6, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1403
    :cond_0
    return-void

    .line 1406
    :cond_1
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_2

    .line 1407
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mCallback:Landroid/os/Message;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mReceivers:Ljava/util/List;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1408
    iget-object v0, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAddParticipantsCallbacks:Ljava/util/Map;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mReqKey:Ljava/lang/String;

    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mCallback:Landroid/os/Message;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    :cond_2
    iget v0, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v9

    .line 1412
    .local v9, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v9, :cond_4

    .line 1413
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleAddParticipantsRequest: User agent not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 1415
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mCallback:Landroid/os/Message;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v6, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1417
    :cond_3
    return-void

    .line 1420
    :cond_4
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v10, v0

    .line 1421
    .local v10, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mReceivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v11, v0, [I

    .line 1422
    .local v11, "receiversOffsets":[I
    const/4 v0, 0x0

    .line 1423
    .local v0, "index":I
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mReceivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v12, v0

    .end local v0    # "index":I
    .local v12, "index":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v3, ""

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/ImsUri;

    .line 1424
    .local v0, "recipient":Lcom/sec/ims/util/ImsUri;
    add-int/lit8 v4, v12, 0x1

    .end local v12    # "index":I
    .local v4, "index":I
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    invoke-virtual {v10, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    aput v3, v11, v12

    .line 1425
    .end local v0    # "recipient":Lcom/sec/ims/util/ImsUri;
    move v12, v4

    goto :goto_0

    .line 1427
    .end local v4    # "index":I
    .restart local v12    # "index":I
    :cond_6
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mReqKey:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 1428
    .local v13, "reqKeyOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mSubject:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mSubject:Ljava/lang/String;

    :cond_7
    invoke-virtual {v10, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 1429
    .local v14, "subjectOffset":I
    invoke-static {v10, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->createReceiverVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v15

    .line 1430
    .local v15, "receiverOffset":I
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->startRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1431
    invoke-static {v10, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReceiver(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1432
    invoke-static {v10, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1433
    invoke-static {v10, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addSubject(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1434
    iget-object v0, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v10, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1435
    invoke-static {v10, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1436
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->endRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 1438
    .local v5, "requestUpdateParticipantOffset":I
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1439
    const/16 v0, 0x1fe

    invoke-static {v10, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1440
    const/16 v0, 0x36

    invoke-static {v10, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1441
    invoke-static {v10, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1442
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v16

    .line 1444
    .local v16, "offset":I
    const/16 v1, 0x1fe

    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v2, v10

    move/from16 v3, v16

    move/from16 v17, v5

    .end local v5    # "requestUpdateParticipantOffset":I
    .local v17, "requestUpdateParticipantOffset":I
    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 1445
    return-void
.end method

.method private handleCancelFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .locals 6
    .param p1, "rejectParams"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 2015
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCancelFtSessionRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    const/4 v0, 0x0

    .line 2020
    .local v0, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mPendingFtSessions:Ljava/util/Map;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mFileTransferId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    .line 2021
    if-eqz v0, :cond_0

    .line 2022
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleCancelFtSessionRequest(): pending session - postpone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    iput-object p1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 2024
    return-void

    .line 2027
    :cond_0
    if-nez v0, :cond_2

    .line 2028
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mRawHandle:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 2029
    .local v1, "sessionHandle":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    .line 2030
    if-nez v0, :cond_2

    .line 2031
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleCancelFtSessionRequest(): unknown session!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 2033
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v3, v4, v5, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2034
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    .line 2036
    :cond_1
    return-void

    .line 2042
    .end local v1    # "sessionHandle":Ljava/lang/Integer;
    :cond_2
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    if-eqz v1, :cond_3

    .line 2043
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleCancelFtSessionRequest(): there is a ongoing cancel request, ignore further cancel request"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    return-void

    .line 2048
    :cond_3
    iput-object p1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 2049
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendFtCancelRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;)V

    .line 2050
    return-void
.end method

.method private handleChangeGroupChatAliasRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;)V
    .locals 14
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;

    .line 1701
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChangeGcAliasRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1703
    .local v0, "sessionHandle":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 1705
    .local v1, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    if-nez v1, :cond_1

    .line 1706
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleChangeGcAliasRequest: Session not exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mCallback:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 1708
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mCallback:Landroid/os/Message;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1710
    :cond_0
    return-void

    .line 1713
    :cond_1
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mCallback:Landroid/os/Message;

    if-eqz v2, :cond_2

    .line 1714
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mCallback:Landroid/os/Message;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mAlias:Ljava/lang/String;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1715
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCAliasCallbacks:Ljava/util/Map;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mReqKey:Ljava/lang/String;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mCallback:Landroid/os/Message;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    :cond_2
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v2

    .line 1719
    .local v2, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v2, :cond_4

    .line 1720
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handleChangeGcAliasRequest: User agent not found."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mCallback:Landroid/os/Message;

    if-eqz v3, :cond_3

    .line 1722
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mCallback:Landroid/os/Message;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1724
    :cond_3
    return-void

    .line 1727
    :cond_4
    new-instance v3, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v9, v3

    .line 1729
    .local v9, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v3, -0x1

    .line 1730
    .local v3, "ReqKeyOffset":I
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mReqKey:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 1731
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mReqKey:Ljava/lang/String;

    invoke-virtual {v9, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    move v10, v3

    goto :goto_0

    .line 1730
    :cond_5
    move v10, v3

    .line 1734
    .end local v3    # "ReqKeyOffset":I
    .local v10, "ReqKeyOffset":I
    :goto_0
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mAlias:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 1735
    .local v11, "aliasOffset":I
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->startRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1736
    const/4 v3, -0x1

    if-eq v10, v3, :cond_6

    .line 1737
    invoke-static {v9, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1739
    :cond_6
    iget-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v9, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1740
    const/4 v3, 0x3

    invoke-static {v9, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1741
    invoke-static {v9, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1742
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->endRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v12

    .line 1744
    .local v12, "requestUpdateParticipantOffset":I
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1745
    const/16 v3, 0x1fe

    invoke-static {v9, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1746
    const/16 v3, 0x36

    invoke-static {v9, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1747
    invoke-static {v9, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1748
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v13

    .line 1750
    .local v13, "offset":I
    const/16 v4, 0x1fe

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v5, 0x17

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    move-object v3, p0

    move-object v5, v9

    move v6, v13

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 1751
    return-void
.end method

.method private handleChangeGroupChatIconRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;)V
    .locals 11
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;

    .line 1624
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeGroupChatIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1626
    .local v0, "sessionHandle":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 1628
    .local v1, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    if-nez v1, :cond_0

    .line 1629
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onChangeGroupChatIcon: Session does not exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    return-void

    .line 1633
    :cond_0
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mCallback:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 1634
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mCallback:Landroid/os/Message;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mIconPath:Ljava/lang/String;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1635
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCIconCallbacks:Ljava/util/Map;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mReqKey:Ljava/lang/String;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mCallback:Landroid/os/Message;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    :cond_1
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1640
    .local v2, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v3, -0x1

    .line 1642
    .local v3, "fileOffset":I
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mIconPath:Ljava/lang/String;

    const/4 v5, -0x1

    if-eqz v4, :cond_7

    .line 1643
    const-string v4, ""

    .line 1644
    .local v4, "mimetype":Ljava/lang/String;
    iget-object v6, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mIconPath:Ljava/lang/String;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 1645
    .local v6, "extPos":I
    if-ltz v6, :cond_2

    .line 1646
    iget-object v7, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mIconPath:Ljava/lang/String;

    add-int/lit8 v8, v6, 0x1

    iget-object v9, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mIconPath:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1647
    .local v7, "extension":Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->isTranslationDefined(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1648
    invoke-static {v7}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1652
    .end local v7    # "extension":Ljava/lang/String;
    :cond_2
    const/4 v7, -0x1

    .line 1653
    .local v7, "IconPathOffset":I
    iget-object v8, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mIconPath:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 1654
    iget-object v8, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mIconPath:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    .line 1657
    :cond_3
    const/4 v8, -0x1

    .line 1658
    .local v8, "mimetypeOffset":I
    if-eqz v4, :cond_4

    .line 1659
    invoke-virtual {v2, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 1662
    :cond_4
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->startImFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1663
    if-eq v7, v5, :cond_5

    .line 1664
    invoke-static {v2, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addPath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1666
    :cond_5
    if-eq v8, v5, :cond_6

    .line 1667
    invoke-static {v2, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1669
    :cond_6
    new-instance v9, Ljava/io/File;

    iget-object v10, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mIconPath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v2, v9, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addSize(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1670
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->endImFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 1673
    .end local v4    # "mimetype":Ljava/lang/String;
    .end local v6    # "extPos":I
    .end local v7    # "IconPathOffset":I
    .end local v8    # "mimetypeOffset":I
    :cond_7
    const/4 v4, -0x1

    .line 1674
    .local v4, "ReqKeyOffset":I
    iget-object v6, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mReqKey:Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 1675
    iget-object v6, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mReqKey:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1678
    :cond_8
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->startRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1680
    iget-object v6, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mIconPath:Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 1681
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addIconAttr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1684
    :cond_9
    iget-object v6, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v2, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1685
    const/4 v6, 0x5

    invoke-static {v2, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1686
    if-eq v4, v5, :cond_a

    .line 1687
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1690
    :cond_a
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->endRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 1691
    .local v5, "requestUpdateParticipantOffset":I
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1692
    const/16 v6, 0x1fe

    invoke-static {v2, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1693
    const/16 v7, 0x36

    invoke-static {v2, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1694
    invoke-static {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1695
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v7

    .line 1697
    .local v7, "offset":I
    iget-object v8, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v9, 0x1e

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-direct {p0, v6, v2, v7, v8}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 1698
    return-void
.end method

.method private handleChangeGroupChatLeaderRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;)V
    .locals 17
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;

    .line 1506
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChangeGroupChatLeaderRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mRawHandle:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 1509
    .local v8, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    if-nez v8, :cond_1

    .line 1510
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleChangeGroupChatLeaderRequest: Session not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1512
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mCallback:Landroid/os/Message;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v6, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1514
    :cond_0
    return-void

    .line 1517
    :cond_1
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mLeader:Ljava/util/List;

    if-nez v0, :cond_3

    .line 1518
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleChangeGroupChatLeaderRequest: Leader info not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_2

    .line 1520
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mCallback:Landroid/os/Message;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v6, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1522
    :cond_2
    return-void

    .line 1525
    :cond_3
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 1526
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mCallback:Landroid/os/Message;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mLeader:Ljava/util/List;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1527
    iget-object v0, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCLeaderCallbacks:Ljava/util/Map;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mReqKey:Ljava/lang/String;

    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mCallback:Landroid/os/Message;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    :cond_4
    iget v0, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v9

    .line 1530
    .local v9, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v9, :cond_6

    .line 1531
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleChangeGroupChatLeaderRequest: User agent not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_5

    .line 1533
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mCallback:Landroid/os/Message;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v6, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1535
    :cond_5
    return-void

    .line 1538
    :cond_6
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v10, v0

    .line 1539
    .local v10, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mLeader:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v11, v0, [I

    .line 1540
    .local v11, "receiversOffsets":[I
    const/4 v12, 0x0

    .line 1541
    .local v12, "index":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mLeader:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    .line 1542
    .local v1, "recipient":Lcom/sec/ims/util/ImsUri;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_7
    const-string v2, ""

    :goto_1
    invoke-virtual {v10, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    aput v2, v11, v12

    .line 1543
    .end local v1    # "recipient":Lcom/sec/ims/util/ImsUri;
    goto :goto_0

    .line 1545
    :cond_8
    const/4 v0, -0x1

    .line 1546
    .local v0, "ReqKeyOffset":I
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mReqKey:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1547
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mReqKey:Ljava/lang/String;

    invoke-virtual {v10, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    move v13, v0

    goto :goto_2

    .line 1546
    :cond_9
    move v13, v0

    .line 1550
    .end local v0    # "ReqKeyOffset":I
    .local v13, "ReqKeyOffset":I
    :goto_2
    invoke-static {v10, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->createReceiverVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v14

    .line 1551
    .local v14, "receiverOffset":I
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->startRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1552
    invoke-static {v10, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReceiver(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1553
    const/4 v0, -0x1

    if-eq v13, v0, :cond_a

    .line 1554
    invoke-static {v10, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1556
    :cond_a
    iget-object v0, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v10, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1557
    const/4 v0, 0x2

    invoke-static {v10, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1558
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->endRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v15

    .line 1560
    .local v15, "requestUpdateParticipantOffset":I
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1561
    const/16 v0, 0x1fe

    invoke-static {v10, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1562
    const/16 v0, 0x36

    invoke-static {v10, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1563
    invoke-static {v10, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1564
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v16

    .line 1566
    .local v16, "offset":I
    const/16 v1, 0x1fe

    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v2, v10

    move/from16 v3, v16

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 1567
    return-void
.end method

.method private handleChangeGroupChatSubjectRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;)V
    .locals 14
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;

    .line 1570
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChangeGcSubjectRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1572
    .local v0, "sessionHandle":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 1574
    .local v1, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    if-nez v1, :cond_1

    .line 1575
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleChangeGcSubjectRequest: Session not exist."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mCallback:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 1577
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mCallback:Landroid/os/Message;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1579
    :cond_0
    return-void

    .line 1582
    :cond_1
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mCallback:Landroid/os/Message;

    if-eqz v2, :cond_2

    .line 1583
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mCallback:Landroid/os/Message;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mSubject:Ljava/lang/String;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1584
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCSubjectCallbacks:Ljava/util/Map;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mReqKey:Ljava/lang/String;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mCallback:Landroid/os/Message;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    :cond_2
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v2

    .line 1588
    .local v2, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v2, :cond_4

    .line 1589
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handleRemoveParticipantsRequest: User agent not found."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mCallback:Landroid/os/Message;

    if-eqz v3, :cond_3

    .line 1591
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mCallback:Landroid/os/Message;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1593
    :cond_3
    return-void

    .line 1597
    :cond_4
    new-instance v3, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v9, v3

    .line 1598
    .local v9, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mSubject:Ljava/lang/String;

    invoke-virtual {v9, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 1600
    .local v10, "subjectOffset":I
    const/4 v3, -0x1

    .line 1601
    .local v3, "ReqKeyOffset":I
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mReqKey:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 1602
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mReqKey:Ljava/lang/String;

    invoke-virtual {v9, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    move v11, v3

    goto :goto_0

    .line 1601
    :cond_5
    move v11, v3

    .line 1605
    .end local v3    # "ReqKeyOffset":I
    .local v11, "ReqKeyOffset":I
    :goto_0
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->startRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1606
    const/4 v3, -0x1

    if-eq v11, v3, :cond_6

    .line 1607
    invoke-static {v9, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1609
    :cond_6
    iget-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v9, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1610
    const/4 v3, 0x4

    invoke-static {v9, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1611
    invoke-static {v9, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addSubject(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1612
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->endRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v12

    .line 1614
    .local v12, "requestUpdateParticipantOffset":I
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1615
    const/16 v3, 0x1fe

    invoke-static {v9, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1616
    const/16 v3, 0x36

    invoke-static {v9, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1617
    invoke-static {v9, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1618
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v13

    .line 1620
    .local v13, "offset":I
    const/16 v4, 0x1fe

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v5, 0x16

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    move-object v3, p0

    move-object v5, v9

    move v6, v13

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 1621
    return-void
.end method

.method private handleCloseImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;)V
    .locals 5
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;

    .line 991
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCloseImSessionRequest(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mRawHandle:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 994
    .local v0, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    if-nez v0, :cond_1

    .line 995
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleCloseImSessionRequest(): unknown session!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 997
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mCallback:Landroid/os/Message;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mRawHandle:Ljava/lang/Object;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 998
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mCallback:Landroid/os/Message;

    .line 1000
    :cond_0
    return-void

    .line 1002
    :cond_1
    iput-object p1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStopParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;

    .line 1003
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendImCancelRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;)V

    .line 1004
    return-void
.end method

.method private handleRemoveParticipantsRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;)V
    .locals 17
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;

    .line 1448
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRemoveParticipantsRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mRawHandle:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 1451
    .local v8, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    if-nez v8, :cond_1

    .line 1452
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRemoveParticipantsRequest: Session not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1454
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mCallback:Landroid/os/Message;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v6, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1456
    :cond_0
    return-void

    .line 1459
    :cond_1
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_2

    .line 1460
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mCallback:Landroid/os/Message;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mRemovedParticipants:Ljava/util/List;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1461
    iget-object v0, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mRemoveParticipantsCallbacks:Ljava/util/Map;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mReqKey:Ljava/lang/String;

    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mCallback:Landroid/os/Message;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    :cond_2
    iget v0, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v9

    .line 1465
    .local v9, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v9, :cond_4

    .line 1466
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRemoveParticipantsRequest: User agent not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 1468
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mCallback:Landroid/os/Message;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v6, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1470
    :cond_3
    return-void

    .line 1474
    :cond_4
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v10, v0

    .line 1475
    .local v10, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mRemovedParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v11, v0, [I

    .line 1476
    .local v11, "receiversOffsets":[I
    const/4 v0, 0x0

    .line 1477
    .local v0, "index":I
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mRemovedParticipants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v12, v0

    .end local v0    # "index":I
    .local v12, "index":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/ImsUri;

    .line 1478
    .local v0, "recipient":Lcom/sec/ims/util/ImsUri;
    add-int/lit8 v2, v12, 0x1

    .end local v12    # "index":I
    .local v2, "index":I
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    const-string v3, ""

    :goto_1
    invoke-virtual {v10, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    aput v3, v11, v12

    .line 1479
    .end local v0    # "recipient":Lcom/sec/ims/util/ImsUri;
    move v12, v2

    goto :goto_0

    .line 1481
    .end local v2    # "index":I
    .restart local v12    # "index":I
    :cond_6
    const/4 v0, -0x1

    .line 1482
    .local v0, "ReqKeyOffset":I
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mReqKey:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1483
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mReqKey:Ljava/lang/String;

    invoke-virtual {v10, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    move v13, v0

    goto :goto_2

    .line 1482
    :cond_7
    move v13, v0

    .line 1485
    .end local v0    # "ReqKeyOffset":I
    .local v13, "ReqKeyOffset":I
    :goto_2
    invoke-static {v10, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->createReceiverVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v14

    .line 1486
    .local v14, "receiverOffset":I
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->startRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1487
    invoke-static {v10, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReceiver(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1488
    const/4 v0, -0x1

    if-eq v13, v0, :cond_8

    .line 1489
    invoke-static {v10, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1491
    :cond_8
    iget-object v0, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v10, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1492
    const/4 v0, 0x1

    invoke-static {v10, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1493
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->endRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v15

    .line 1495
    .local v15, "requestUpdateParticipantOffset":I
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1496
    const/16 v0, 0x1fe

    invoke-static {v10, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1497
    const/16 v0, 0x36

    invoke-static {v10, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1498
    invoke-static {v10, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1499
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v16

    .line 1501
    .local v16, "offset":I
    const/16 v1, 0x1fe

    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v2, v10

    move/from16 v3, v16

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 1503
    return-void
.end method

.method private handleReportChatbotAsSpam(Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;)V
    .locals 17
    .param p1, "param"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;

    .line 2175
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleReportChatbotAsSpam"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    iget-object v8, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;->mChatbotUri:Lcom/sec/ims/util/ImsUri;

    .line 2177
    .local v8, "chatbotUrl":Lcom/sec/ims/util/ImsUri;
    iget-object v9, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;->mSpamInfo:Ljava/lang/String;

    .line 2178
    .local v9, "xmlInfo":Ljava/lang/String;
    iget-object v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;->mRequestId:Ljava/lang/String;

    .line 2180
    .local v10, "request_id":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2181
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleReportChatbotAsSpam - Invalid ChatBotUrl"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    return-void

    .line 2185
    :cond_0
    iget v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;->mPhoneId:I

    const-string v1, "chatbot-communication"

    invoke-virtual {v6, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v11

    .line 2186
    .local v11, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v11, :cond_1

    .line 2187
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleReportChatbotAsSpam(): User Agent not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    return-void

    .line 2191
    :cond_1
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v12, v0

    .line 2192
    .local v12, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-virtual {v8}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 2193
    .local v13, "urlOffset":I
    invoke-virtual {v12, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 2194
    .local v14, "xmlOffset":I
    invoke-virtual {v12, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 2196
    .local v15, "reuestOffset":I
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReportChatbotAsSpam;->startRequestReportChatbotAsSpam(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2197
    invoke-virtual {v11}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v12, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReportChatbotAsSpam;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2198
    invoke-static {v12, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReportChatbotAsSpam;->addChatbotUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2199
    invoke-static {v12, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReportChatbotAsSpam;->addSpamInfo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2200
    invoke-static {v12, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReportChatbotAsSpam;->addRequestId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2201
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReportChatbotAsSpam;->endRequestReportChatbotAsSpam(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 2203
    .local v0, "offset":I
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2204
    const/16 v1, 0x578

    invoke-static {v12, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2205
    const/16 v1, 0x35

    invoke-static {v12, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2206
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2207
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v16

    .line 2209
    .end local v0    # "offset":I
    .local v16, "offset":I
    const/16 v1, 0x578

    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v2, 0x1f

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v2, v12

    move/from16 v3, v16

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 2211
    return-void
.end method

.method private handleRequestChatbotAnonymize(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;)V
    .locals 17
    .param p1, "param"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;

    .line 2214
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRequestChatbotAnonymize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    iget-object v8, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;->mChatbotUri:Lcom/sec/ims/util/ImsUri;

    .line 2216
    .local v8, "chatbotUri":Lcom/sec/ims/util/ImsUri;
    iget-object v9, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;->mAliasXml:Ljava/lang/String;

    .line 2217
    .local v9, "aliasXml":Ljava/lang/String;
    iget-object v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;->mCommandId:Ljava/lang/String;

    .line 2218
    .local v10, "commandId":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2219
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRequestChatbotAnonymize - Invalid ChatBotUrl"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    return-void

    .line 2223
    :cond_0
    iget v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;->mPhoneId:I

    const-string v1, "chatbot-communication"

    invoke-virtual {v6, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v11

    .line 2224
    .local v11, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v11, :cond_1

    .line 2225
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRequestChatbotAnonymize(): User Agent not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    return-void

    .line 2228
    :cond_1
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v12, v0

    .line 2229
    .local v12, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-virtual {v8}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 2230
    .local v13, "urlOffset":I
    invoke-virtual {v12, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 2231
    .local v14, "xmlOffset":I
    invoke-virtual {v12, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 2233
    .local v15, "commandIdOffset":I
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestChatbotAnonymize;->startRequestChatbotAnonymize(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2234
    invoke-virtual {v11}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v12, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestChatbotAnonymize;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2235
    invoke-static {v12, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestChatbotAnonymize;->addChatbotUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2236
    invoke-static {v12, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestChatbotAnonymize;->addAnonymizeInfo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2237
    invoke-static {v12, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestChatbotAnonymize;->addCommandId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2238
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestChatbotAnonymize;->endRequestChatbotAnonymize(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 2240
    .local v0, "offset":I
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2241
    const/16 v1, 0x579

    invoke-static {v12, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2242
    const/16 v1, 0x34

    invoke-static {v12, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2243
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2244
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v16

    .line 2245
    .end local v0    # "offset":I
    .local v16, "offset":I
    const/16 v1, 0x579

    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v2, v12

    move/from16 v3, v16

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 2246
    return-void
.end method

.method private handleSendComposingNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;)V
    .locals 13
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;

    .line 1111
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendComposingNotification(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;->mRawHandle:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 1114
    .local v0, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    if-nez v0, :cond_0

    .line 1115
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleSendComposingNotification(): invalid session handle!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    return-void

    .line 1119
    :cond_0
    iget v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    .line 1120
    .local v1, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v1, :cond_1

    .line 1121
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleSendComposingNotification(): user agent not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    return-void

    .line 1125
    :cond_1
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;->mUserAlias:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, ""

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;->mUserAlias:Ljava/lang/String;

    :goto_0
    move-object v8, v2

    .line 1126
    .local v8, "userAlias":Ljava/lang/String;
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v9, v2

    .line 1127
    .local v9, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const-string/jumbo v2, "text/plain"

    invoke-virtual {v9, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 1128
    .local v10, "contentTypeOffset":I
    invoke-virtual {v9, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 1130
    .local v11, "aliasOffset":I
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;->startImComposingStatus(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1131
    invoke-static {v9, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1132
    iget v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;->mInterval:I

    int-to-long v2, v2

    invoke-static {v9, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;->addInterval(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1133
    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;->mIsComposing:Z

    invoke-static {v9, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;->addIsActive(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1134
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;->endImComposingStatus(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1136
    .local v2, "offset":I
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImComposingStatus;->startRequestSendImComposingStatus(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1137
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v9, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImComposingStatus;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1138
    invoke-static {v9, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImComposingStatus;->addStatus(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1139
    invoke-static {v9, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImComposingStatus;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1140
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImComposingStatus;->endRequestSendImComposingStatus(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1143
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1144
    const/16 v3, 0x1f9

    invoke-static {v9, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1145
    const/16 v3, 0x2c

    invoke-static {v9, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1146
    invoke-static {v9, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1147
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v12

    .line 1149
    .end local v2    # "offset":I
    .local v12, "offset":I
    const/16 v3, 0x1f9

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v4, 0x9

    .line 1150
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1149
    move-object v2, p0

    move-object v4, v9

    move v5, v12

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 1151
    return-void
.end method

.method private handleSendDispositionNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .locals 4
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    .line 1328
    const/4 v0, 0x0

    .line 1329
    .local v0, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mRawHandle:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1330
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mRawHandle:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 1332
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_0
    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->sendDispositionNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;II)V

    .line 1333
    return-void
.end method

.method private handleSendFtDispositionNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .locals 3
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    .line 1336
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->sendDispositionNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;II)V

    .line 1337
    return-void
.end method

.method private handleSendMessageRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;)V
    .locals 30
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

    .line 1154
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendMessageRequest(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRawHandle:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 1157
    .local v8, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    if-nez v8, :cond_1

    .line 1158
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSendMessageRequest(): invalid session handle!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRawHandle:Ljava/lang/Object;

    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-virtual {v6, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1163
    :cond_0
    return-void

    .line 1166
    :cond_1
    iget-object v0, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSendMessageCallbacks:Ljava/util/Map;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnMessageId:Ljava/lang/String;

    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    iget v0, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v9

    .line 1169
    .local v9, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v9, :cond_3

    .line 1170
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSendMessageRequest(): user agent not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_2

    .line 1172
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRawHandle:Ljava/lang/Object;

    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-virtual {v6, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1174
    const/4 v0, 0x0

    iput-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    .line 1176
    :cond_2
    return-void

    .line 1179
    :cond_3
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "charset="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1180
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSendMessageRequest(): missed charset, use utf8!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";charset=UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    .line 1184
    :cond_4
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mDispositionNotification:Ljava/util/Set;

    invoke-static {v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFwImdnNoti(Ljava/util/Set;)[I

    move-result-object v10

    .line 1187
    .local v10, "imdnNotification":[I
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v11, v0

    .line 1189
    .local v11, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v11, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->createNotiVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v12

    .line 1190
    .local v12, "imdnNotiVectorOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnMessageId:Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 1191
    .local v13, "imdnMsgIdOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnTime:Ljava/util/Date;

    const-string v2, ""

    if-eqz v0, :cond_5

    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnTime:Ljava/util/Date;

    invoke-static {v0}, Lcom/sec/internal/helper/Iso8601;->formatMillis(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v2

    :goto_0
    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 1193
    .local v14, "dateTimeOffset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->startImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1194
    invoke-static {v11, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addMessageId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1195
    invoke-static {v11, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addDatetime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1196
    invoke-static {v11, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addNoti(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1197
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->endImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v15

    .line 1199
    .local v15, "imdnParamsOffset":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 1200
    .local v5, "cpimNamespacesOffsetIntegers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, -0x1

    .line 1202
    .local v0, "cpimNamespacesVectorOffset":I
    iget-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mMaapTrafficType:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 1203
    const-string v3, "maap"

    invoke-virtual {v11, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1204
    .local v3, "cpimNamespaceNameOffset":I
    const-string v1, "<http://www.gsma.com/rcs/maap/>"

    invoke-virtual {v11, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1205
    .local v1, "cpimNamespaceUriOffset":I
    const-string v4, "Traffic-Type"

    invoke-virtual {v11, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1206
    .local v4, "cpimNamespaceKeyOffset":I
    move/from16 v18, v0

    .end local v0    # "cpimNamespacesVectorOffset":I
    .local v18, "cpimNamespacesVectorOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mMaapTrafficType:Ljava/lang/String;

    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1208
    .local v0, "cpimNamespaceValueOffset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1209
    invoke-static {v11, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1210
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1211
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v19

    .line 1212
    .local v19, "headersPairOffset":I
    move/from16 v20, v0

    move-object/from16 v21, v2

    const/4 v0, 0x1

    .end local v0    # "cpimNamespaceValueOffset":I
    .local v20, "cpimNamespaceValueOffset":I
    new-array v2, v0, [I

    const/4 v0, 0x0

    aput v19, v2, v0

    move-object v0, v2

    .line 1213
    .local v0, "headersOffset":[I
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->createHeadersVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v2

    .line 1215
    .local v2, "headersVectorOffset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->startCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1216
    invoke-static {v11, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1217
    invoke-static {v11, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1218
    invoke-static {v11, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1219
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->endCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v22

    move-object/from16 v23, v0

    .end local v0    # "headersOffset":[I
    .local v23, "headersOffset":[I
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1202
    .end local v1    # "cpimNamespaceUriOffset":I
    .end local v2    # "headersVectorOffset":I
    .end local v3    # "cpimNamespaceNameOffset":I
    .end local v4    # "cpimNamespaceKeyOffset":I
    .end local v18    # "cpimNamespacesVectorOffset":I
    .end local v19    # "headersPairOffset":I
    .end local v20    # "cpimNamespaceValueOffset":I
    .end local v23    # "headersOffset":[I
    .local v0, "cpimNamespacesVectorOffset":I
    :cond_6
    move/from16 v18, v0

    move-object/from16 v21, v2

    .line 1221
    .end local v0    # "cpimNamespacesVectorOffset":I
    .restart local v18    # "cpimNamespacesVectorOffset":I
    :goto_1
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1222
    const-string v0, "Korea-RCS"

    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1223
    .local v0, "cpimNamespaceNameOffset":I
    const-string v1, "<http://www.tta.or.kr>"

    invoke-virtual {v11, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1224
    .restart local v1    # "cpimNamespaceUriOffset":I
    const-string v2, "Reference-ID"

    invoke-virtual {v11, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1225
    .local v2, "cpimNamespaceKeyOffset":I
    iget-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceId:Ljava/lang/String;

    invoke-virtual {v11, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1226
    .local v3, "cpimNamespaceValueOffset":I
    const-string v4, "Reference-Type"

    invoke-virtual {v11, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1227
    .local v4, "cpimNamespaceKeyOffset2":I
    move-object/from16 v19, v10

    .end local v10    # "imdnNotification":[I
    .local v19, "imdnNotification":[I
    iget-object v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceType:Ljava/lang/String;

    invoke-direct {v6, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 1229
    .local v10, "cpimNamespaceValueOffset2":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1230
    invoke-static {v11, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1231
    invoke-static {v11, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1232
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v20

    .line 1233
    .local v20, "headersPairOffset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1234
    invoke-static {v11, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1235
    invoke-static {v11, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1236
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v22

    .line 1237
    .local v22, "headersPairOffset2":I
    move/from16 v23, v2

    .end local v2    # "cpimNamespaceKeyOffset":I
    .local v23, "cpimNamespaceKeyOffset":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/16 v16, 0x0

    aput v20, v2, v16

    const/16 v16, 0x1

    aput v22, v2, v16

    .line 1238
    .local v2, "headersOffset":[I
    move/from16 v16, v3

    .end local v3    # "cpimNamespaceValueOffset":I
    .local v16, "cpimNamespaceValueOffset":I
    invoke-static {v11, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->createHeadersVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v3

    .line 1240
    .local v3, "headersVectorOffset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->startCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1241
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1242
    invoke-static {v11, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1243
    invoke-static {v11, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1244
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->endCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v17

    move/from16 v24, v0

    .end local v0    # "cpimNamespaceNameOffset":I
    .local v24, "cpimNamespaceNameOffset":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1221
    .end local v1    # "cpimNamespaceUriOffset":I
    .end local v2    # "headersOffset":[I
    .end local v3    # "headersVectorOffset":I
    .end local v4    # "cpimNamespaceKeyOffset2":I
    .end local v16    # "cpimNamespaceValueOffset":I
    .end local v19    # "imdnNotification":[I
    .end local v20    # "headersPairOffset":I
    .end local v22    # "headersPairOffset2":I
    .end local v23    # "cpimNamespaceKeyOffset":I
    .end local v24    # "cpimNamespaceNameOffset":I
    .local v10, "imdnNotification":[I
    :cond_7
    move-object/from16 v19, v10

    .line 1246
    .end local v10    # "imdnNotification":[I
    .restart local v19    # "imdnNotification":[I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 1247
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1248
    .local v0, "cpimNamespacesOffset":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_8

    .line 1249
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 1248
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1251
    .end local v1    # "i":I
    :cond_8
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->createCpimNamespacesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v1

    move v10, v1

    .end local v18    # "cpimNamespacesVectorOffset":I
    .local v1, "cpimNamespacesVectorOffset":I
    goto :goto_4

    .line 1246
    .end local v0    # "cpimNamespacesOffset":[I
    .end local v1    # "cpimNamespacesVectorOffset":I
    .restart local v18    # "cpimNamespacesVectorOffset":I
    :cond_9
    move/from16 v10, v18

    .line 1254
    .end local v18    # "cpimNamespacesVectorOffset":I
    .local v10, "cpimNamespacesVectorOffset":I
    :goto_4
    const/4 v0, -0x1

    .line 1255
    .local v0, "ccParticipantsOffset":I
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mGroupCcList:Ljava/util/Set;

    if-eqz v1, :cond_a

    .line 1256
    iget-object v1, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSendMessageRequest, params.mGroupCcList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mGroupCcList:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mGroupCcList:Ljava/util/Set;

    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mGroupCcList:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v6, v11, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getImsUriOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object v1

    .line 1258
    .local v1, "ccParticipantsArray":[I
    invoke-static {v11, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->createCcParticipantsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v0

    move v4, v0

    goto :goto_5

    .line 1255
    .end local v1    # "ccParticipantsArray":[I
    :cond_a
    move v4, v0

    .line 1260
    .end local v0    # "ccParticipantsOffset":I
    .local v4, "ccParticipantsOffset":I
    :goto_5
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mBody:Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1261
    .local v3, "bodyOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1262
    .local v2, "contentTypeOffset":I
    const/4 v0, -0x1

    .line 1263
    .local v0, "deviceNameOffset":I
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mDeviceName:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 1264
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v11, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    move v1, v0

    goto :goto_6

    .line 1263
    :cond_b
    move v1, v0

    .line 1266
    .end local v0    # "deviceNameOffset":I
    .local v1, "deviceNameOffset":I
    :goto_6
    const/4 v0, -0x1

    .line 1267
    .local v0, "reliableMsgOffset":I
    move/from16 v16, v0

    .end local v0    # "reliableMsgOffset":I
    .local v16, "reliableMsgOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReliableMessage:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 1268
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReliableMessage:Ljava/lang/String;

    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .end local v16    # "reliableMsgOffset":I
    .restart local v0    # "reliableMsgOffset":I
    goto :goto_7

    .line 1267
    .end local v0    # "reliableMsgOffset":I
    .restart local v16    # "reliableMsgOffset":I
    :cond_c
    move/from16 v0, v16

    .line 1270
    .end local v16    # "reliableMsgOffset":I
    .restart local v0    # "reliableMsgOffset":I
    :goto_7
    const/16 v16, -0x1

    .line 1271
    .local v16, "xmsMsgOffset":I
    move/from16 v17, v12

    .end local v12    # "imdnNotiVectorOffset":I
    .local v17, "imdnNotiVectorOffset":I
    iget-object v12, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mXmsMessage:Ljava/lang/String;

    if-eqz v12, :cond_d

    .line 1272
    iget-object v12, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mXmsMessage:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v16

    move/from16 v12, v16

    goto :goto_8

    .line 1271
    :cond_d
    move/from16 v12, v16

    .line 1275
    .end local v16    # "xmsMsgOffset":I
    .local v12, "xmsMsgOffset":I
    :goto_8
    move/from16 v16, v13

    .end local v13    # "imdnMsgIdOffset":I
    .local v16, "imdnMsgIdOffset":I
    iget-object v13, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mUserAlias:Ljava/lang/String;

    if-nez v13, :cond_e

    goto :goto_9

    :cond_e
    iget-object v13, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mUserAlias:Ljava/lang/String;

    move-object/from16 v21, v13

    :goto_9
    move-object/from16 v13, v21

    .line 1276
    .local v13, "userAlias":Ljava/lang/String;
    move/from16 v18, v14

    .end local v14    # "dateTimeOffset":I
    .local v18, "dateTimeOffset":I
    invoke-direct {v6, v13}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 1278
    .local v14, "userAliasOffset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->startImMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1279
    invoke-static {v11, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addBody(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1280
    invoke-static {v11, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1281
    invoke-static {v11, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1282
    invoke-static {v11, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addImdn(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1284
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_f

    .line 1285
    invoke-static {v11, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addCpimNamespaces(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1288
    :cond_f
    move/from16 v20, v2

    .end local v2    # "contentTypeOffset":I
    .local v20, "contentTypeOffset":I
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mDeviceName:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 1289
    invoke-static {v11, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addDeviceName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1292
    :cond_10
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReliableMessage:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 1293
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addReliableMessage(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1296
    :cond_11
    iget-boolean v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mExtraFt:Z

    invoke-static {v11, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addExtraFt(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1298
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mXmsMessage:Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 1299
    invoke-static {v11, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addXmsMessage(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1303
    :cond_12
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mGroupCcList:Ljava/util/Set;

    if-eqz v2, :cond_13

    .line 1304
    invoke-static {v11, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addCcParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1307
    :cond_13
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->endImMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1309
    .local v2, "imMessageParamOffset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->startBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1310
    move/from16 v21, v0

    .end local v0    # "reliableMsgOffset":I
    .local v21, "reliableMsgOffset":I
    iget-object v0, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v22, v1

    .end local v1    # "deviceNameOffset":I
    .local v22, "deviceNameOffset":I
    int-to-long v0, v0

    invoke-static {v11, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1311
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->endBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1313
    .local v1, "baseSessionDataOffset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImMessage;->startRequestSendImMessage(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1314
    invoke-static {v11, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImMessage;->addSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1315
    invoke-static {v11, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImMessage;->addMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1316
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImMessage;->endRequestSendImMessage(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 1318
    .local v0, "requestSendImMessageOffset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1319
    move/from16 v23, v1

    .end local v1    # "baseSessionDataOffset":I
    .local v23, "baseSessionDataOffset":I
    const/16 v1, 0x1f8

    invoke-static {v11, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1320
    const/16 v1, 0x2b

    invoke-static {v11, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1321
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1322
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v24

    .line 1324
    .local v24, "offset":I
    iget-object v1, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    move/from16 v26, v0

    .end local v0    # "requestSendImMessageOffset":I
    .local v26, "requestSendImMessageOffset":I
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v27

    move-object/from16 v0, p0

    const/16 v1, 0x1f8

    move/from16 v25, v2

    .end local v2    # "imMessageParamOffset":I
    .local v25, "imMessageParamOffset":I
    move-object v2, v11

    move/from16 v28, v3

    .end local v3    # "bodyOffset":I
    .local v28, "bodyOffset":I
    move/from16 v3, v24

    move/from16 v29, v4

    .end local v4    # "ccParticipantsOffset":I
    .local v29, "ccParticipantsOffset":I
    move-object/from16 v4, v27

    move-object/from16 v27, v5

    .end local v5    # "cpimNamespacesOffsetIntegers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v27, "cpimNamespacesOffsetIntegers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 1325
    return-void
.end method

.method private handleSendMessageRevokeRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;)V
    .locals 17
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;

    .line 1340
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v7, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendMessageRevokeRequest - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    iget-object v0, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v9

    .line 1344
    .local v9, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    const/4 v0, 0x0

    if-nez v9, :cond_0

    .line 1346
    iget-object v1, v7, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendDispositionNotification(): UserAgent not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    iget-object v1, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mCallback:Landroid/os/Message;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-static {v1, v2, v0}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 1348
    iget-object v0, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mCallback:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1350
    return-void

    .line 1352
    :cond_0
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v10

    .line 1354
    .local v10, "registrationHandle":I
    new-instance v1, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v11, v1

    .line 1356
    .local v11, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    iget-object v1, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mUri:Lcom/sec/ims/util/ImsUri;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v12, v0

    .line 1357
    .local v12, "mUri":Ljava/lang/String;
    iget-object v0, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mImdnId:Ljava/lang/String;

    invoke-direct {v7, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 1358
    .local v13, "imdnIdOffset":I
    invoke-virtual {v11, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 1359
    .local v14, "uriOffset":I
    iget-object v0, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mConversationId:Ljava/lang/String;

    invoke-direct {v7, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 1360
    .local v15, "convIdOffset":I
    iget-object v0, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mContributionId:Ljava/lang/String;

    invoke-direct {v7, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    .line 1364
    .local v6, "contIdOffset":I
    :try_start_0
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMessageRevokeRequest;->startRequestSendMessageRevokeRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1365
    invoke-static {v11, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMessageRevokeRequest;->addImdnMessageId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1366
    int-to-long v0, v10

    invoke-static {v11, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMessageRevokeRequest;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1367
    const/4 v0, 0x1

    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMessageRevokeRequest;->addService(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1368
    invoke-static {v11, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMessageRevokeRequest;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1373
    nop

    .line 1374
    iget-object v0, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mConversationId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1375
    invoke-static {v11, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMessageRevokeRequest;->addConversationId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1378
    :cond_2
    iget-object v0, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mContributionId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1379
    invoke-static {v11, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMessageRevokeRequest;->addContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1382
    :cond_3
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMessageRevokeRequest;->endRequestSendMessageRevokeRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 1384
    .local v0, "offset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1385
    const/16 v1, 0x1fd

    invoke-static {v11, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1386
    const/16 v1, 0x64

    invoke-static {v11, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1387
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1388
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 1390
    const/16 v2, 0x1fd

    iget-object v1, v7, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v3, 0x1c

    iget-object v4, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mCallback:Landroid/os/Message;

    .line 1391
    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1390
    move-object/from16 v1, p0

    move-object v3, v11

    move v4, v0

    move/from16 v16, v6

    .end local v6    # "contIdOffset":I
    .local v16, "contIdOffset":I
    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 1392
    return-void

    .line 1370
    .end local v0    # "offset":I
    .end local v16    # "contIdOffset":I
    .restart local v6    # "contIdOffset":I
    :catch_0
    move-exception v0

    move/from16 v16, v6

    .line 1371
    .end local v6    # "contIdOffset":I
    .local v0, "e":Ljava/lang/NullPointerException;
    .restart local v16    # "contIdOffset":I
    iget-object v1, v7, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Discard handleSendMessageRevokeRequest() :"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    return-void
.end method

.method private handleSetMoreInfoToSipUARequest(Ljava/lang/String;I)V
    .locals 10
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "uaHandle"    # I

    .line 2146
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetMoreInfoToSipUARequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2148
    return-void

    .line 2151
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 2152
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v0, :cond_1

    .line 2153
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleSetMoreInfoToSipUARequest(): User Agent not found!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    return-void

    .line 2157
    :cond_1
    new-instance v1, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v7, v1

    .line 2158
    .local v7, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    if-eqz p1, :cond_2

    move-object v1, p1

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    invoke-virtual {v7, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 2160
    .local v8, "valueOffset":I
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestImSetMoreInfoToSipUA;->startRequestImSetMoreInfoToSipUA(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2161
    invoke-static {v7, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestImSetMoreInfoToSipUA;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2162
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestImSetMoreInfoToSipUA;->endRequestImSetMoreInfoToSipUA(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 2164
    .local v1, "offset":I
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2165
    const/16 v2, 0x20d

    invoke-static {v7, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2166
    const/16 v2, 0x3b

    invoke-static {v7, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2167
    invoke-static {v7, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2168
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v9

    .line 2170
    .end local v1    # "offset":I
    .local v9, "offset":I
    const/16 v2, 0x20d

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v3, 0x1d

    .line 2171
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 2170
    move-object v1, p0

    move-object v3, v7

    move v4, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 2172
    return-void
.end method

.method private handleStartFtMediaRequest(I)V
    .locals 10
    .param p1, "sessionHandle"    # I

    .line 1935
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartFtMediaRequest(): file transdfer session handle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    .line 1939
    .local v0, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;
    iget v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mUaHandle:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    .line 1940
    .local v1, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v1, :cond_1

    .line 1941
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStartFtMediaRequest(): UserAgent not found. UaHandle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mUaHandle:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    .line 1943
    .local v2, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 1944
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    invoke-virtual {p0, v3, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1946
    :cond_0
    return-void

    .line 1950
    .end local v2    # "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;
    :cond_1
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v8, v2

    .line 1952
    .local v8, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartMedia;->startRequestStartMedia(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1953
    int-to-long v2, p1

    invoke-static {v8, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartMedia;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1954
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartMedia;->endRequestStartMedia(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1956
    .local v2, "offset":I
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1957
    const/16 v3, 0x22a

    invoke-static {v8, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1958
    const/16 v3, 0x2a

    invoke-static {v8, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1959
    invoke-static {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1960
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v9

    .line 1962
    .end local v2    # "offset":I
    .local v9, "offset":I
    const/16 v3, 0x22a

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v4, 0x12

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object v2, p0

    move-object v4, v8

    move v5, v9

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 1963
    return-void
.end method

.method private handleStartFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;)V
    .locals 41
    .param p1, "sendParams"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;

    .line 1755
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartFtSessionRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mOwnImsi:Ljava/lang/String;

    const-string v1, "ft"

    invoke-virtual {v6, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v8

    .line 1758
    .local v8, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v8, :cond_1

    .line 1759
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleStartFtSessionRequest(): UserAgent not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    .line 1761
    .local v0, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 1762
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mCallback:Landroid/os/Message;

    invoke-virtual {v6, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1764
    :cond_0
    return-void

    .line 1768
    .end local v0    # "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;
    :cond_1
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;-><init>()V

    move-object v9, v0

    .line 1769
    .local v9, "ftSession":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;
    iget v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mMessageId:I

    iput v0, v9, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mId:I

    .line 1770
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mCallback:Landroid/os/Message;

    iput-object v0, v9, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    .line 1771
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mSessionHandleCallback:Landroid/os/Message;

    iput-object v0, v9, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartSessionHandleCallback:Landroid/os/Message;

    .line 1772
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v0

    iput v0, v9, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mUaHandle:I

    .line 1773
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mPendingFtSessions:Ljava/util/Map;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileTransferID:Ljava/lang/String;

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v10, v0

    .line 1778
    .local v10, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileTransferID:Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 1779
    .local v11, "fileTransferIdOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mUserAlias:Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 1780
    .local v12, "userAliasOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mContributionId:Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 1781
    .local v13, "contributionIdOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mConversationId:Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 1782
    .local v14, "conversationIdOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mInReplyToContributionId:Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 1783
    .local v15, "inReplyToContributionIdOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileName:Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 1784
    .local v5, "fileNameOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->adjustFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1785
    .local v0, "filePathOffset":I
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mContentType:Ljava/lang/String;

    invoke-direct {v6, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1786
    .local v2, "contentTypeOffset":I
    iget-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileFingerPrint:Ljava/lang/String;

    invoke-direct {v6, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1787
    .local v4, "fileFingerprintOffset":I
    iget-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mDeviceName:Ljava/lang/String;

    invoke-direct {v6, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1788
    .local v3, "deviceNameOffset":I
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReliableMessage:Ljava/lang/String;

    invoke-direct {v6, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1789
    .local v1, "reliableMessageOffset":I
    move-object/from16 v17, v9

    .end local v9    # "ftSession":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;
    .local v17, "ftSession":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;
    iget-object v9, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    const-string v18, ""

    if-eqz v9, :cond_2

    iget-object v9, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamFrom()Lcom/sec/ims/util/ImsUri;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_2
    move-object/from16 v9, v18

    :goto_0
    invoke-virtual {v10, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 1790
    .local v9, "spamFromOffset":I
    move-object/from16 v19, v8

    .end local v8    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .local v19, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    iget-object v8, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    if-eqz v8, :cond_3

    iget-object v8, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamTo()Lcom/sec/ims/util/ImsUri;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_3
    move-object/from16 v8, v18

    :goto_1
    invoke-virtual {v10, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 1791
    .local v8, "spamToOffset":I
    move/from16 v20, v1

    .end local v1    # "reliableMessageOffset":I
    .local v20, "reliableMessageOffset":I
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    if-eqz v1, :cond_4

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamDate()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object/from16 v1, v18

    :goto_2
    invoke-virtual {v10, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1792
    .local v1, "spamDateOffset":I
    move/from16 v21, v3

    .end local v3    # "deviceNameOffset":I
    .local v21, "deviceNameOffset":I
    iget-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mImdnId:Ljava/lang/String;

    invoke-virtual {v10, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1793
    .local v3, "imdnIdOffset":I
    move/from16 v22, v4

    .end local v4    # "fileFingerprintOffset":I
    .local v22, "fileFingerprintOffset":I
    iget-object v4, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mDispositionNotification:Ljava/util/Set;

    .line 1794
    invoke-static {v4}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFwImdnNoti(Ljava/util/Set;)[I

    move-result-object v4

    .line 1793
    invoke-static {v10, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->createNotiVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v4

    .line 1795
    .local v4, "imdnNotiVectorOffset":I
    move/from16 v23, v4

    .end local v4    # "imdnNotiVectorOffset":I
    .local v23, "imdnNotiVectorOffset":I
    iget-object v4, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mImdnTime:Ljava/util/Date;

    invoke-static {v4}, Lcom/sec/internal/helper/Iso8601;->formatMillis(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1796
    .local v4, "dateTimeOffset":I
    const/16 v24, -0x1

    .local v24, "confUriOffset":I
    const/16 v25, -0x1

    .local v25, "receiversOffset":I
    const/16 v26, -0x1

    .local v26, "baseSessionDataOffset":I
    const/16 v27, -0x1

    .local v27, "imFileAttrOffset":I
    const/16 v28, -0x1

    .local v28, "iconAttrOffset":I
    const/16 v29, -0x1

    .line 1797
    .local v29, "reportMsgHdrOffset":I
    const/16 v30, -0x1

    .local v30, "imdnParamsOffset":I
    const/16 v31, -0x1

    .local v31, "ftPayloadOffset":I
    const/16 v32, -0x1

    .local v32, "rsfsOffset":I
    const/16 v33, -0x1

    .line 1799
    .local v33, "offset":I
    move/from16 v34, v4

    .end local v4    # "dateTimeOffset":I
    .local v34, "dateTimeOffset":I
    iget-object v4, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mConfUri:Lcom/sec/ims/util/ImsUri;

    if-eqz v4, :cond_5

    .line 1800
    iget-object v4, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mConfUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v24

    move/from16 v36, v3

    move/from16 v4, v24

    move/from16 v3, v25

    goto :goto_5

    .line 1802
    :cond_5
    iget-object v4, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mRecipients:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    .local v4, "receiversVector":[I
    const/16 v35, 0x0

    .line 1803
    .local v35, "i":I
    move/from16 v36, v3

    .end local v3    # "imdnIdOffset":I
    .local v36, "imdnIdOffset":I
    iget-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mRecipients:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/sec/ims/util/ImsUri;

    .line 1804
    .local v37, "recipient":Lcom/sec/ims/util/ImsUri;
    add-int/lit8 v38, v35, 0x1

    .end local v35    # "i":I
    .local v38, "i":I
    if-eqz v37, :cond_6

    invoke-virtual/range {v37 .. v37}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v40, v39

    move-object/from16 v39, v3

    move-object/from16 v3, v40

    goto :goto_4

    :cond_6
    move-object/from16 v39, v3

    move-object/from16 v3, v18

    :goto_4
    invoke-virtual {v10, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    aput v3, v4, v35

    .line 1805
    .end local v37    # "recipient":Lcom/sec/ims/util/ImsUri;
    move/from16 v35, v38

    move-object/from16 v3, v39

    goto :goto_3

    .line 1806
    .end local v38    # "i":I
    .restart local v35    # "i":I
    :cond_7
    invoke-static {v10, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->createReceiversVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v25

    move/from16 v4, v24

    move/from16 v3, v25

    .line 1809
    .end local v24    # "confUriOffset":I
    .end local v25    # "receiversOffset":I
    .end local v35    # "i":I
    .local v3, "receiversOffset":I
    .local v4, "confUriOffset":I
    :goto_5
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->startBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1810
    invoke-static {v10, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1811
    move/from16 v18, v11

    .end local v11    # "fileTransferIdOffset":I
    .local v18, "fileTransferIdOffset":I
    iget-object v11, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mConfUri:Lcom/sec/ims/util/ImsUri;

    const/16 v24, 0x1

    if-eqz v11, :cond_8

    move/from16 v11, v24

    goto :goto_6

    :cond_8
    const/4 v11, 0x0

    :goto_6
    invoke-static {v10, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addIsConference(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1813
    iget-object v11, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mConfUri:Lcom/sec/ims/util/ImsUri;

    if-eqz v11, :cond_9

    .line 1814
    invoke-static {v10, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addSessionUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    goto :goto_7

    .line 1816
    :cond_9
    invoke-static {v10, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addReceivers(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1819
    :goto_7
    iget-object v11, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mUserAlias:Ljava/lang/String;

    if-eqz v11, :cond_a

    .line 1820
    invoke-static {v10, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1822
    :cond_a
    iget-object v11, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mContributionId:Ljava/lang/String;

    if-eqz v11, :cond_b

    .line 1823
    invoke-static {v10, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1825
    :cond_b
    iget-object v11, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mConversationId:Ljava/lang/String;

    if-eqz v11, :cond_c

    .line 1826
    invoke-static {v10, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addConversationId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1828
    :cond_c
    iget-object v11, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mInReplyToContributionId:Ljava/lang/String;

    if-eqz v11, :cond_d

    .line 1829
    invoke-static {v10, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addInReplyToContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1832
    :cond_d
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->endBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v11

    .line 1834
    .end local v26    # "baseSessionDataOffset":I
    .local v11, "baseSessionDataOffset":I
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->startImFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1835
    invoke-static {v10, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1836
    invoke-static {v10, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addPath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1837
    invoke-static {v10, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1838
    move/from16 v25, v2

    move/from16 v26, v3

    .end local v2    # "contentTypeOffset":I
    .end local v3    # "receiversOffset":I
    .local v25, "contentTypeOffset":I
    .local v26, "receiversOffset":I
    iget-wide v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileSize:J

    long-to-int v2, v2

    int-to-long v2, v2

    invoke-static {v10, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addSize(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1839
    iget-boolean v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mIsResuming:Z

    if-eqz v2, :cond_f

    .line 1840
    iget-wide v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mTransferredBytes:J

    const-wide/16 v37, 0x1

    add-long v2, v2, v37

    move/from16 v39, v4

    move/from16 v35, v5

    .end local v4    # "confUriOffset":I
    .end local v5    # "fileNameOffset":I
    .local v35, "fileNameOffset":I
    .local v39, "confUriOffset":I
    iget-wide v4, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileSize:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_e

    .line 1841
    iget-wide v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileSize:J

    goto :goto_8

    :cond_e
    iget-wide v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mTransferredBytes:J

    add-long v2, v2, v37

    .line 1840
    :goto_8
    invoke-static {v10, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addStart(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1842
    iget-wide v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileSize:J

    invoke-static {v10, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addEnd(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    goto :goto_9

    .line 1844
    .end local v35    # "fileNameOffset":I
    .end local v39    # "confUriOffset":I
    .restart local v4    # "confUriOffset":I
    .restart local v5    # "fileNameOffset":I
    :cond_f
    move/from16 v39, v4

    move/from16 v35, v5

    .end local v4    # "confUriOffset":I
    .end local v5    # "fileNameOffset":I
    .restart local v35    # "fileNameOffset":I
    .restart local v39    # "confUriOffset":I
    const-wide/16 v2, 0x0

    invoke-static {v10, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addStart(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1845
    invoke-static {v10, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addEnd(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1847
    :goto_9
    iget v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mTimeDuration:I

    int-to-long v2, v2

    invoke-static {v10, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addTimeDuration(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1849
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->endImFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 1852
    .end local v27    # "imFileAttrOffset":I
    .local v5, "imFileAttrOffset":I
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mThumbPath:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v2, v3, :cond_12

    .line 1853
    const-string v2, ""

    .line 1854
    .local v2, "mimetype":Ljava/lang/String;
    iget-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mThumbPath:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 1855
    .local v3, "extPos":I
    if-ltz v3, :cond_10

    .line 1856
    iget-object v4, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mThumbPath:Ljava/lang/String;

    move/from16 v27, v0

    .end local v0    # "filePathOffset":I
    .local v27, "filePathOffset":I
    add-int/lit8 v0, v3, 0x1

    move-object/from16 v37, v2

    .end local v2    # "mimetype":Ljava/lang/String;
    .local v37, "mimetype":Ljava/lang/String;
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mThumbPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1857
    .local v0, "extension":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->isTranslationDefined(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1858
    invoke-static {v0}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .end local v37    # "mimetype":Ljava/lang/String;
    .restart local v2    # "mimetype":Ljava/lang/String;
    goto :goto_a

    .line 1855
    .end local v27    # "filePathOffset":I
    .local v0, "filePathOffset":I
    :cond_10
    move/from16 v27, v0

    move-object/from16 v37, v2

    .line 1862
    .end local v0    # "filePathOffset":I
    .end local v2    # "mimetype":Ljava/lang/String;
    .restart local v27    # "filePathOffset":I
    .restart local v37    # "mimetype":Ljava/lang/String;
    :cond_11
    move-object/from16 v2, v37

    .end local v37    # "mimetype":Ljava/lang/String;
    .restart local v2    # "mimetype":Ljava/lang/String;
    :goto_a
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mThumbPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->adjustFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1863
    .end local v27    # "filePathOffset":I
    .restart local v0    # "filePathOffset":I
    invoke-direct {v6, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1865
    .end local v25    # "contentTypeOffset":I
    .local v4, "contentTypeOffset":I
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->startImFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1866
    invoke-static {v10, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addPath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1867
    invoke-static {v10, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1868
    move/from16 v27, v0

    .end local v0    # "filePathOffset":I
    .restart local v27    # "filePathOffset":I
    new-instance v0, Ljava/io/File;

    move-object/from16 v37, v2

    .end local v2    # "mimetype":Ljava/lang/String;
    .restart local v37    # "mimetype":Ljava/lang/String;
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mThumbPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move/from16 v38, v3

    .end local v3    # "extPos":I
    .local v38, "extPos":I
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v10, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addSize(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1870
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->endImFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v28

    move/from16 v25, v4

    move/from16 v4, v28

    goto :goto_b

    .line 1852
    .end local v4    # "contentTypeOffset":I
    .end local v27    # "filePathOffset":I
    .end local v37    # "mimetype":Ljava/lang/String;
    .end local v38    # "extPos":I
    .restart local v0    # "filePathOffset":I
    .restart local v25    # "contentTypeOffset":I
    :cond_12
    move/from16 v27, v0

    .line 1875
    .end local v0    # "filePathOffset":I
    .restart local v27    # "filePathOffset":I
    move/from16 v4, v28

    .end local v28    # "iconAttrOffset":I
    .local v4, "iconAttrOffset":I
    :goto_b
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->startReportMessageHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1876
    invoke-static {v10, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->addSpamFrom(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1877
    invoke-static {v10, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->addSpamTo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1878
    invoke-static {v10, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->addSpamDate(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1880
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->endReportMessageHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 1881
    .end local v29    # "reportMsgHdrOffset":I
    .local v3, "reportMsgHdrOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    if-eqz v0, :cond_13

    .line 1882
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v1

    .end local v1    # "spamDateOffset":I
    .local v28, "spamDateOffset":I
    const-string v1, "andleStartFtSessionRequest, mReportMsgParams="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1881
    .end local v28    # "spamDateOffset":I
    .restart local v1    # "spamDateOffset":I
    :cond_13
    move/from16 v28, v1

    .line 1885
    .end local v1    # "spamDateOffset":I
    .restart local v28    # "spamDateOffset":I
    :goto_c
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->startImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1886
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mImdnId:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 1887
    move/from16 v2, v36

    .end local v36    # "imdnIdOffset":I
    .local v2, "imdnIdOffset":I
    invoke-static {v10, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addMessageId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    goto :goto_d

    .line 1886
    .end local v2    # "imdnIdOffset":I
    .restart local v36    # "imdnIdOffset":I
    :cond_14
    move/from16 v2, v36

    .line 1890
    .end local v36    # "imdnIdOffset":I
    .restart local v2    # "imdnIdOffset":I
    :goto_d
    move/from16 v1, v23

    .end local v23    # "imdnNotiVectorOffset":I
    .local v1, "imdnNotiVectorOffset":I
    invoke-static {v10, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addNoti(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1891
    move/from16 v0, v34

    .end local v34    # "dateTimeOffset":I
    .local v0, "dateTimeOffset":I
    invoke-static {v10, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addDatetime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1892
    nop

    .end local v1    # "imdnNotiVectorOffset":I
    .restart local v23    # "imdnNotiVectorOffset":I
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->endImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1894
    .end local v30    # "imdnParamsOffset":I
    .local v1, "imdnParamsOffset":I
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->startFtPayloadParam(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1895
    nop

    .end local v0    # "dateTimeOffset":I
    .restart local v34    # "dateTimeOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move/from16 v36, v2

    .end local v2    # "imdnIdOffset":I
    .restart local v36    # "imdnIdOffset":I
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v2, :cond_15

    move/from16 v0, v24

    goto :goto_e

    :cond_15
    const/4 v0, 0x0

    :goto_e
    invoke-static {v10, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addIsPush(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1896
    iget-boolean v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mExtraFt:Z

    invoke-static {v10, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addExtraFt(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1897
    iget-boolean v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mIsPublicAccountMsg:Z

    invoke-static {v10, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addIsPublicAccountMsg(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1898
    move/from16 v2, v22

    .end local v22    # "fileFingerprintOffset":I
    .local v2, "fileFingerprintOffset":I
    invoke-static {v10, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addFileFingerPrint(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1900
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 1901
    move/from16 v0, v21

    .end local v21    # "deviceNameOffset":I
    .local v0, "deviceNameOffset":I
    invoke-static {v10, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addDeviceName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    goto :goto_f

    .line 1900
    .end local v0    # "deviceNameOffset":I
    .restart local v21    # "deviceNameOffset":I
    :cond_16
    move/from16 v0, v21

    .line 1903
    .end local v21    # "deviceNameOffset":I
    .restart local v0    # "deviceNameOffset":I
    :goto_f
    move/from16 v21, v0

    .end local v0    # "deviceNameOffset":I
    .restart local v21    # "deviceNameOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReliableMessage:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 1904
    move/from16 v0, v20

    .end local v20    # "reliableMessageOffset":I
    .local v0, "reliableMessageOffset":I
    invoke-static {v10, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addReliableMessage(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    goto :goto_10

    .line 1903
    .end local v0    # "reliableMessageOffset":I
    .restart local v20    # "reliableMessageOffset":I
    :cond_17
    move/from16 v0, v20

    .line 1907
    .end local v20    # "reliableMessageOffset":I
    .restart local v0    # "reliableMessageOffset":I
    :goto_10
    invoke-static {v10, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1909
    move/from16 v20, v0

    .end local v0    # "reliableMessageOffset":I
    .restart local v20    # "reliableMessageOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mThumbPath:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move/from16 v22, v2

    .end local v2    # "fileFingerprintOffset":I
    .restart local v22    # "fileFingerprintOffset":I
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v2, :cond_19

    .line 1910
    invoke-static {v10, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addIconAttr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    goto :goto_11

    .line 1909
    .end local v22    # "fileFingerprintOffset":I
    .restart local v2    # "fileFingerprintOffset":I
    :cond_18
    move/from16 v22, v2

    .line 1913
    .end local v2    # "fileFingerprintOffset":I
    .restart local v22    # "fileFingerprintOffset":I
    :cond_19
    :goto_11
    invoke-static {v10, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addImdn(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1915
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->endFtPayloadParam(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1917
    .end local v31    # "ftPayloadOffset":I
    .local v2, "ftPayloadOffset":I
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->startRequestStartFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1918
    invoke-virtual/range {v19 .. v19}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v0

    move/from16 v16, v1

    .end local v1    # "imdnParamsOffset":I
    .local v16, "imdnParamsOffset":I
    int-to-long v0, v0

    invoke-static {v10, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1919
    invoke-static {v10, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->addSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1920
    invoke-static {v10, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->addReportData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1921
    invoke-static {v10, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->addPayload(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1922
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->endRequestStartFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1924
    .end local v32    # "rsfsOffset":I
    .local v1, "rsfsOffset":I
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1925
    const/16 v0, 0x226

    invoke-static {v10, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1926
    const/16 v0, 0x2e

    invoke-static {v10, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1927
    invoke-static {v10, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1929
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v24

    .line 1931
    .end local v33    # "offset":I
    .local v24, "offset":I
    const/16 v29, 0x226

    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    move/from16 v30, v1

    .end local v1    # "rsfsOffset":I
    .local v30, "rsfsOffset":I
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    move/from16 v1, v20

    move/from16 v20, v21

    move/from16 v21, v34

    .end local v34    # "dateTimeOffset":I
    .local v1, "reliableMessageOffset":I
    .local v20, "deviceNameOffset":I
    .local v21, "dateTimeOffset":I
    move-object/from16 v0, p0

    move/from16 v32, v30

    move/from16 v30, v16

    move/from16 v16, v1

    move/from16 v40, v28

    move/from16 v28, v23

    move/from16 v23, v40

    .end local v1    # "reliableMessageOffset":I
    .local v16, "reliableMessageOffset":I
    .local v23, "spamDateOffset":I
    .local v28, "imdnNotiVectorOffset":I
    .local v30, "imdnParamsOffset":I
    .restart local v32    # "rsfsOffset":I
    move/from16 v1, v29

    move/from16 v33, v2

    move/from16 v29, v36

    .end local v2    # "ftPayloadOffset":I
    .end local v36    # "imdnIdOffset":I
    .local v29, "imdnIdOffset":I
    .local v33, "ftPayloadOffset":I
    move-object v2, v10

    move/from16 v34, v3

    move/from16 v40, v29

    move/from16 v29, v26

    move/from16 v26, v40

    .end local v3    # "reportMsgHdrOffset":I
    .local v26, "imdnIdOffset":I
    .local v29, "receiversOffset":I
    .local v34, "reportMsgHdrOffset":I
    move/from16 v3, v24

    move/from16 v37, v4

    move/from16 v36, v39

    move/from16 v40, v28

    move/from16 v28, v21

    move/from16 v21, v22

    move/from16 v22, v40

    .end local v4    # "iconAttrOffset":I
    .end local v39    # "confUriOffset":I
    .local v21, "fileFingerprintOffset":I
    .local v22, "imdnNotiVectorOffset":I
    .local v28, "dateTimeOffset":I
    .local v36, "confUriOffset":I
    .local v37, "iconAttrOffset":I
    move-object/from16 v4, v31

    move/from16 v31, v35

    move/from16 v35, v5

    .end local v5    # "imFileAttrOffset":I
    .local v31, "fileNameOffset":I
    .local v35, "imFileAttrOffset":I
    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 1932
    return-void
.end method

.method private handleStartImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;)V
    .locals 40
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;

    .line 638
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartImSessionRequest: params = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v0, ""

    .line 640
    .local v0, "fwSessionId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 641
    .local v1, "isError":Z
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSynchronousCallback:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 642
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSynchronousCallback:Landroid/os/Message;

    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    goto :goto_0

    .line 644
    :cond_0
    const/4 v1, 0x1

    move-object v8, v0

    .line 647
    .end local v0    # "fwSessionId":Ljava/lang/String;
    .local v8, "fwSessionId":Ljava/lang/String;
    :goto_0
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v9

    .line 648
    .local v9, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v9, :cond_1

    .line 649
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleStartImSessionRequest(): UserAgent not found."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v1, 0x1

    .line 654
    :cond_1
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mReceivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 655
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleStartImSessionRequest(): receiver.size() = 0 !"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v1, 0x1

    move v10, v1

    goto :goto_1

    .line 657
    :cond_2
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mReceivers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 658
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleStartImSessionRequest(): null receiver!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v1, 0x1

    move v10, v1

    goto :goto_1

    .line 657
    :cond_3
    move v10, v1

    .line 662
    .end local v1    # "isError":Z
    .local v10, "isError":Z
    :goto_1
    if-eqz v10, :cond_7

    .line 663
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSynchronousCallback:Landroid/os/Message;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 664
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSynchronousCallback:Landroid/os/Message;

    invoke-virtual {v6, v0, v8}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 665
    iput-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSynchronousCallback:Landroid/os/Message;

    .line 667
    :cond_4
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_5

    .line 668
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mCallback:Landroid/os/Message;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    invoke-direct {v2, v3, v1, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;Ljava/lang/Object;)V

    invoke-virtual {v6, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 670
    iput-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mCallback:Landroid/os/Message;

    .line 672
    :cond_5
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSendMessageParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

    if-eqz v0, :cond_6

    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSendMessageParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_6

    .line 673
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSendMessageParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    invoke-direct {v2, v8, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-virtual {v6, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 675
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSendMessageParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    .line 677
    :cond_6
    return-void

    .line 682
    :cond_7
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    iget-object v12, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mChatId:Ljava/lang/String;

    iget-object v13, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mCallback:Landroid/os/Message;

    iget-object v14, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSynchronousCallback:Landroid/os/Message;

    iget-object v15, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mDedicatedBearerCallback:Landroid/os/Message;

    const/16 v16, 0x0

    .line 683
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v17

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;-><init>(Ljava/lang/String;Landroid/os/Message;Landroid/os/Message;Landroid/os/Message;ZI)V

    .line 684
    .local v11, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v0, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    invoke-direct {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v12, v0

    .line 689
    .local v12, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mReceivers:Ljava/util/List;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mReceivers:Ljava/util/List;

    .line 690
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v6, v12, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getImsUriOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object v0

    .line 689
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->createReceiversVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v13

    .line 691
    .local v13, "receiversVectorOffset":I
    const-string v0, ""

    if-eqz v8, :cond_8

    move-object v1, v8

    goto :goto_2

    :cond_8
    move-object v1, v0

    :goto_2
    invoke-virtual {v12, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 692
    .local v14, "fwSessionIdOffset":I
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSdpContentType:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSdpContentType:Ljava/lang/String;

    goto :goto_3

    :cond_9
    move-object v1, v0

    :goto_3
    invoke-virtual {v12, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 693
    .local v15, "contentTypeOffset":I
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mUserAlias:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mUserAlias:Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object v1, v0

    :goto_4
    invoke-virtual {v12, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 694
    .local v5, "userAliasOffset":I
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mContributionId:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mContributionId:Ljava/lang/String;

    goto :goto_5

    :cond_b
    move-object v1, v0

    :goto_5
    invoke-virtual {v12, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 695
    .local v4, "contributionIdOffset":I
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mConversationId:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mConversationId:Ljava/lang/String;

    goto :goto_6

    :cond_c
    move-object v1, v0

    :goto_6
    invoke-virtual {v12, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 696
    .local v3, "conversationIdOffset":I
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mInReplyToContributionId:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mInReplyToContributionId:Ljava/lang/String;

    goto :goto_7

    :cond_d
    move-object v1, v0

    :goto_7
    invoke-virtual {v12, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 697
    .local v1, "inReplyToContributionIdOffset":I
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mPrevContributionId:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mPrevContributionId:Ljava/lang/String;

    goto :goto_8

    :cond_e
    move-object v2, v0

    :goto_8
    invoke-virtual {v12, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 698
    .local v2, "sessionReplacesOffset":I
    move-object/from16 v17, v0

    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mServiceId:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mServiceId:Ljava/lang/String;

    goto :goto_9

    :cond_f
    move-object/from16 v0, v17

    :goto_9
    invoke-virtual {v12, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 699
    .local v0, "serviceIdOffset":I
    move-object/from16 v18, v8

    .end local v8    # "fwSessionId":Ljava/lang/String;
    .local v18, "fwSessionId":Ljava/lang/String;
    iget-object v8, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    if-eqz v8, :cond_10

    iget-object v8, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_a

    :cond_10
    move-object/from16 v8, v17

    :goto_a
    invoke-virtual {v12, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 701
    .local v8, "chatModeOffset":I
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->startBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 702
    invoke-static {v12, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 703
    move/from16 v19, v10

    .end local v10    # "isError":Z
    .local v19, "isError":Z
    iget-boolean v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsConf:Z

    invoke-static {v12, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addIsConference(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 704
    iget-boolean v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsChatbotParticipant:Z

    invoke-static {v12, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addIsChatbotParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 706
    invoke-static {v12, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addSdpContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 708
    invoke-static {v12, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addReceivers(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 711
    iget-object v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mUserAlias:Ljava/lang/String;

    if-eqz v10, :cond_11

    .line 712
    invoke-static {v12, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 714
    :cond_11
    iget-object v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mContributionId:Ljava/lang/String;

    if-eqz v10, :cond_12

    .line 715
    invoke-static {v12, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 717
    :cond_12
    iget-object v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mConversationId:Ljava/lang/String;

    if-eqz v10, :cond_13

    .line 718
    invoke-static {v12, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addConversationId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 720
    :cond_13
    iget-object v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mInReplyToContributionId:Ljava/lang/String;

    if-eqz v10, :cond_14

    .line 721
    invoke-static {v12, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addInReplyToContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 723
    :cond_14
    iget-object v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mPrevContributionId:Ljava/lang/String;

    if-eqz v10, :cond_15

    .line 724
    invoke-static {v12, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addSessionReplaces(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 727
    :cond_15
    iget-object v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mServiceId:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_16

    .line 728
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addServiceId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 731
    :cond_16
    iget-object v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    if-eqz v10, :cond_17

    .line 732
    invoke-static {v12, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addChatMode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 735
    :cond_17
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->endBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v10

    .line 737
    .local v10, "baseSessionDataOffset":I
    const/16 v20, -0x1

    .local v20, "acceptTypesOffset":I
    const/16 v21, -0x1

    .line 738
    .local v21, "acceptWrappedTypesOffset":I
    move/from16 v22, v0

    .end local v0    # "serviceIdOffset":I
    .local v22, "serviceIdOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptTypes:Ljava/util/List;

    if-eqz v0, :cond_18

    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 739
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptTypes:Ljava/util/List;

    move/from16 v23, v1

    .end local v1    # "inReplyToContributionIdOffset":I
    .local v23, "inReplyToContributionIdOffset":I
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v6, v12, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object v0

    .line 740
    .local v0, "acceptTypesListOffset":[I
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->createAcceptTypesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v20

    move/from16 v1, v20

    goto :goto_b

    .line 738
    .end local v0    # "acceptTypesListOffset":[I
    .end local v23    # "inReplyToContributionIdOffset":I
    .restart local v1    # "inReplyToContributionIdOffset":I
    :cond_18
    move/from16 v23, v1

    .line 742
    .end local v1    # "inReplyToContributionIdOffset":I
    .restart local v23    # "inReplyToContributionIdOffset":I
    move/from16 v1, v20

    .end local v20    # "acceptTypesOffset":I
    .local v1, "acceptTypesOffset":I
    :goto_b
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptWrappedTypes:Ljava/util/List;

    if-eqz v0, :cond_19

    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptWrappedTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 743
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptWrappedTypes:Ljava/util/List;

    move/from16 v20, v2

    .end local v2    # "sessionReplacesOffset":I
    .local v20, "sessionReplacesOffset":I
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptWrappedTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v6, v12, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object v0

    .line 744
    .local v0, "acceptWrappedTypesListOffset":[I
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->createAcceptWrappedTypesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v21

    move/from16 v2, v21

    goto :goto_c

    .line 742
    .end local v0    # "acceptWrappedTypesListOffset":[I
    .end local v20    # "sessionReplacesOffset":I
    .restart local v2    # "sessionReplacesOffset":I
    :cond_19
    move/from16 v20, v2

    .line 747
    .end local v2    # "sessionReplacesOffset":I
    .restart local v20    # "sessionReplacesOffset":I
    move/from16 v2, v21

    .end local v21    # "acceptWrappedTypesOffset":I
    .local v2, "acceptWrappedTypesOffset":I
    :goto_c
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSubject:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSubject:Ljava/lang/String;

    goto :goto_d

    :cond_1a
    move-object/from16 v0, v17

    :goto_d
    invoke-virtual {v12, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 749
    .local v0, "subjectOffset":I
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->startImSessionParam(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 750
    move/from16 v21, v3

    .end local v3    # "conversationIdOffset":I
    .local v21, "conversationIdOffset":I
    iget-boolean v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsRejoin:Z

    invoke-static {v12, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addIsRejoin(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 751
    iget-boolean v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsClosedGroupChat:Z

    invoke-static {v12, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addIsClosedGroupchat(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 752
    iget-boolean v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsInviteForBye:Z

    invoke-static {v12, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addIsInviteforbye(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 753
    iget-boolean v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsGeolocationPush:Z

    invoke-static {v12, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addIsGeolocationPush(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 756
    iget-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_1b

    .line 757
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addSubject(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 760
    :cond_1b
    iget-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptTypes:Ljava/util/List;

    if-eqz v3, :cond_1c

    iget-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptTypes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 761
    invoke-static {v12, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addAcceptTypes(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 764
    :cond_1c
    iget-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mServiceId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    move/from16 v24, v0

    .end local v0    # "subjectOffset":I
    .local v24, "subjectOffset":I
    const/4 v0, 0x1

    if-nez v3, :cond_1d

    .line 765
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addIsExtension(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 768
    :cond_1d
    iget-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptWrappedTypes:Ljava/util/List;

    if-eqz v3, :cond_1e

    iget-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptWrappedTypes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 769
    invoke-static {v12, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addAcceptWrappedTypes(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 772
    :cond_1e
    invoke-static {v12, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 773
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->endImSessionParam(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 774
    .local v3, "imSessionParamOffset":I
    const/16 v25, -0x1

    .line 776
    .local v25, "imMessageParamOffset":I
    move/from16 v26, v1

    .end local v1    # "acceptTypesOffset":I
    .local v26, "acceptTypesOffset":I
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSendMessageParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

    .line 778
    .local v1, "msgParams":Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;
    if-eqz v1, :cond_2b

    .line 779
    const-string v0, ";charset=UTF-8"

    .line 780
    .local v0, "charSet":Ljava/lang/String;
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v29, v28

    .line 781
    .local v29, "cpimNamespacesOffsetIntegers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move/from16 v28, v2

    .end local v2    # "acceptWrappedTypesOffset":I
    .local v28, "acceptWrappedTypesOffset":I
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    move/from16 v30, v4

    .end local v4    # "contributionIdOffset":I
    .local v30, "contributionIdOffset":I
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 782
    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "charset="

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    goto :goto_e

    .line 781
    .end local v30    # "contributionIdOffset":I
    .restart local v4    # "contributionIdOffset":I
    :cond_1f
    move/from16 v30, v4

    .line 785
    .end local v4    # "contributionIdOffset":I
    .restart local v30    # "contributionIdOffset":I
    :cond_20
    :goto_e
    const/4 v2, -0x1

    .line 786
    .local v2, "cpimNamespacesVectorOffset":I
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mMaapTrafficType:Ljava/lang/String;

    if-eqz v4, :cond_21

    .line 787
    const-string v4, "maap"

    invoke-virtual {v12, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 788
    .local v4, "cpimNamespaceNameOffset":I
    move-object/from16 v31, v0

    .end local v0    # "charSet":Ljava/lang/String;
    .local v31, "charSet":Ljava/lang/String;
    const-string v0, "<http://www.gsma.com/rcs/maap/>"

    invoke-virtual {v12, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 789
    .local v0, "cpimNamespaceUriOffset":I
    move/from16 v32, v2

    .end local v2    # "cpimNamespacesVectorOffset":I
    .local v32, "cpimNamespacesVectorOffset":I
    const-string v2, "Traffic-Type"

    invoke-virtual {v12, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 790
    .local v2, "cpimNamespaceKeyOffset":I
    move/from16 v33, v5

    .end local v5    # "userAliasOffset":I
    .local v33, "userAliasOffset":I
    iget-object v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mMaapTrafficType:Ljava/lang/String;

    invoke-virtual {v12, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 792
    .local v5, "cpimNamespaceValueOffset":I
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 793
    invoke-static {v12, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 794
    invoke-static {v12, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 795
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v34

    .line 796
    .local v34, "headersPairOffset":I
    move/from16 v35, v2

    move/from16 v36, v5

    const/4 v2, 0x1

    .end local v2    # "cpimNamespaceKeyOffset":I
    .end local v5    # "cpimNamespaceValueOffset":I
    .local v35, "cpimNamespaceKeyOffset":I
    .local v36, "cpimNamespaceValueOffset":I
    new-array v5, v2, [I

    const/4 v2, 0x0

    aput v34, v5, v2

    move-object v2, v5

    .line 797
    .local v2, "headersOffset":[I
    invoke-static {v12, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->createHeadersVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v5

    .line 799
    .local v5, "headersVectorOffset":I
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->startCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 800
    invoke-static {v12, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 801
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 802
    invoke-static {v12, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 803
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->endCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v37

    move/from16 v38, v0

    .end local v0    # "cpimNamespaceUriOffset":I
    .local v38, "cpimNamespaceUriOffset":I
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v37, v2

    move-object/from16 v2, v29

    .end local v29    # "cpimNamespacesOffsetIntegers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v2, "cpimNamespacesOffsetIntegers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v37, "headersOffset":[I
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 786
    .end local v4    # "cpimNamespaceNameOffset":I
    .end local v31    # "charSet":Ljava/lang/String;
    .end local v32    # "cpimNamespacesVectorOffset":I
    .end local v33    # "userAliasOffset":I
    .end local v34    # "headersPairOffset":I
    .end local v35    # "cpimNamespaceKeyOffset":I
    .end local v36    # "cpimNamespaceValueOffset":I
    .end local v37    # "headersOffset":[I
    .end local v38    # "cpimNamespaceUriOffset":I
    .local v0, "charSet":Ljava/lang/String;
    .local v2, "cpimNamespacesVectorOffset":I
    .local v5, "userAliasOffset":I
    .restart local v29    # "cpimNamespacesOffsetIntegers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_21
    move-object/from16 v31, v0

    move/from16 v32, v2

    move/from16 v33, v5

    move-object/from16 v2, v29

    .line 805
    .end local v0    # "charSet":Ljava/lang/String;
    .end local v5    # "userAliasOffset":I
    .end local v29    # "cpimNamespacesOffsetIntegers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v2, "cpimNamespacesOffsetIntegers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v31    # "charSet":Ljava/lang/String;
    .restart local v32    # "cpimNamespacesVectorOffset":I
    .restart local v33    # "userAliasOffset":I
    :goto_f
    iget-object v0, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceId:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 806
    const-string v0, "Korea-RCS"

    invoke-virtual {v12, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 807
    .local v0, "cpimNamespaceNameOffset":I
    const-string v4, "<http://www.tta.or.kr>"

    invoke-virtual {v12, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 808
    .local v4, "cpimNamespaceUriOffset":I
    const-string v5, "Reference-ID"

    invoke-virtual {v12, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 809
    .local v5, "cpimNamespaceKeyOffset":I
    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceId:Ljava/lang/String;

    invoke-virtual {v12, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    .line 810
    .local v7, "cpimNamespaceValueOffset":I
    move/from16 v29, v8

    .end local v8    # "chatModeOffset":I
    .local v29, "chatModeOffset":I
    const-string v8, "Reference-Type"

    invoke-virtual {v12, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 811
    .local v8, "cpimNamespaceKeyOffset2":I
    move/from16 v34, v10

    .end local v10    # "baseSessionDataOffset":I
    .local v34, "baseSessionDataOffset":I
    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceType:Ljava/lang/String;

    invoke-direct {v6, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 813
    .local v10, "cpimNamespaceValueOffset2":I
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 814
    invoke-static {v12, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 815
    invoke-static {v12, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 816
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v35

    .line 817
    .local v35, "headersPairOffset":I
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 818
    invoke-static {v12, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 819
    invoke-static {v12, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 820
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v36

    .line 821
    .local v36, "headersPairOffset2":I
    move/from16 v37, v5

    .end local v5    # "cpimNamespaceKeyOffset":I
    .local v37, "cpimNamespaceKeyOffset":I
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/16 v16, 0x0

    aput v35, v5, v16

    const/16 v16, 0x1

    aput v36, v5, v16

    .line 822
    .local v5, "headersOffset":[I
    move/from16 v16, v7

    .end local v7    # "cpimNamespaceValueOffset":I
    .local v16, "cpimNamespaceValueOffset":I
    invoke-static {v12, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->createHeadersVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v7

    .line 824
    .local v7, "headersVectorOffset":I
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->startCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 825
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 826
    invoke-static {v12, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 827
    invoke-static {v12, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 828
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->endCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v38

    move/from16 v39, v0

    .end local v0    # "cpimNamespaceNameOffset":I
    .local v39, "cpimNamespaceNameOffset":I
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 805
    .end local v4    # "cpimNamespaceUriOffset":I
    .end local v5    # "headersOffset":[I
    .end local v7    # "headersVectorOffset":I
    .end local v16    # "cpimNamespaceValueOffset":I
    .end local v29    # "chatModeOffset":I
    .end local v34    # "baseSessionDataOffset":I
    .end local v35    # "headersPairOffset":I
    .end local v36    # "headersPairOffset2":I
    .end local v37    # "cpimNamespaceKeyOffset":I
    .end local v39    # "cpimNamespaceNameOffset":I
    .local v8, "chatModeOffset":I
    .local v10, "baseSessionDataOffset":I
    :cond_22
    move/from16 v29, v8

    move/from16 v34, v10

    .line 830
    .end local v8    # "chatModeOffset":I
    .end local v10    # "baseSessionDataOffset":I
    .restart local v29    # "chatModeOffset":I
    .restart local v34    # "baseSessionDataOffset":I
    :goto_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 831
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 832
    .local v0, "cpimNamespacesOffset":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    array-length v5, v0

    if-ge v4, v5, :cond_23

    .line 833
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v4

    .line 832
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 835
    .end local v4    # "i":I
    :cond_23
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->createCpimNamespacesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v4

    .end local v32    # "cpimNamespacesVectorOffset":I
    .local v4, "cpimNamespacesVectorOffset":I
    goto :goto_12

    .line 830
    .end local v0    # "cpimNamespacesOffset":[I
    .end local v4    # "cpimNamespacesVectorOffset":I
    .restart local v32    # "cpimNamespacesVectorOffset":I
    :cond_24
    move/from16 v4, v32

    .line 838
    .end local v32    # "cpimNamespacesVectorOffset":I
    .restart local v4    # "cpimNamespacesVectorOffset":I
    :goto_12
    iget-object v0, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    iput-object v0, v11, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    .line 839
    iget-object v0, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mDispositionNotification:Ljava/util/Set;

    .line 840
    invoke-static {v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFwImdnNoti(Ljava/util/Set;)[I

    move-result-object v0

    .line 839
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->createNotiVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v0

    .line 841
    .local v0, "notiVectorOffset":I
    iget-object v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnMessageId:Ljava/lang/String;

    if-eqz v5, :cond_25

    iget-object v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnMessageId:Ljava/lang/String;

    goto :goto_13

    :cond_25
    move-object/from16 v5, v17

    :goto_13
    invoke-virtual {v12, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 842
    .local v5, "msgIdOffset":I
    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnTime:Ljava/util/Date;

    if-eqz v7, :cond_26

    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnTime:Ljava/util/Date;

    invoke-static {v7}, Lcom/sec/internal/helper/Iso8601;->formatMillis(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    goto :goto_14

    :cond_26
    move-object/from16 v7, v17

    :goto_14
    invoke-virtual {v12, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    .line 843
    .local v7, "dateTimeOffset":I
    iget-object v8, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mBody:Ljava/lang/String;

    if-eqz v8, :cond_27

    iget-object v8, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mBody:Ljava/lang/String;

    goto :goto_15

    :cond_27
    move-object/from16 v8, v17

    :goto_15
    invoke-virtual {v12, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 844
    .local v8, "bodyOffset":I
    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    if-eqz v10, :cond_28

    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    goto :goto_16

    :cond_28
    move-object/from16 v10, v17

    :goto_16
    invoke-virtual {v12, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 845
    .local v10, "contentTypeStrOffset":I
    move-object/from16 v16, v11

    .end local v11    # "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    .local v16, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    iget-object v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mXmsMessage:Ljava/lang/String;

    if-nez v11, :cond_29

    move-object/from16 v11, v17

    goto :goto_17

    :cond_29
    iget-object v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mXmsMessage:Ljava/lang/String;

    :goto_17
    invoke-virtual {v12, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 847
    .local v11, "xmsMsgOffset":I
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->startImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 848
    invoke-static {v12, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addMessageId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 849
    invoke-static {v12, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addDatetime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 851
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addNoti(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 852
    move/from16 v17, v0

    .end local v0    # "notiVectorOffset":I
    .local v17, "notiVectorOffset":I
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->endImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 854
    .local v0, "imdnParamsOffset":I
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->startImMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 855
    invoke-static {v12, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addBody(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 856
    invoke-static {v12, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 857
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addImdn(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 858
    invoke-static {v12, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addXmsMessage(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 859
    move/from16 v32, v0

    .end local v0    # "imdnParamsOffset":I
    .local v32, "imdnParamsOffset":I
    iget-boolean v0, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mExtraFt:Z

    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addExtraFt(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 861
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2a

    .line 862
    invoke-static {v12, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addCpimNamespaces(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 864
    :cond_2a
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->endImMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v25

    move/from16 v7, v25

    goto :goto_18

    .line 778
    .end local v7    # "dateTimeOffset":I
    .end local v16    # "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    .end local v17    # "notiVectorOffset":I
    .end local v28    # "acceptWrappedTypesOffset":I
    .end local v29    # "chatModeOffset":I
    .end local v30    # "contributionIdOffset":I
    .end local v31    # "charSet":Ljava/lang/String;
    .end local v32    # "imdnParamsOffset":I
    .end local v33    # "userAliasOffset":I
    .end local v34    # "baseSessionDataOffset":I
    .local v2, "acceptWrappedTypesOffset":I
    .local v4, "contributionIdOffset":I
    .local v5, "userAliasOffset":I
    .local v8, "chatModeOffset":I
    .local v10, "baseSessionDataOffset":I
    .local v11, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    :cond_2b
    move/from16 v28, v2

    move/from16 v30, v4

    move/from16 v33, v5

    move/from16 v29, v8

    move/from16 v34, v10

    move-object/from16 v16, v11

    .end local v2    # "acceptWrappedTypesOffset":I
    .end local v4    # "contributionIdOffset":I
    .end local v5    # "userAliasOffset":I
    .end local v8    # "chatModeOffset":I
    .end local v10    # "baseSessionDataOffset":I
    .end local v11    # "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    .restart local v16    # "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    .restart local v28    # "acceptWrappedTypesOffset":I
    .restart local v29    # "chatModeOffset":I
    .restart local v30    # "contributionIdOffset":I
    .restart local v33    # "userAliasOffset":I
    .restart local v34    # "baseSessionDataOffset":I
    move/from16 v7, v25

    .line 868
    .end local v25    # "imMessageParamOffset":I
    .local v7, "imMessageParamOffset":I
    :goto_18
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartImSession;->startRequestStartImSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 869
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v12, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartImSession;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 870
    invoke-static {v12, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartImSession;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 872
    if-eqz v1, :cond_2c

    .line 873
    invoke-static {v12, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartImSession;->addMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 876
    :cond_2c
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartImSession;->endRequestStartImSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 878
    .local v0, "offset":I
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 879
    const/16 v2, 0x1f5

    invoke-static {v12, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 880
    const/16 v2, 0x27

    invoke-static {v12, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 881
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 882
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v8

    .line 884
    .end local v0    # "offset":I
    .local v8, "offset":I
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleStartImSessionRequest(): Armaan: sending to stack!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const/16 v2, 0x1f5

    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    move/from16 v10, v22

    move/from16 v11, v24

    .end local v22    # "serviceIdOffset":I
    .end local v24    # "subjectOffset":I
    .local v10, "serviceIdOffset":I
    .local v11, "subjectOffset":I
    move-object/from16 v0, p0

    move/from16 v17, v23

    move/from16 v22, v26

    move-object/from16 v23, v1

    .end local v1    # "msgParams":Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;
    .end local v26    # "acceptTypesOffset":I
    .local v17, "inReplyToContributionIdOffset":I
    .local v22, "acceptTypesOffset":I
    .local v23, "msgParams":Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;
    move v1, v2

    move/from16 v24, v28

    .end local v28    # "acceptWrappedTypesOffset":I
    .local v24, "acceptWrappedTypesOffset":I
    move-object v2, v12

    move/from16 v25, v3

    .end local v3    # "imSessionParamOffset":I
    .local v25, "imSessionParamOffset":I
    move v3, v8

    move/from16 v26, v30

    .end local v30    # "contributionIdOffset":I
    .local v26, "contributionIdOffset":I
    move/from16 v27, v33

    .end local v33    # "userAliasOffset":I
    .local v27, "userAliasOffset":I
    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 887
    return-void
.end method

.method private onSubscribeGroupChatInfo(Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;)V
    .locals 11
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;

    .line 1036
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSubscribeGroupChatInfo() uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;->getOwnImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 1039
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v0, :cond_0

    .line 1040
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onSubscribeGroupChatList(): UserAgent not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    return-void

    .line 1044
    :cond_0
    new-instance v1, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v7, v1

    .line 1045
    .local v7, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubscribeGroupChatInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 1046
    .local v8, "subscriptionIdOffset":I
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 1048
    .local v9, "uriOffset":I
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupInfoSubscribe;->startRequestGroupInfoSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1049
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v7, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupInfoSubscribe;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1050
    invoke-static {v7, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupInfoSubscribe;->addSubscriptionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1051
    invoke-static {v7, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupInfoSubscribe;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1052
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupInfoSubscribe;->endRequestGroupInfoSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1054
    .local v1, "offset":I
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1055
    const/16 v2, 0x231

    invoke-static {v7, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1056
    const/16 v2, 0x38

    invoke-static {v7, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1057
    invoke-static {v7, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1058
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v10

    .line 1060
    .end local v1    # "offset":I
    .local v10, "offset":I
    const/16 v2, 0x231

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v3, 0x19

    const/4 v4, 0x0

    .line 1061
    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1060
    move-object v1, p0

    move-object v3, v7

    move v4, v10

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 1062
    return-void
.end method

.method private onSubscribeGroupChatList(Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;)V
    .locals 10
    .param p1, "settings"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;

    .line 1007
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSubscribeGroupChatList()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;->getOwnImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 1010
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v0, :cond_0

    .line 1011
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onSubscribeGroupChatList(): UserAgent not found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    return-void

    .line 1015
    :cond_0
    new-instance v1, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v7, v1

    .line 1016
    .local v7, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const-string v1, "SubscribeGroupChatList"

    invoke-virtual {v7, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 1018
    .local v8, "subscriptionIdOffset":I
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupListSubscribe;->startRequestGroupListSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1019
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v7, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupListSubscribe;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1020
    invoke-static {v7, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupListSubscribe;->addSubscriptionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1021
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;->getVersion()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v7, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupListSubscribe;->addVersion(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1022
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;->getIncreaseMode()Z

    move-result v1

    invoke-static {v7, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupListSubscribe;->addIsIncrease(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1023
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupListSubscribe;->endRequestGroupListSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1025
    .local v1, "offset":I
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1026
    const/16 v2, 0x230

    invoke-static {v7, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1027
    const/16 v2, 0x37

    invoke-static {v7, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1028
    invoke-static {v7, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1029
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v9

    .line 1031
    .end local v1    # "offset":I
    .local v9, "offset":I
    const/16 v2, 0x230

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v3, 0x18

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move-object v1, p0

    move-object v3, v7

    move v4, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 1033
    return-void
.end method

.method private parseStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 2300
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private sendImCancelRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;)V
    .locals 11
    .param p1, "session"    # Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 1065
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStopParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;

    .line 1066
    .local v0, "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;
    if-nez v0, :cond_0

    .line 1067
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendImCancelRequestToStack(): null stop params!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    return-void

    .line 1071
    :cond_0
    iget v1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    .line 1073
    .local v1, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v1, :cond_2

    .line 1074
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendImCancelRequestToStack: UserAgent not found. UaHandle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 1076
    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mCallback:Landroid/os/Message;

    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;

    iget-object v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mRawHandle:Ljava/lang/Object;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1077
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mCallback:Landroid/os/Message;

    .line 1079
    :cond_1
    return-void

    .line 1082
    :cond_2
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v8, v2

    .line 1083
    .local v8, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v2, -0x1

    .line 1084
    .local v2, "textOffset":I
    iget-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mSessionStopReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    if-eqz v3, :cond_3

    .line 1085
    iget-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mSessionStopReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->getReasonText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    move v9, v2

    goto :goto_0

    .line 1084
    :cond_3
    move v9, v2

    .line 1088
    .end local v2    # "textOffset":I
    .local v9, "textOffset":I
    :goto_0
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->startReasonHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1089
    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mSessionStopReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    if-eqz v2, :cond_4

    .line 1090
    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mSessionStopReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->getCauseCode()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v8, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->addCode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1091
    invoke-static {v8, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1093
    :cond_4
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->endReasonHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1095
    .local v2, "offset":I
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCloseImSession;->startRequestCloseImSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1096
    iget-object v3, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v8, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCloseImSession;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1097
    invoke-static {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCloseImSession;->addReasonHdr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1098
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCloseImSession;->endRequestCloseImSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1100
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1101
    const/16 v3, 0x1f7

    invoke-static {v8, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1102
    const/16 v3, 0x29

    invoke-static {v8, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1103
    invoke-static {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1104
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v10

    .line 1106
    .end local v2    # "offset":I
    .local v10, "offset":I
    const/16 v3, 0x1f7

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/4 v4, 0x3

    iget-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mCallback:Landroid/os/Message;

    .line 1107
    invoke-virtual {v2, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1106
    move-object v2, p0

    move-object v4, v8

    move v5, v10

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 1108
    return-void
.end method

.method private sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "request"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p3, "offset"    # I
    .param p4, "callback"    # Landroid/os/Message;

    .line 2252
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v6

    .line 2253
    .local v6, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v6, :cond_0

    .line 2254
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendRequestToStack(): UserAgent not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    return-void

    .line 2257
    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 2258
    return-void
.end method

.method private sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "request"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p3, "offset"    # I
    .param p4, "callback"    # Landroid/os/Message;
    .param p5, "ua"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 2261
    if-nez p5, :cond_0

    .line 2262
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendRequestToStack(): UserAgent not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    return-void

    .line 2265
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;-><init>(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V

    .line 2266
    return-void
.end method


# virtual methods
.method public acceptFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;

    .line 290
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 291
    return-void
.end method

.method public acceptImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;

    .line 270
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 271
    return-void
.end method

.method public addImParticipants(Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;

    .line 365
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 367
    return-void
.end method

.method public cancelFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 300
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 301
    return-void
.end method

.method public changeGroupAlias(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;

    .line 340
    const/16 v0, 0x17

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 341
    return-void
.end method

.method public changeGroupChatIcon(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;

    .line 335
    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 336
    return-void
.end method

.method public changeGroupChatLeader(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;

    .line 325
    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 326
    return-void
.end method

.method public changeGroupChatSubject(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;

    .line 330
    const/16 v0, 0x16

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 331
    return-void
.end method

.method public extendToGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;

    .line 371
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 373
    return-void
.end method

.method protected getImsiByUserAgent(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/lang/String;
    .locals 2
    .param p1, "ua"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 2429
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 2430
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 2

    .line 2424
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 2425
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    const-string v1, "im"

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v1
.end method

.method protected getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 2
    .param p1, "uaHandle"    # I

    .line 2419
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 2420
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v1
.end method

.method protected getUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 2
    .param p1, "ownImsi"    # Ljava/lang/String;

    .line 2409
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 2410
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    const-string v1, "im"

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v1
.end method

.method protected getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 2
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 2414
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 2415
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v1
.end method

.method public getUserAgent(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 2
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "ownImsi"    # Ljava/lang/String;

    .line 2404
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 2405
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 517
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 633
    :pswitch_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: Undefined message."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 623
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleRequestChatbotAnonymize(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;)V

    .line 624
    goto/16 :goto_0

    .line 628
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleReportChatbotAsSpam(Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;)V

    .line 629
    goto/16 :goto_0

    .line 568
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleChangeGroupChatIconRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;)V

    .line 569
    goto/16 :goto_0

    .line 619
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleSetMoreInfoToSipUARequest(Ljava/lang/String;I)V

    .line 620
    goto/16 :goto_0

    .line 543
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleSendMessageRevokeRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;)V

    .line 544
    goto/16 :goto_0

    .line 615
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->onSubscribeGroupChatInfo(Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;)V

    .line 616
    goto/16 :goto_0

    .line 612
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->onSubscribeGroupChatList(Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;)V

    .line 613
    goto/16 :goto_0

    .line 572
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleChangeGroupChatAliasRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;)V

    .line 573
    goto/16 :goto_0

    .line 564
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleChangeGroupChatSubjectRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;)V

    .line 565
    goto/16 :goto_0

    .line 551
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleRemoveParticipantsRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;)V

    .line 552
    goto/16 :goto_0

    .line 600
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleRejectImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V

    .line 601
    goto/16 :goto_0

    .line 560
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleChangeGroupChatLeaderRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;)V

    .line 561
    goto/16 :goto_0

    .line 592
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleStartFtMediaRequest(I)V

    .line 593
    goto/16 :goto_0

    .line 596
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleRejectImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V

    .line 597
    goto/16 :goto_0

    .line 609
    :pswitch_f
    goto/16 :goto_0

    .line 604
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleSendFtDispositionNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    .line 605
    goto :goto_0

    .line 556
    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleStartImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;)V

    .line 557
    goto :goto_0

    .line 547
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleAddParticipantsRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;)V

    .line 548
    goto :goto_0

    .line 539
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleSendDispositionNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    .line 540
    goto :goto_0

    .line 535
    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleSendComposingNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;)V

    .line 536
    goto :goto_0

    .line 576
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleStartFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;)V

    .line 577
    goto :goto_0

    .line 588
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleRejectFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V

    .line 589
    goto :goto_0

    .line 584
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleCancelFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V

    .line 585
    goto :goto_0

    .line 580
    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleAcceptFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;)V

    .line 581
    goto :goto_0

    .line 519
    :pswitch_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleSendMessageRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;)V

    .line 520
    goto :goto_0

    .line 531
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleCloseImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;)V

    .line 532
    goto :goto_0

    .line 527
    :pswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleAcceptImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;)V

    .line 528
    goto :goto_0

    .line 523
    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleStartImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;)V

    .line 524
    nop

    .line 635
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected handleRejectFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .locals 14
    .param p1, "rejectParams"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 2095
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRejectFtSessionRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 2098
    .local v0, "sessionHandle":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    .line 2099
    .local v1, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2100
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRejectFtSessionRequest: no session in map, return reject failure id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 2102
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v4, v5, v6, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2104
    :cond_0
    return-void

    .line 2107
    :cond_1
    iput-object p1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 2109
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    .line 2111
    .local v3, "reason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;
    :goto_0
    iget v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mUaHandle:I

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v4

    .line 2112
    .local v4, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v4, :cond_4

    .line 2113
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v6, "handleRejectFtSessionRequest(): User Agent not found!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v5, :cond_3

    .line 2115
    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v6, v7, v8, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2116
    iput-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    .line 2118
    :cond_3
    return-void

    .line 2121
    :cond_4
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2122
    .local v2, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getWarningText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 2125
    .local v11, "warningTxtOffset":I
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->startWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2126
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getWarningCode()I

    move-result v5

    invoke-static {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2127
    invoke-static {v2, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2128
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->endWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v12

    .line 2130
    .local v12, "warningHdrOffset":I
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->startRequestCancelFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2131
    iget v5, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mHandle:I

    int-to-long v5, v5

    invoke-static {v2, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2132
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getSipCode()I

    move-result v5

    invoke-static {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addSipCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2133
    invoke-static {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2134
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->endRequestCancelFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 2136
    .local v5, "offset":I
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2137
    const/16 v6, 0x228

    invoke-static {v2, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2138
    const/16 v6, 0x2f

    invoke-static {v2, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2139
    invoke-static {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2140
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v13

    .line 2142
    .end local v5    # "offset":I
    .local v13, "offset":I
    const/16 v6, 0x228

    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/4 v7, 0x7

    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    move-object v5, p0

    move-object v7, v2

    move v8, v13

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 2143
    return-void
.end method

.method protected handleRejectImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V
    .locals 12
    .param p1, "rejectParams"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;

    .line 940
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRejectImSessionRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 943
    .local v0, "sessionHandle":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 944
    .local v1, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 945
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handleRejectImSessionRequest: no session in map, return reject failure"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 947
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mCallback:Landroid/os/Message;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {v4, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 948
    iput-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mCallback:Landroid/os/Message;

    .line 950
    :cond_0
    return-void

    .line 953
    :cond_1
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mCallback:Landroid/os/Message;

    iput-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mRejectCallback:Landroid/os/Message;

    .line 954
    iget v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v3

    .line 955
    .local v3, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v3, :cond_3

    .line 956
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string v5, "handleRejectImSessionRequest: User Agent not found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v4, :cond_2

    .line 958
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mCallback:Landroid/os/Message;

    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {v5, v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 959
    iput-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mCallback:Landroid/os/Message;

    .line 961
    :cond_2
    return-void

    .line 965
    :cond_3
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 966
    .local v2, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->getWarningText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 968
    .local v10, "warningTextOffset":I
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->startWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 969
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->getWarningCode()I

    move-result v4

    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 970
    invoke-static {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 971
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->endWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    .line 974
    .local v4, "offset":I
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectImSession;->startRequestRejectImSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 975
    int-to-long v5, v0

    invoke-static {v2, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectImSession;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 976
    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->getSipCode()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v2, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectImSession;->addSipCode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 977
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectImSession;->addWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 978
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectImSession;->endRequestRejectImSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    .line 980
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 981
    const/16 v5, 0x1fc

    invoke-static {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 982
    const/16 v5, 0x33

    invoke-static {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 983
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 984
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v11

    .line 986
    .end local v4    # "offset":I
    .local v11, "offset":I
    const/16 v5, 0x1fc

    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    move-object v4, p0

    move-object v6, v2

    move v7, v11

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 988
    return-void
.end method

.method public registerForChatbotAnonymizeNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2380
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mChatbotAnonymizeNotifyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2381
    return-void
.end method

.method public registerForChatbotAnonymizeResp(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2370
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mChatbotAnonymizeResponseRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2371
    return-void
.end method

.method public registerForChatbotAsSpamNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2395
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mReportChatbotAsSpamRespRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2396
    return-void
.end method

.method public registerForComposingNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mComposingRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 378
    return-void
.end method

.method public registerForConferenceInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 429
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mConferenceInfoUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 431
    return-void
.end method

.method public registerForGroupChatInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2330
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mGroupChatInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 2331
    return-void
.end method

.method public registerForGroupChatListUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2320
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mGroupChatListRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 2321
    return-void
.end method

.method public registerForImIncomingFileTransfer(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 473
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 474
    return-void
.end method

.method public registerForImIncomingMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 483
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 484
    return-void
.end method

.method public registerForImIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 462
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForImIncomingSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 464
    return-void
.end method

.method public registerForImSessionClosed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 452
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessionClosedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 453
    return-void
.end method

.method public registerForImSessionEstablished(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 442
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 443
    return-void
.end method

.method public registerForImdnFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 418
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 419
    return-void
.end method

.method public registerForImdnNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 388
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->registerForImdnNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 389
    return-void
.end method

.method public registerForImdnResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 403
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->registerForImdnResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 404
    return-void
.end method

.method public registerForMessageFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 398
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mMessageFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 399
    return-void
.end method

.method public registerForMessageRevokeResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2340
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 2341
    return-void
.end method

.method public registerForSendMessageRevokeDone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2350
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSendMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 2351
    return-void
.end method

.method public registerForTransferProgress(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 493
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 494
    return-void
.end method

.method public rejectFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 295
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 296
    return-void
.end method

.method public rejectImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V
    .locals 1
    .param p1, "rejectParams"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;

    .line 280
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 281
    return-void
.end method

.method public removeImParticipants(Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;

    .line 320
    const/16 v0, 0x15

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 321
    return-void
.end method

.method public reportChatbotAsSpam(Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;)V
    .locals 1
    .param p1, "param"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;

    .line 2390
    const/16 v0, 0x1f

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2391
    return-void
.end method

.method public requestChatbotAnonymize(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;)V
    .locals 1
    .param p1, "param"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;

    .line 2365
    const/16 v0, 0x20

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2366
    return-void
.end method

.method protected sendCallback(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "object"    # Ljava/lang/Object;

    .line 2273
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 2274
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2275
    return-void
.end method

.method public sendComposingNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;

    .line 345
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 346
    return-void
.end method

.method public sendDeliveredNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    .line 350
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 351
    return-void
.end method

.method public sendDisplayedNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    .line 355
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 356
    return-void
.end method

.method protected sendFtCancelRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;)V
    .locals 13
    .param p1, "session"    # Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    .line 2053
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 2054
    .local v0, "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;
    if-nez v0, :cond_0

    .line 2055
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendFtCancelRequestToStack(): null reject params!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    return-void

    .line 2059
    :cond_0
    iget v1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mUaHandle:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    .line 2060
    .local v1, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v1, :cond_2

    .line 2061
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendFtCancelRequestToStack(): User agent not found!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    iget-object v2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iget-object v2, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v2, :cond_1

    .line 2063
    iget-object v2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iget-object v2, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2064
    iget-object v2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iput-object v6, v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    .line 2066
    :cond_1
    return-void

    .line 2069
    :cond_2
    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    :goto_0
    move-object v8, v2

    .line 2070
    .local v8, "reason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v9, v2

    .line 2071
    .local v9, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getWarningText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 2074
    .local v10, "warningTxtOffset":I
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->startWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2075
    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getWarningCode()I

    move-result v2

    invoke-static {v9, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2076
    invoke-static {v9, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2077
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->endWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v11

    .line 2079
    .local v11, "warningHdrOffset":I
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->startRequestCancelFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2080
    iget v2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mHandle:I

    int-to-long v2, v2

    invoke-static {v9, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2081
    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getSipCode()I

    move-result v2

    invoke-static {v9, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addSipCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2082
    invoke-static {v9, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2083
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->endRequestCancelFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 2085
    .local v2, "offset":I
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2086
    const/16 v3, 0x228

    invoke-static {v9, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2087
    const/16 v3, 0x2f

    invoke-static {v9, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2088
    invoke-static {v9, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2089
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v12

    .line 2091
    .end local v2    # "offset":I
    .local v12, "offset":I
    const/16 v3, 0x228

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object v2, p0

    move-object v4, v9

    move v5, v12

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 2092
    return-void
.end method

.method public sendFtDeliveredNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    .line 310
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 311
    return-void
.end method

.method public sendFtDisplayedNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    .line 315
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 316
    return-void
.end method

.method public sendFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;

    .line 305
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 306
    return-void
.end method

.method public sendImMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

    .line 285
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 286
    return-void
.end method

.method public sendMessageRevokeRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;

    .line 360
    const/16 v0, 0x1c

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 361
    return-void
.end method

.method public setFtMessageId(Ljava/lang/Object;I)V
    .locals 5
    .param p1, "rawHandle"    # Ljava/lang/Object;
    .param p2, "msgId"    # I

    .line 503
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    .line 505
    .local v0, "sessionHandle":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFtMessageId():  sessionHandle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", msgId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    .line 508
    .local v1, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;
    if-nez v1, :cond_0

    .line 509
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFtMessageId(): no session in map, id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-void

    .line 512
    :cond_0
    iput p2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mId:I

    .line 513
    return-void
.end method

.method public setMoreInfoToSipUserAgent(Ljava/lang/String;I)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "uaHandle"    # I

    .line 2360
    const/16 v0, 0x1d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2361
    return-void
.end method

.method public startImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;

    .line 265
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 266
    return-void
.end method

.method public stopImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;

    .line 275
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 276
    return-void
.end method

.method public subscribeGroupChatInfo(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "ownImsi"    # Ljava/lang/String;

    .line 2313
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subscribeGroupChatInfo() uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2315
    .local v0, "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;
    const/16 v1, 0x19

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2316
    return-void
.end method

.method public subscribeGroupChatList(IZLjava/lang/String;)V
    .locals 2
    .param p1, "version"    # I
    .param p2, "increaseMode"    # Z
    .param p3, "ownImsi"    # Ljava/lang/String;

    .line 2305
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "subscribeGroupChatList()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;-><init>(IZLjava/lang/String;)V

    .line 2308
    .local v0, "settings":Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;
    const/16 v1, 0x18

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2309
    return-void
.end method

.method public unRegisterForGroupChatInfoUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2335
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mGroupChatInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2336
    return-void
.end method

.method public unRegisterForGroupChatListUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2325
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mGroupChatListRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2326
    return-void
.end method

.method public unregisterAllFileTransferProgress()V
    .locals 0

    .line 261
    return-void
.end method

.method public unregisterForChatbotAnonymizeNotify(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2385
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mChatbotAnonymizeNotifyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2386
    return-void
.end method

.method public unregisterForChatbotAnonymizeResp(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2375
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mChatbotAnonymizeResponseRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2376
    return-void
.end method

.method public unregisterForChatbotAsSpamNotify(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2400
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mReportChatbotAsSpamRespRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2401
    return-void
.end method

.method public unregisterForComposingNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 382
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mComposingRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 383
    return-void
.end method

.method public unregisterForConferenceInfoUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 435
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mConferenceInfoUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 437
    return-void
.end method

.method public unregisterForImIncomingFileTransfer(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 478
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 479
    return-void
.end method

.method public unregisterForImIncomingMessage(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 488
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 489
    return-void
.end method

.method public unregisterForImIncomingSession(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 468
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 469
    return-void
.end method

.method public unregisterForImSessionClosed(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 457
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessionClosedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 458
    return-void
.end method

.method public unregisterForImSessionEstablished(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 447
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 448
    return-void
.end method

.method public unregisterForImdnFailed(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 423
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 424
    return-void
.end method

.method public unregisterForImdnNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 393
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->unregisterForImdnNotification(Landroid/os/Handler;)V

    .line 394
    return-void
.end method

.method public unregisterForImdnResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 408
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->unregisterForImdnResponse(Landroid/os/Handler;)V

    .line 409
    return-void
.end method

.method public unregisterForMessageFailed(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 413
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mMessageFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 414
    return-void
.end method

.method public unregisterForMessageRevokeResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2345
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2346
    return-void
.end method

.method public unregisterForSendMessageRevokeDone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2355
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSendMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2356
    return-void
.end method

.method public unregisterForTransferProgress(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 498
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 499
    return-void
.end method
