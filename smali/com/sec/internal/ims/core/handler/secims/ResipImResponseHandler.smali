.class public Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;
.super Lcom/sec/internal/ims/core/handler/BaseHandler;
.source "ResipImResponseHandler.java"


# static fields
.field private static final GROUPCHAT_ROLE_ADMIN:Ljava/lang/String; = "Administrator"

.field private static final GROUPCHAT_ROLE_CHAIRMAN:Ljava/lang/String; = "chairman"


# instance fields
.field mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "resipImHandler"    # Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    .line 150
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/BaseHandler;-><init>(Landroid/os/Looper;)V

    .line 151
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    .line 152
    return-void
.end method

.method private handleAcceptFtSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V
    .locals 8
    .param p1, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;

    .line 480
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleAcceptFtSessionResponse() called!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 485
    .local v0, "sessionHandle":I
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v1

    .line 488
    .local v1, "reason":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v3, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    .line 489
    .local v3, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;
    const-string v4, ", result = "

    if-nez v3, :cond_0

    .line 490
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleAcceptFtSessionResponse(): no session found sessionHandle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void

    .line 494
    :cond_0
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleAcceptFtSessionResponse(): sessionHandle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v4, v5, :cond_1

    .line 501
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handleAcceptFtSessionResponse INVITE response sent"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 504
    :cond_1
    iget-object v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mAcceptCallback:Landroid/os/Message;

    if-eqz v4, :cond_2

    .line 505
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v5, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mAcceptCallback:Landroid/os/Message;

    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 506
    iput-object v2, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mAcceptCallback:Landroid/os/Message;

    .line 509
    :cond_2
    :goto_0
    return-void
.end method

.method private handleAcceptImSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V
    .locals 9
    .param p1, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;

    .line 314
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleAcceptImSessionResponse() called!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    if-nez p1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleAcceptImSessionResponse(): response is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void

    .line 322
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 325
    .local v0, "sessionHandle":I
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v1

    .line 326
    .local v1, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v3

    .line 329
    .local v3, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v4, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 330
    .local v4, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    const-string v5, ", error = "

    if-nez v4, :cond_1

    .line 331
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleAcceptImSessionResponse(): no session found sessionHandle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void

    .line 335
    :cond_1
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleAcceptImSessionResponse(): sessionHandle = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", chat id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v5, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAcceptCallback:Landroid/os/Message;

    if-eqz v5, :cond_2

    .line 341
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v6, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAcceptCallback:Landroid/os/Message;

    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v1, v2, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 342
    iput-object v2, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAcceptCallback:Landroid/os/Message;

    .line 345
    :cond_2
    return-void
.end method

.method private handleAddParticipantsResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;)V
    .locals 7
    .param p1, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;

    .line 391
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAddParticipantsResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 394
    .local v0, "sessionHandle":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 395
    .local v1, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    if-nez v1, :cond_0

    .line 396
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleAddParticipantsResponse(): no session found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void

    .line 398
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->reqKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 399
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleAddParticipantsResponse(): response has no request key"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void

    .line 403
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->warningHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v2

    .line 404
    .local v2, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v3

    .line 405
    .local v3, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAddParticipantsCallbacks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->reqKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 406
    .local v4, "callback":Landroid/os/Message;
    if-eqz v4, :cond_2

    .line 407
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {v5, v4, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    .line 409
    :cond_2
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v6, "handleAddParticipantsResponse(): no callback set"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :goto_0
    return-void
.end method

.method private handleCancelFtSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V
    .locals 8
    .param p1, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;

    .line 513
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 516
    .local v0, "sessionHandle":I
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v1

    .line 520
    .local v1, "reason":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v3, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    .line 521
    .local v3, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;
    const-string v4, ", result = "

    if-nez v3, :cond_0

    .line 522
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleCancelFtSessionResponse(): cannot find ftsession sessionHandle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return-void

    .line 527
    :cond_0
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCancelFtSessionResponse(): sessionHandle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iget-object v4, v4, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 531
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v5, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iget-object v5, v5, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 532
    iget-object v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iput-object v2, v4, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    .line 536
    :cond_1
    iput-object v2, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 537
    return-void
.end method

.method private handleChangeGroupChatAliasResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;)V
    .locals 7
    .param p1, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;

    .line 658
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChangeGcAliasResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 661
    .local v0, "sessionHandle":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 662
    .local v1, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    if-nez v1, :cond_0

    .line 663
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleChangeGcAliasResponse(): no session found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    return-void

    .line 665
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->reqKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 666
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleChangeGcAliasResponse(): response has no request key"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void

    .line 670
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v2

    .line 671
    .local v2, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v3

    .line 672
    .local v3, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCAliasCallbacks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->reqKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 673
    .local v4, "callback":Landroid/os/Message;
    if-eqz v4, :cond_2

    .line 674
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {v5, v4, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    .line 676
    :cond_2
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v6, "handleChangeGcAliasResponse(): no callback set"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :goto_0
    return-void
.end method

.method private handleChangeGroupChatIconResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;)V
    .locals 7
    .param p1, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;

    .line 638
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChangeGroupChatIconResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 641
    .local v0, "sessionHandle":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 642
    .local v1, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    if-nez v1, :cond_0

    .line 643
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleChangeGroupChatIconResponse(): no session found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void

    .line 647
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v2

    .line 648
    .local v2, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v3

    .line 649
    .local v3, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCIconCallbacks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->reqKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 650
    .local v4, "callback":Landroid/os/Message;
    if-eqz v4, :cond_1

    .line 651
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {v5, v4, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    .line 653
    :cond_1
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v6, "handleChangeGroupChatIconResponse(): no callback set"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :goto_0
    return-void
.end method

.method private handleChangeGroupChatLeaderResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;)V
    .locals 7
    .param p1, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;

    .line 368
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChangeGroupChatLeaderResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 371
    .local v0, "sessionHandle":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 372
    .local v1, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    if-nez v1, :cond_0

    .line 373
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleChangeGroupChatLeaderResponse(): no session found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-void

    .line 375
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->reqKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 376
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleChangeGroupChatLeaderResponse(): response has no request key"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-void

    .line 380
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v2

    .line 381
    .local v2, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v3

    .line 382
    .local v3, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCLeaderCallbacks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->reqKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 383
    .local v4, "callback":Landroid/os/Message;
    if-eqz v4, :cond_2

    .line 384
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {v5, v4, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    .line 386
    :cond_2
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v6, "handleChangeGroupChatLeaderResponse(): no callback set"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :goto_0
    return-void
.end method

.method private handleChangeGroupChatSubjectResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;)V
    .locals 7
    .param p1, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;

    .line 615
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChangeGcSubjectResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 618
    .local v0, "sessionHandle":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 619
    .local v1, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    if-nez v1, :cond_0

    .line 620
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleChangeGcSubjectResponse(): no session found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return-void

    .line 622
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->reqKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 623
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleChangeGcSubjectResponse(): response has no request key"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-void

    .line 627
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v2

    .line 628
    .local v2, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v3

    .line 629
    .local v3, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCSubjectCallbacks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->reqKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 630
    .local v4, "callback":Landroid/os/Message;
    if-eqz v4, :cond_2

    .line 631
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {v5, v4, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    .line 633
    :cond_2
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v6, "handleChangeGcSubjectResponse(): no callback set"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :goto_0
    return-void
.end method

.method private handleCloseImSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;Landroid/os/Message;)V
    .locals 8
    .param p1, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;
    .param p2, "callback"    # Landroid/os/Message;

    .line 589
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleCloseImSessionResponse() called!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 594
    .local v0, "sessionHandle":I
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v1

    .line 595
    .local v1, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v2

    .line 598
    .local v2, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v3, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 599
    .local v3, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    const-string v4, ", error = "

    if-nez v3, :cond_0

    .line 600
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCloseImSessionResponse(): no session found sessionHandle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return-void

    .line 603
    :cond_0
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCloseImSessionResponse(): sessionHandle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", chat id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    if-eqz p2, :cond_1

    .line 609
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    invoke-virtual {v4, p2, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 610
    const/4 p2, 0x0

    .line 612
    :cond_1
    return-void
.end method

.method private handleFtIncomingSessionNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 18
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 1250
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v2, 0x29

    if-eq v0, v2, :cond_0

    .line 1251
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleFtIncomingSessionNotify(): invalid notify"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    return-void

    .line 1255
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;

    .line 1256
    .local v3, "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->session()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;

    move-result-object v4

    .line 1257
    .local v4, "baseSessionData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->payload()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;

    move-result-object v5

    .line 1259
    .local v5, "ftPayloadParam":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;
    if-eqz v5, :cond_16

    if-nez v4, :cond_1

    move-object/from16 v17, v3

    goto/16 :goto_d

    .line 1264
    :cond_1
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sessionHandle()J

    move-result-wide v6

    long-to-int v6, v6

    .line 1265
    .local v6, "sessionHandle":I
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleFtIncomingSessionNotify(): session handle = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->userHandle()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v0, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    .line 1267
    .local v7, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v7, :cond_2

    .line 1268
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleFtIncomingSessionNotify(): UserAgent not found. UserHandle = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->userHandle()J

    move-result-wide v9

    long-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    return-void

    .line 1273
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;-><init>()V

    move-object v8, v0

    .line 1274
    .local v8, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;
    iput v6, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mHandle:I

    .line 1275
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->userHandle()J

    move-result-wide v9

    long-to-int v0, v9

    iput v0, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mUaHandle:I

    .line 1276
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;-><init>()V

    move-object v9, v0

    .line 1280
    .local v9, "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    .line 1281
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    .line 1282
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {v0, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getImsiByUserAgent(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    .line 1285
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sessionUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSenderUri:Lcom/sec/ims/util/ImsUri;

    .line 1286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mParticipants:Ljava/util/List;

    .line 1287
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->isConference()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1288
    iget-object v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mParticipants:Ljava/util/List;

    iget-object v10, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSenderUri:Lcom/sec/ims/util/ImsUri;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1290
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->receiversLength()I

    move-result v10

    if-ge v0, v10, :cond_4

    .line 1291
    iget-object v10, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mParticipants:Ljava/util/List;

    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->receivers(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1295
    .end local v0    # "i":I
    :cond_4
    :goto_1
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->userAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mUserAlias:Ljava/lang/String;

    .line 1296
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sdpContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSdpContentType:Ljava/lang/String;

    .line 1297
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->isConference()Z

    move-result v0

    iput-boolean v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsConference:Z

    .line 1299
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->silenceSupported()Z

    move-result v0

    iput-boolean v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsRoutingMsg:Z

    .line 1300
    iget-boolean v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsRoutingMsg:Z

    if-eqz v0, :cond_5

    .line 1301
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v10, "handleFtIncomingSessionNotify -> routing message"

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->requestUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRequestUri:Lcom/sec/ims/util/ImsUri;

    .line 1303
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->pAssertedId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mPAssertedId:Lcom/sec/ims/util/ImsUri;

    .line 1304
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->receiver()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mReceiver:Lcom/sec/ims/util/ImsUri;

    .line 1307
    :cond_5
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->deviceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1308
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->deviceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mDeviceName:Ljava/lang/String;

    .line 1311
    :cond_6
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->reliableMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1312
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->reliableMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mReliableMessage:Ljava/lang/String;

    .line 1315
    :cond_7
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->extraFt()Z

    move-result v0

    iput-boolean v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mExtraFt:Z

    .line 1317
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->fileAttr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;

    move-result-object v10

    .line 1318
    .local v10, "fileAttr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;
    if-eqz v10, :cond_9

    .line 1319
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->contentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContentType:Ljava/lang/String;

    .line 1322
    :try_start_0
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->name()Ljava/lang/String;

    move-result-object v0

    const-string v11, "UTF-8"

    invoke-static {v0, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1325
    goto :goto_2

    .line 1323
    :catch_0
    move-exception v0

    .line 1324
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1326
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileName:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 1327
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileName:Ljava/lang/String;

    .line 1329
    :cond_8
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->path()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    .line 1330
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->size()J

    move-result-wide v11

    long-to-int v0, v11

    int-to-long v11, v0

    iput-wide v11, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileSize:J

    .line 1331
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->start()J

    move-result-wide v11

    long-to-int v0, v11

    iput v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mStart:I

    .line 1332
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->end()J

    move-result-wide v11

    long-to-int v0, v11

    iput v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mEnd:I

    .line 1333
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->timeDuration()J

    move-result-wide v11

    long-to-int v0, v11

    iput v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mTimeDuration:I

    .line 1335
    :cond_9
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->iconAttr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;

    move-result-object v11

    .line 1336
    .local v11, "iconAttr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;
    const/4 v12, 0x0

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->path()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1337
    invoke-virtual {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->path()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mThumbPath:Ljava/lang/String;

    goto :goto_3

    .line 1339
    :cond_a
    iput-object v12, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mThumbPath:Ljava/lang/String;

    .line 1344
    :goto_3
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->contributionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    .line 1345
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->conversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1346
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->conversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    .line 1348
    :cond_b
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->inReplyToContributionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1349
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->inReplyToContributionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mInReplyToConversationId:Ljava/lang/String;

    .line 1351
    :cond_c
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileTransferId:Ljava/lang/String;

    .line 1353
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->isPush()Z

    move-result v0

    iput-boolean v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mPush:Z

    .line 1356
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1357
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->messageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnId:Ljava/lang/String;

    .line 1359
    :try_start_1
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->datetime()Ljava/lang/String;

    move-result-object v0

    .line 1360
    .local v0, "datetime":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d

    invoke-static {v0}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v13

    goto :goto_4

    :cond_d
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    :goto_4
    iput-object v13, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnTime:Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1364
    .end local v0    # "datetime":Ljava/lang/String;
    goto :goto_5

    .line 1361
    :catch_1
    move-exception v0

    .line 1362
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 1363
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    iput-object v13, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnTime:Ljava/util/Date;

    .line 1366
    .end local v0    # "e":Ljava/text/ParseException;
    :goto_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1367
    .local v0, "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->notiLength()I

    move-result v14

    if-ge v13, v14, :cond_e

    .line 1368
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->noti(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1367
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 1370
    .end local v13    # "i":I
    :cond_e
    invoke-static {v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateStackImdnNoti(Ljava/util/List;)Ljava/util/Set;

    move-result-object v13

    iput-object v13, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mDisposition:Ljava/util/Set;

    .line 1372
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->deviceId()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mDeviceId:Ljava/lang/String;

    .line 1373
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->originalToHdr()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 1375
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRecRouteList:Ljava/util/List;

    .line 1377
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_7
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->recRouteLength()I

    move-result v14

    if-ge v13, v14, :cond_10

    .line 1379
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->recRoute(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;

    move-result-object v14

    .line 1380
    .local v14, "route":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;
    if-eqz v14, :cond_f

    .line 1381
    iget-object v15, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRecRouteList:Ljava/util/List;

    new-instance v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;

    move-object/from16 v16, v0

    .end local v0    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v16, "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnId:Ljava/lang/String;

    invoke-virtual {v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->uri()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v3

    .end local v3    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .local v17, "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    invoke-virtual {v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v0, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1380
    .end local v16    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .restart local v0    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    :cond_f
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    .line 1377
    .end local v0    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .restart local v16    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v17    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    :goto_8
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p1

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    const/4 v12, 0x0

    goto :goto_7

    .end local v14    # "route":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;
    .end local v16    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .restart local v0    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    :cond_10
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    .end local v0    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .restart local v16    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v17    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    goto :goto_9

    .line 1356
    .end local v13    # "i":I
    .end local v16    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .restart local v3    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    :cond_11
    move-object/from16 v17, v3

    .line 1385
    .end local v3    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .restart local v17    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    :goto_9
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;-><init>()V

    iput-object v0, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 1386
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->cpimNamespacesLength()I

    move-result v2

    if-ge v0, v2, :cond_14

    .line 1387
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->cpimNamespaces(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;

    move-result-object v2

    .line 1388
    .local v2, "protoNamespace":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;
    if-eqz v2, :cond_13

    .line 1389
    iget-object v3, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->uri()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->addNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_b
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->headersLength()I

    move-result v12

    if-ge v3, v12, :cond_13

    .line 1391
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->headers(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;

    move-result-object v12

    .line 1392
    .local v12, "header":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;
    if-eqz v12, :cond_12

    .line 1393
    iget-object v13, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->getNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;

    move-result-object v13

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->key()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->value()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    .end local v12    # "header":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1386
    .end local v2    # "protoNamespace":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;
    .end local v3    # "j":I
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1399
    .end local v0    # "i":I
    :cond_14
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleFtIncomingSessionNotify(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v0

    if-eqz v0, :cond_15

    .line 1402
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v2, Lcom/sec/internal/helper/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v9, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_c

    .line 1406
    :cond_15
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty registrants, reject handle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 1408
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->FORBIDDEN_SERVICE_NOT_AUTHORIZED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    iget-object v13, v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileTransferId:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v2, v3, v14, v12, v13}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;-><init>(Ljava/lang/Object;Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;Ljava/lang/String;)V

    .line 1407
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleRejectFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V

    .line 1410
    :goto_c
    return-void

    .line 1259
    .end local v6    # "sessionHandle":I
    .end local v7    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .end local v8    # "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;
    .end local v9    # "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;
    .end local v10    # "fileAttr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;
    .end local v11    # "iconAttr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;
    .end local v17    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .local v3, "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    :cond_16
    move-object/from16 v17, v3

    .line 1260
    .end local v3    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .restart local v17    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    :goto_d
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleFtIncomingSessionNotify(): invalid notify data"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    return-void
.end method

.method private handleFtProgressNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 17
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 1216
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_0

    .line 1217
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleFtProgressNotify(): invalid notify"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    return-void

    .line 1221
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;

    .line 1222
    .local v1, "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;->sessionHandle()J

    move-result-wide v3

    long-to-int v3, v3

    .line 1223
    .local v3, "sessionHandle":I
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v4, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    .line 1225
    .local v4, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;
    if-nez v4, :cond_1

    .line 1226
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unkown session id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;->sessionHandle()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    return-void

    .line 1231
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;->state()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtProgressState(I)Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    move-result-object v5

    .line 1232
    .local v5, "state":Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->TRANSFERRING:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    if-eq v5, v6, :cond_2

    .line 1233
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v6, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;->reasonHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v15

    .line 1237
    .local v15, "reason":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleFtProgressNotify(): session handle = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;->state()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", fail reason = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", total = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;->total()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", transferred = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;->transferred()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1237
    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v6, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v6}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v6

    if-eqz v6, :cond_3

    .line 1241
    new-instance v14, Lcom/sec/internal/helper/AsyncResult;

    new-instance v13, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    .line 1242
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mId:I

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;->total()J

    move-result-wide v9

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;->transferred()J

    move-result-wide v11

    move-object v6, v13

    move-object/from16 v16, v1

    move-object v1, v13

    .end local v1    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;
    .local v16, "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;
    move-object v13, v5

    move-object v2, v14

    move-object v14, v15

    invoke-direct/range {v6 .. v14}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;-><init>(Ljava/lang/Object;IJJLcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    const/4 v6, 0x0

    invoke-direct {v2, v6, v1, v6}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 1243
    .local v1, "result":Lcom/sec/internal/helper/AsyncResult;
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v2, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 1244
    .end local v1    # "result":Lcom/sec/internal/helper/AsyncResult;
    goto :goto_0

    .line 1245
    .end local v16    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;
    .local v1, "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;
    :cond_3
    move-object/from16 v16, v1

    .end local v1    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;
    .restart local v16    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtProgress;
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No TransferProgressRegistrant for handle = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mHandle:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :goto_0
    return-void
.end method

.method private handleFtSessionClosedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 17
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 1543
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v1

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_0

    .line 1544
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleFtSessionClosedNotify(): invalid notify"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    return-void

    .line 1549
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;

    .line 1550
    .local v1, "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;->sessionHandle()J

    move-result-wide v3

    long-to-int v3, v3

    .line 1553
    .local v3, "sessionHandle":I
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v4

    .line 1556
    .local v4, "reason":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v6, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    .line 1557
    .local v15, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;
    const-string v6, ", error = "

    if-nez v15, :cond_1

    .line 1558
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleFtSessionClosedNotify(): no session found sessionHandle = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    return-void

    .line 1561
    :cond_1
    iget-object v7, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleFtSessionClosedNotify(): sessionHandle = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v6, v7, :cond_5

    .line 1566
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v7, "handleFtSessionClosedNotify(): abnormal close"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    iget-object v6, v15, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    if-eqz v6, :cond_2

    .line 1571
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v7, v15, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    new-instance v8, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v4, v9}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v8}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1572
    iput-object v5, v15, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    .line 1575
    :cond_2
    iget-object v6, v15, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mAcceptCallback:Landroid/os/Message;

    if-eqz v6, :cond_3

    .line 1577
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v7, v15, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mAcceptCallback:Landroid/os/Message;

    new-instance v8, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v4, v9}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v8}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1578
    iput-object v5, v15, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mAcceptCallback:Landroid/os/Message;

    move-object/from16 v16, v1

    goto :goto_0

    .line 1582
    :cond_3
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v6, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v6}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v6

    if-eqz v6, :cond_4

    .line 1583
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v7, "handleFtSessionClosedNotify(): post cancelled to progress registrants"

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    new-instance v14, Lcom/sec/internal/helper/AsyncResult;

    new-instance v13, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    .line 1585
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, v15, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mId:I

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    sget-object v16, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    move-object v6, v13

    move-object v5, v13

    move-object/from16 v13, v16

    move-object/from16 v16, v1

    move-object v1, v14

    .end local v1    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    .local v16, "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    move-object v14, v4

    invoke-direct/range {v6 .. v14}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;-><init>(Ljava/lang/Object;IJJLcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    const/4 v6, 0x0

    invoke-direct {v1, v6, v5, v6}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1586
    .local v1, "result":Lcom/sec/internal/helper/AsyncResult;
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v5, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v5, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 1587
    .end local v1    # "result":Lcom/sec/internal/helper/AsyncResult;
    goto :goto_0

    .line 1588
    .end local v16    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    .local v1, "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    :cond_4
    move-object/from16 v16, v1

    .end local v1    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    .restart local v16    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No TransferProgressRegistrant for handle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v15, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mHandle:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1595
    .end local v16    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    .restart local v1    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    :cond_5
    move-object/from16 v16, v1

    .end local v1    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    .restart local v16    # "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v5, "handleFtSessionClosedNotify(): get unexpected SessionClosed notify"

    invoke-static {v1, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    :goto_0
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    return-void
.end method

.method private handleFtSessionEstablishedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 9
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 1500
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleFtSessionEstablishedNotify(): invalid notify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    return-void

    .line 1506
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;

    .line 1507
    .local v0, "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;->sessionHandle()J

    move-result-wide v1

    long-to-int v1, v1

    .line 1510
    .local v1, "sessionHandle":I
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v2

    .line 1513
    .local v2, "reason":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v4, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    .line 1514
    .local v4, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;
    const-string v5, ", result = "

    if-nez v4, :cond_1

    .line 1515
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleFtSessionEstablishedNotify(): no session found sessionHandle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    return-void

    .line 1518
    :cond_1
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleFtSessionEstablishedNotify(): sessionHandle = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v5, v6, :cond_2

    .line 1524
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v5, "handleFtSessionEstablishedNotify(): failed"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    return-void

    .line 1529
    :cond_2
    iget-object v5, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    if-eqz v5, :cond_3

    .line 1531
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v6, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1532
    iput-object v3, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    goto :goto_0

    .line 1533
    :cond_3
    iget-object v5, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mAcceptCallback:Landroid/os/Message;

    if-eqz v5, :cond_4

    .line 1536
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v6, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mAcceptCallback:Landroid/os/Message;

    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1537
    iput-object v3, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mAcceptCallback:Landroid/os/Message;

    .line 1539
    :cond_4
    :goto_0
    return-void
.end method

.method private handleFtSessionStartedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 10
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 1178
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleFtSessionStartedNotify(): invalid notify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    return-void

    .line 1184
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;

    .line 1185
    .local v0, "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->sessionHandle()J

    move-result-wide v1

    long-to-int v1, v1

    .line 1188
    .local v1, "sessionHandle":I
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->warningHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v2

    .line 1190
    .local v2, "reason":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleFtSessionStartedNotify(): sessionHandle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v3, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    .line 1194
    .local v3, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;
    if-nez v3, :cond_1

    .line 1195
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleFtSessionStartedNotify(): Unknown session handle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->sessionHandle()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    return-void

    .line 1200
    :cond_1
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v4, v5, :cond_2

    .line 1202
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v5, "handleFtSessionStartedNotify(): SUCCESS"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1205
    :cond_2
    iget-object v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    if-eqz v4, :cond_4

    .line 1206
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->retryHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RetryHdr;

    move-result-object v4

    .line 1207
    .local v4, "retryHdr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RetryHdr;
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v6, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1208
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RetryHdr;->retryTimer()I

    move-result v9

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    :goto_0
    invoke-direct {v7, v2, v8, v9}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;I)V

    .line 1207
    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1209
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    .line 1211
    .end local v4    # "retryHdr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RetryHdr;
    :cond_4
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v4, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    :goto_1
    return-void
.end method

.method private handleGroupChatInfoNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 25
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 1848
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleGroupChatInfoNotify()"

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;

    .line 1851
    .local v3, "groupChatInfoUpdated":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->uri()Ljava/lang/String;

    move-result-object v13

    .line 1853
    .local v13, "uri":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->info()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;

    move-result-object v14

    .line 1854
    .local v14, "imConferenceInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;
    if-nez v14, :cond_0

    .line 1855
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handleGroupChatInfoNotify(): info is null, return"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    return-void

    .line 1859
    :cond_0
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatInfoUpdated;->uaHandle()J

    move-result-wide v4

    long-to-int v15, v4

    .line 1860
    .local v15, "mUaHandle":I
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {v0, v15}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v12

    .line 1861
    .local v12, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v12, :cond_1

    .line 1862
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handleGroupChatInfoNotify(): User Agent not found!"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    return-void

    .line 1866
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;->FULL:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;

    .line 1867
    .local v0, "infoType":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;
    invoke-virtual {v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->state()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1868
    invoke-virtual {v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->state()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x2f43367f

    const/4 v8, 0x1

    if-eq v6, v7, :cond_4

    const v7, 0x5c6a3019

    if-eq v6, v7, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    const-string v6, "deleted"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v5, v8

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "partial"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_6

    if-eq v5, v8, :cond_5

    .line 1876
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;->FULL:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;

    move-object/from16 v16, v0

    goto :goto_1

    .line 1873
    :cond_5
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;

    .line 1874
    move-object/from16 v16, v0

    goto :goto_1

    .line 1870
    :cond_6
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;->PARTIAL:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;

    .line 1871
    move-object/from16 v16, v0

    goto :goto_1

    .line 1867
    :cond_7
    move-object/from16 v16, v0

    .line 1881
    .end local v0    # "infoType":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;
    .local v16, "infoType":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;
    :goto_1
    const/4 v4, 0x0

    .line 1882
    .local v4, "subjectData":Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;
    invoke-virtual {v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->subjectData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;

    move-result-object v17

    .line 1883
    .local v17, "subjectExt":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;
    if-eqz v17, :cond_a

    .line 1884
    const/4 v0, 0x0

    .line 1885
    .local v0, "participant":Lcom/sec/ims/util/ImsUri;
    const/4 v5, 0x0

    .line 1886
    .local v5, "timestamp":Ljava/util/Date;
    invoke-virtual/range {v17 .. v17}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->participant()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 1887
    invoke-virtual/range {v17 .. v17}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->participant()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    .line 1886
    :cond_8
    move-object v6, v0

    .line 1889
    .end local v0    # "participant":Lcom/sec/ims/util/ImsUri;
    .local v6, "participant":Lcom/sec/ims/util/ImsUri;
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->timestamp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1891
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->timestamp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    .line 1895
    goto :goto_3

    .line 1892
    :catch_0
    move-exception v0

    .line 1893
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 1894
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    move-object v5, v7

    .line 1897
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_9
    :goto_3
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->subject()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7, v6, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V

    move-object v4, v0

    move-object/from16 v18, v4

    goto :goto_4

    .line 1883
    .end local v5    # "timestamp":Ljava/util/Date;
    .end local v6    # "participant":Lcom/sec/ims/util/ImsUri;
    :cond_a
    move-object/from16 v18, v4

    .line 1900
    .end local v4    # "subjectData":Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;
    .local v18, "subjectData":Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;
    :goto_4
    const/4 v4, 0x0

    .line 1901
    .local v4, "iconData":Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;
    invoke-virtual {v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->iconData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;

    move-result-object v19

    .line 1902
    .local v19, "icon":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;
    if-eqz v19, :cond_e

    .line 1903
    invoke-virtual/range {v19 .. v19}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->participant()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v11

    .line 1904
    .local v11, "participant":Lcom/sec/ims/util/ImsUri;
    invoke-virtual/range {v19 .. v19}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->iconLocation()Ljava/lang/String;

    move-result-object v20

    .line 1906
    .local v20, "iconlocation":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->icontype()I

    move-result v10

    .line 1908
    .local v10, "icon_type":I
    const/4 v0, 0x0

    .line 1910
    .local v0, "iconUri":Ljava/lang/String;
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_FILE:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ordinal()I

    move-result v5

    if-ne v10, v5, :cond_b

    .line 1911
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_FILE:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    move-object/from16 v21, v0

    move-object/from16 v22, v5

    .local v5, "iconType":Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;
    goto :goto_5

    .line 1912
    .end local v5    # "iconType":Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;
    :cond_b
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_URI:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ordinal()I

    move-result v5

    if-ne v10, v5, :cond_c

    .line 1913
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_URI:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    .line 1914
    .restart local v5    # "iconType":Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;
    invoke-virtual/range {v19 .. v19}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->iconLocation()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    move-object/from16 v22, v5

    goto :goto_5

    .line 1916
    .end local v5    # "iconType":Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;
    :cond_c
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    move-object/from16 v21, v0

    move-object/from16 v22, v5

    .line 1920
    .end local v0    # "iconUri":Ljava/lang/String;
    .local v21, "iconUri":Ljava/lang/String;
    .local v22, "iconType":Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;
    :goto_5
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->timestamp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual/range {v19 .. v19}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->timestamp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_6

    :cond_d
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1924
    .local v0, "timestamp":Ljava/util/Date;
    :goto_6
    goto :goto_7

    .line 1921
    .end local v0    # "timestamp":Ljava/util/Date;
    :catch_1
    move-exception v0

    .line 1922
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 1923
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    move-object v0, v5

    .line 1925
    .local v0, "timestamp":Ljava/util/Date;
    :goto_7
    new-instance v23, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-object/from16 v5, v23

    move-object/from16 v6, v22

    move-object v7, v11

    move-object v8, v0

    move-object/from16 v9, v20

    move/from16 v24, v10

    .end local v10    # "icon_type":I
    .local v24, "icon_type":I
    move-object/from16 v10, v21

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v23

    move-object/from16 v20, v4

    goto :goto_8

    .line 1902
    .end local v0    # "timestamp":Ljava/util/Date;
    .end local v11    # "participant":Lcom/sec/ims/util/ImsUri;
    .end local v20    # "iconlocation":Ljava/lang/String;
    .end local v21    # "iconUri":Ljava/lang/String;
    .end local v22    # "iconType":Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;
    .end local v24    # "icon_type":I
    :cond_e
    move-object/from16 v20, v4

    .line 1928
    .end local v4    # "iconData":Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;
    .local v20, "iconData":Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;
    :goto_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 1930
    .local v11, "participantsInfo":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;>;"
    invoke-virtual {v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->usersLength()I

    move-result v0

    if-lez v0, :cond_15

    .line 1931
    const/4 v0, 0x0

    move v4, v0

    .local v4, "index":I
    :goto_9
    invoke-virtual {v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->usersLength()I

    move-result v0

    if-ge v4, v0, :cond_15

    .line 1932
    invoke-virtual {v14, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->users(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;

    move-result-object v5

    .line 1933
    .local v5, "user":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;
    if-eqz v5, :cond_14

    .line 1934
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;-><init>()V

    move-object v6, v0

    .line 1935
    .local v6, "info":Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->entity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 1936
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->state()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImConferenceUserElemState(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUserElemState:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    .line 1937
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->yourOwn()Z

    move-result v0

    iput-boolean v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mIsOwn:Z

    .line 1938
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1939
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->status()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1940
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->status()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateToImConferenceParticipantStatus(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mParticipantStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    .line 1942
    :cond_f
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->disconnectMethod()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1943
    nop

    .line 1944
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->disconnectMethod()Ljava/lang/String;

    move-result-object v0

    .line 1943
    invoke-static {v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateToImConferenceDisconnectionReason(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionReason:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    .line 1946
    :cond_10
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->joininginfo()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserJoiningInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->joininginfo()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserJoiningInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserJoiningInfo;->when()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1948
    :try_start_2
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->joininginfo()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserJoiningInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserJoiningInfo;->when()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mJoiningTime:Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1952
    goto :goto_a

    .line 1949
    :catch_2
    move-exception v0

    .line 1950
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 1951
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    iput-object v7, v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mJoiningTime:Ljava/util/Date;

    .line 1954
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_11
    :goto_a
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->disconnectioninfo()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserDisconnectionInfo;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->disconnectioninfo()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserDisconnectionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserDisconnectionInfo;->when()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1956
    :try_start_3
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->disconnectioninfo()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserDisconnectionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserDisconnectionInfo;->when()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionTime:Ljava/util/Date;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1960
    goto :goto_b

    .line 1957
    :catch_3
    move-exception v0

    .line 1958
    .restart local v0    # "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 1959
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    iput-object v7, v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionTime:Ljava/util/Date;

    .line 1963
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_12
    :goto_b
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->roles()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1964
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->roles()Ljava/lang/String;

    move-result-object v0

    const-string v7, "chairman"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mIsChairman:Z

    .line 1966
    :cond_13
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->userAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDispName:Ljava/lang/String;

    .line 1967
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1931
    .end local v5    # "user":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;
    .end local v6    # "info":Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    .line 1972
    .end local v4    # "index":I
    :cond_15
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;

    .line 1973
    invoke-virtual {v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->maxUserCnt()J

    move-result-wide v4

    long-to-int v8, v4

    const/4 v10, 0x0

    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {v4, v12}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getImsiByUserAgent(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/lang/String;

    move-result-object v21

    move-object v4, v0

    move-object v5, v13

    move-object/from16 v6, v16

    move-object v7, v11

    move-object/from16 v9, v18

    move-object/from16 v22, v11

    .end local v11    # "participantsInfo":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;>;"
    .local v22, "participantsInfo":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;>;"
    move-object/from16 v11, v21

    move-object/from16 v21, v12

    .end local v12    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .local v21, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    move-object/from16 v12, v20

    invoke-direct/range {v4 .. v12}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;Ljava/util/List;ILcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;Ljava/lang/Object;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    .line 1975
    .local v0, "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;
    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v4, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mGroupChatInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v5, Lcom/sec/internal/helper/AsyncResult;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0, v6}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 1976
    return-void
.end method

.method private handleGroupChatListNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 12
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 1822
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleGroupChatListNotify()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatListUpdated;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatListUpdated;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatListUpdated;

    .line 1825
    .local v0, "groupChatListUpdated":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatListUpdated;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatListUpdated;->version()J

    move-result-wide v1

    long-to-int v1, v1

    .line 1826
    .local v1, "version":I
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatListUpdated;->uaHandle()J

    move-result-wide v2

    long-to-int v2, v2

    .line 1827
    .local v2, "uaHandle":I
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v3

    .line 1828
    .local v3, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v3, :cond_0

    .line 1829
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v5, "handleGcListNotify(): User Agent not found!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    return-void

    .line 1833
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatListUpdated;->groupChatsLength()I

    move-result v4

    .line 1834
    .local v4, "groupChatListSize":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1835
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;>;"
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_0
    if-ge v6, v4, :cond_2

    .line 1836
    invoke-virtual {v0, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/GroupChatListUpdated;->groupChats(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/GroupChatInfo;

    move-result-object v7

    .line 1837
    .local v7, "info":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/GroupChatInfo;
    if-eqz v7, :cond_1

    .line 1838
    new-instance v8, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/GroupChatInfo;->uri()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/GroupChatInfo;->conversationId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/GroupChatInfo;->subject()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1835
    .end local v7    # "info":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/GroupChatInfo;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1842
    .end local v6    # "index":I
    :cond_2
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;

    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {v7, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getImsiByUserAgent(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v5, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;-><init>(ILjava/util/List;Ljava/lang/String;)V

    .line 1844
    .local v6, "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;
    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v7, v7, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mGroupChatListRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v8, Lcom/sec/internal/helper/AsyncResult;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v6, v9}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 1845
    return-void
.end method

.method private handleGroupChatSubscribeStatusNotify()V
    .locals 2

    .line 1818
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleGroupChatSubscribeStatusNotify()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    return-void
.end method

.method private handleImComposingStatusReceivedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 13
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 1135
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleImComposingStatusReceivedNotify"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleImComposingStatusReceivedNotify(): invalid notify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    return-void

    .line 1142
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;

    .line 1143
    .local v0, "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;->sessionId()J

    move-result-wide v1

    long-to-int v1, v1

    .line 1144
    .local v1, "sessionHandle":I
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v2, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 1145
    .local v2, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    const/4 v3, 0x0

    .line 1147
    .local v3, "userAlias":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1148
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unkown session id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;->sessionId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    return-void

    .line 1152
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;->status()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;

    move-result-object v4

    .line 1153
    .local v4, "status":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;
    if-nez v4, :cond_2

    .line 1154
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v6, "handleImComposingStatusReceivedNotify(): invalid notify data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    return-void

    .line 1157
    :cond_2
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;->uri()Ljava/lang/String;

    move-result-object v5

    .line 1159
    .local v5, "remoteUri":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;->userAlias()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;->userAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1160
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v7, "handleImComposingStatusReceivedNotify: found userAlias"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImComposingStatusReceived;->userAlias()Ljava/lang/String;

    move-result-object v3

    .line 1165
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1166
    const-string v6, "\\<|\\>"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1168
    :cond_4
    new-instance v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;

    iget-object v7, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;->isActive()Z

    move-result v10

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;->interval()J

    move-result-wide v8

    long-to-int v11, v8

    move-object v6, v12

    move-object v8, v5

    move-object v9, v3

    invoke-direct/range {v6 .. v11}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1170
    .local v6, "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImComposingEvent;
    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleImComposingStatusReceivedNotify: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v7, v7, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mComposingRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v8, Lcom/sec/internal/helper/AsyncResult;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v6, v9}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 1173
    return-void
.end method

.method private handleImConferenceInfoUpdateNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 30
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 1602
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleImConferenceInfoUpdateNotify"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    .line 1604
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleImConferenceInfoUpdateNotify(): invalid notify"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    return-void

    .line 1608
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;

    .line 1610
    .local v3, "imConferenceInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->sessionId()J

    move-result-wide v4

    long-to-int v4, v4

    .line 1611
    .local v4, "sessionHandle":I
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 1612
    .local v5, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    if-eqz v5, :cond_23

    iget-object v0, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    if-nez v0, :cond_1

    move/from16 v26, v4

    goto/16 :goto_17

    .line 1617
    :cond_1
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget v6, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {v0, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v6

    .line 1618
    .local v6, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v6, :cond_2

    .line 1619
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v7, "handleImConferenceInfoUpdateNotify(): User Agent not found!"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    return-void

    .line 1623
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;->FULL:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;

    .line 1624
    .local v0, "infoType":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->state()Ljava/lang/String;

    move-result-object v7

    .line 1625
    .local v7, "state":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v10, 0x1

    if-nez v8, :cond_8

    .line 1626
    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, -0x2f43367f

    if-eq v11, v12, :cond_5

    const v12, 0x5c6a3019

    if-eq v11, v12, :cond_4

    :cond_3
    goto :goto_0

    :cond_4
    const-string v11, "deleted"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v8, v10

    goto :goto_0

    :cond_5
    const-string/jumbo v11, "partial"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_7

    if-eq v8, v10, :cond_6

    .line 1634
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;->FULL:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;

    move-object v8, v0

    goto :goto_1

    .line 1631
    :cond_6
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;

    .line 1632
    move-object v8, v0

    goto :goto_1

    .line 1628
    :cond_7
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;->PARTIAL:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;

    .line 1629
    move-object v8, v0

    goto :goto_1

    .line 1625
    :cond_8
    move-object v8, v0

    .line 1638
    .end local v0    # "infoType":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;
    .local v8, "infoType":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;
    :goto_1
    const/4 v11, 0x0

    .line 1639
    .local v11, "subjectData":Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->subjectData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;

    move-result-object v20

    .line 1640
    .local v20, "subjectExt":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;
    const-string v12, ""

    if-eqz v20, :cond_d

    .line 1641
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received sub info: subject ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->subject()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", participant ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->participant()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", timestamp ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->timestamp()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1641
    invoke-static {v0, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->subject()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->participant()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1644
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->timestamp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1645
    :cond_9
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->subject()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v12

    goto :goto_2

    :cond_a
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->subject()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v13, v0

    .line 1647
    .local v13, "subject":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1648
    .local v0, "participant":Lcom/sec/ims/util/ImsUri;
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->participant()Ljava/lang/String;

    move-result-object v14

    .line 1649
    .local v14, "participantString":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 1650
    invoke-static {v14}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    move-object v15, v0

    goto :goto_3

    .line 1649
    :cond_b
    move-object v15, v0

    .line 1653
    .end local v0    # "participant":Lcom/sec/ims/util/ImsUri;
    .local v15, "participant":Lcom/sec/ims/util/ImsUri;
    :goto_3
    const/16 v16, 0x0

    .line 1654
    .local v16, "timestamp":Ljava/util/Date;
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;->timestamp()Ljava/lang/String;

    move-result-object v9

    .line 1655
    .local v9, "timestampString":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1657
    :try_start_0
    invoke-static {v9}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v0

    .line 1661
    goto :goto_4

    .line 1658
    :catch_0
    move-exception v0

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    .line 1659
    .local v0, "e":Ljava/text/ParseException;
    iget-object v10, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    .end local v0    # "e":Ljava/text/ParseException;
    .local v19, "e":Ljava/text/ParseException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parsing subject timestamp failed : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    move-object/from16 v16, v0

    goto :goto_4

    .line 1655
    .end local v19    # "e":Ljava/text/ParseException;
    :cond_c
    move-object/from16 v0, v16

    .line 1663
    .end local v16    # "timestamp":Ljava/util/Date;
    .local v0, "timestamp":Ljava/util/Date;
    :goto_4
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    invoke-direct {v2, v13, v15, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V

    move-object v11, v2

    goto :goto_5

    .line 1667
    .end local v0    # "timestamp":Ljava/util/Date;
    .end local v9    # "timestampString":Ljava/lang/String;
    .end local v13    # "subject":Ljava/lang/String;
    .end local v14    # "participantString":Ljava/lang/String;
    .end local v15    # "participant":Lcom/sec/ims/util/ImsUri;
    :cond_d
    move-object v2, v11

    .end local v11    # "subjectData":Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;
    .local v2, "subjectData":Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;
    :goto_5
    const/4 v9, 0x0

    .line 1668
    .local v9, "iconData":Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->iconData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;

    move-result-object v10

    .line 1669
    .local v10, "icon":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;
    if-eqz v10, :cond_12

    .line 1670
    const/4 v0, 0x0

    .line 1671
    .local v0, "iconType":Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->icontype()I

    move-result v11

    .line 1672
    .local v11, "iconTypeInteger":I
    const/4 v13, 0x0

    .line 1674
    .local v13, "iconUri":Ljava/lang/String;
    sget-object v14, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_FILE:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    invoke-virtual {v14}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ordinal()I

    move-result v14

    if-ne v11, v14, :cond_e

    .line 1675
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_FILE:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    move-object v14, v13

    move-object v13, v0

    goto :goto_6

    .line 1676
    :cond_e
    sget-object v14, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_URI:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    invoke-virtual {v14}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ordinal()I

    move-result v14

    if-ne v11, v14, :cond_f

    .line 1677
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_URI:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    .line 1678
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->iconLocation()Ljava/lang/String;

    move-result-object v13

    move-object v14, v13

    move-object v13, v0

    goto :goto_6

    .line 1680
    :cond_f
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    move-object v14, v13

    move-object v13, v0

    .line 1683
    .end local v0    # "iconType":Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;
    .local v13, "iconType":Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;
    .local v14, "iconUri":Ljava/lang/String;
    :goto_6
    const/4 v0, 0x0

    .line 1684
    .local v0, "participant":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->participant()Ljava/lang/String;

    move-result-object v15

    .line 1685
    .local v15, "participantString":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_10

    .line 1686
    invoke-static {v15}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_7

    .line 1685
    :cond_10
    move-object/from16 v16, v0

    .line 1689
    .end local v0    # "participant":Lcom/sec/ims/util/ImsUri;
    .local v16, "participant":Lcom/sec/ims/util/ImsUri;
    :goto_7
    const/16 v19, 0x0

    .line 1690
    .local v19, "timestamp":Ljava/util/Date;
    move-object/from16 v27, v7

    .end local v7    # "state":Ljava/lang/String;
    .local v27, "state":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->timestamp()Ljava/lang/String;

    move-result-object v7

    .line 1691
    .local v7, "timestampString":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1693
    :try_start_1
    invoke-static {v7}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v19, v0

    .line 1697
    move-object/from16 v28, v9

    move/from16 v29, v11

    goto :goto_8

    .line 1694
    :catch_1
    move-exception v0

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    .line 1695
    .local v0, "e":Ljava/text/ParseException;
    nop

    .end local v0    # "e":Ljava/text/ParseException;
    .local v21, "e":Ljava/text/ParseException;
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v28, v9

    .end local v9    # "iconData":Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;
    .local v28, "iconData":Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v29, v11

    .end local v11    # "iconTypeInteger":I
    .local v29, "iconTypeInteger":I
    const-string/jumbo v11, "parsing icon timestamp failed : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    move-object/from16 v19, v0

    goto :goto_8

    .line 1691
    .end local v21    # "e":Ljava/text/ParseException;
    .end local v28    # "iconData":Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;
    .end local v29    # "iconTypeInteger":I
    .restart local v9    # "iconData":Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;
    .restart local v11    # "iconTypeInteger":I
    :cond_11
    move-object/from16 v28, v9

    move/from16 v29, v11

    .line 1700
    .end local v9    # "iconData":Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;
    .end local v11    # "iconTypeInteger":I
    .restart local v28    # "iconData":Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;
    .restart local v29    # "iconTypeInteger":I
    :goto_8
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->iconLocation()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v21, v0

    move-object/from16 v22, v13

    move-object/from16 v23, v16

    move-object/from16 v24, v19

    move-object/from16 v26, v14

    invoke-direct/range {v21 .. v26}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v0

    .end local v28    # "iconData":Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;
    .restart local v9    # "iconData":Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;
    goto :goto_9

    .line 1669
    .end local v13    # "iconType":Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;
    .end local v14    # "iconUri":Ljava/lang/String;
    .end local v15    # "participantString":Ljava/lang/String;
    .end local v16    # "participant":Lcom/sec/ims/util/ImsUri;
    .end local v19    # "timestamp":Ljava/util/Date;
    .end local v27    # "state":Ljava/lang/String;
    .end local v29    # "iconTypeInteger":I
    .local v7, "state":Ljava/lang/String;
    :cond_12
    move-object/from16 v27, v7

    move-object/from16 v28, v9

    .line 1703
    .end local v7    # "state":Ljava/lang/String;
    .restart local v27    # "state":Ljava/lang/String;
    :goto_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 1705
    .local v7, "participantsInfo":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;>;"
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->usersLength()I

    move-result v15

    .line 1706
    .local v15, "confUsersCount":I
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleOptionsReceived: tagLength "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    const/4 v0, 0x0

    move v11, v0

    .local v11, "index":I
    :goto_a
    if-ge v11, v15, :cond_21

    .line 1709
    invoke-virtual {v3, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->users(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;

    move-result-object v13

    .line 1710
    .local v13, "user":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;
    if-eqz v13, :cond_20

    .line 1711
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;-><init>()V

    move-object/from16 v16, v0

    .line 1712
    .local v16, "info":Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;
    invoke-virtual {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->entity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    move-object/from16 v14, v16

    .end local v16    # "info":Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;
    .local v14, "info":Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;
    iput-object v0, v14, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 1713
    invoke-virtual {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->state()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImConferenceUserElemState(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    move-result-object v0

    iput-object v0, v14, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUserElemState:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    .line 1714
    invoke-virtual {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->status()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1715
    invoke-virtual {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->status()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateToImConferenceParticipantStatus(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    move-result-object v0

    goto :goto_b

    .line 1716
    :cond_13
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    :goto_b
    iput-object v0, v14, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mParticipantStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    .line 1717
    invoke-virtual {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->yourOwn()Z

    move-result v0

    iput-boolean v0, v14, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mIsOwn:Z

    .line 1718
    invoke-virtual {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->disconnectMethod()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_14
    move-object v0, v12

    :goto_c
    move-object/from16 v16, v0

    .line 1719
    .local v16, "disconnectMethod":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1720
    invoke-static/range {v16 .. v16}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateToImConferenceDisconnectionReason(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    move-result-object v0

    iput-object v0, v14, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionReason:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    .line 1722
    :cond_15
    invoke-virtual {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->joininginfo()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserJoiningInfo;

    move-result-object v0

    goto :goto_d

    :cond_16
    const/4 v0, 0x0

    :goto_d
    move-object/from16 v21, v0

    .line 1723
    .local v21, "joiningInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserJoiningInfo;
    if-eqz v21, :cond_18

    .line 1724
    move-object/from16 v22, v10

    .end local v10    # "icon":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;
    .local v22, "icon":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;
    invoke-virtual/range {v21 .. v21}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserJoiningInfo;->when()Ljava/lang/String;

    move-result-object v10

    .line 1725
    .local v10, "when":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1727
    :try_start_2
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v23, v12

    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_3

    move/from16 v24, v15

    .end local v15    # "confUsersCount":I
    .local v24, "confUsersCount":I
    :try_start_4
    const-string/jumbo v15, "parsing joiningInfo timestamp failed : "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    invoke-static {v10}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, v14, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mJoiningTime:Ljava/util/Date;
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1732
    goto :goto_10

    .line 1729
    :catch_2
    move-exception v0

    goto :goto_f

    .end local v24    # "confUsersCount":I
    .restart local v15    # "confUsersCount":I
    :catch_3
    move-exception v0

    goto :goto_e

    :catch_4
    move-exception v0

    move-object/from16 v23, v12

    :goto_e
    move/from16 v24, v15

    .line 1730
    .end local v15    # "confUsersCount":I
    .restart local v0    # "e":Ljava/text/ParseException;
    .restart local v24    # "confUsersCount":I
    :goto_f
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 1731
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    iput-object v12, v14, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mJoiningTime:Ljava/util/Date;

    goto :goto_10

    .line 1725
    .end local v0    # "e":Ljava/text/ParseException;
    .end local v24    # "confUsersCount":I
    .restart local v15    # "confUsersCount":I
    :cond_17
    move-object/from16 v23, v12

    move/from16 v24, v15

    .end local v15    # "confUsersCount":I
    .restart local v24    # "confUsersCount":I
    goto :goto_10

    .line 1723
    .end local v22    # "icon":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;
    .end local v24    # "confUsersCount":I
    .local v10, "icon":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;
    .restart local v15    # "confUsersCount":I
    :cond_18
    move-object/from16 v22, v10

    move-object/from16 v23, v12

    move/from16 v24, v15

    .line 1735
    .end local v10    # "icon":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;
    .end local v15    # "confUsersCount":I
    .restart local v22    # "icon":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;
    .restart local v24    # "confUsersCount":I
    :goto_10
    invoke-virtual {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->endpoint()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserEndpoint;->disconnectioninfo()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserDisconnectionInfo;

    move-result-object v0

    goto :goto_11

    :cond_19
    const/4 v0, 0x0

    :goto_11
    move-object v10, v0

    .line 1736
    .local v10, "disconnectionInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserDisconnectionInfo;
    if-eqz v10, :cond_1b

    .line 1737
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserDisconnectionInfo;->when()Ljava/lang/String;

    move-result-object v12

    .line 1738
    .local v12, "when":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1740
    :try_start_5
    invoke-static {v12}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, v14, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionTime:Ljava/util/Date;
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1744
    move/from16 v26, v4

    goto :goto_12

    .line 1741
    :catch_5
    move-exception v0

    .line 1742
    .restart local v0    # "e":Ljava/text/ParseException;
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    .end local v0    # "e":Ljava/text/ParseException;
    .local v25, "e":Ljava/text/ParseException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v4

    .end local v4    # "sessionHandle":I
    .local v26, "sessionHandle":I
    const-string/jumbo v4, "parsing disconnectionInfo timestamp failed : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v14, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionTime:Ljava/util/Date;

    goto :goto_12

    .line 1738
    .end local v25    # "e":Ljava/text/ParseException;
    .end local v26    # "sessionHandle":I
    .restart local v4    # "sessionHandle":I
    :cond_1a
    move/from16 v26, v4

    .line 1746
    .end local v4    # "sessionHandle":I
    .restart local v26    # "sessionHandle":I
    :goto_12
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserDisconnectionInfo;->reason()Ljava/lang/String;

    move-result-object v0

    .line 1747
    .local v0, "reason":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 1748
    invoke-direct {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->parseReasonHeader(Ljava/lang/String;)I

    move-result v4

    .line 1749
    .local v4, "cause":I
    const/4 v15, 0x0

    invoke-static {v4, v15}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateSIPError(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;)Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v15

    iput-object v15, v14, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionCause:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    goto :goto_13

    .line 1736
    .end local v0    # "reason":Ljava/lang/String;
    .end local v12    # "when":Ljava/lang/String;
    .end local v26    # "sessionHandle":I
    .local v4, "sessionHandle":I
    :cond_1b
    move/from16 v26, v4

    .line 1753
    .end local v4    # "sessionHandle":I
    .restart local v26    # "sessionHandle":I
    :cond_1c
    :goto_13
    invoke-virtual {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->roles()Ljava/lang/String;

    move-result-object v0

    .line 1754
    .local v0, "roles":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 1755
    const-string v4, "chairman"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1e

    const-string v4, "Administrator"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    goto :goto_14

    :cond_1d
    const/4 v4, 0x0

    goto :goto_15

    :cond_1e
    :goto_14
    const/4 v4, 0x1

    :goto_15
    iput-boolean v4, v14, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mIsChairman:Z

    .line 1757
    :cond_1f
    invoke-virtual {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;->userAlias()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v14, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDispName:Ljava/lang/String;

    .line 1758
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 1710
    .end local v0    # "roles":Ljava/lang/String;
    .end local v14    # "info":Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;
    .end local v16    # "disconnectMethod":Ljava/lang/String;
    .end local v21    # "joiningInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUserJoiningInfo;
    .end local v22    # "icon":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;
    .end local v24    # "confUsersCount":I
    .end local v26    # "sessionHandle":I
    .restart local v4    # "sessionHandle":I
    .local v10, "icon":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;
    .restart local v15    # "confUsersCount":I
    :cond_20
    move/from16 v26, v4

    move-object/from16 v22, v10

    move-object/from16 v23, v12

    move/from16 v24, v15

    .line 1708
    .end local v4    # "sessionHandle":I
    .end local v10    # "icon":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;
    .end local v13    # "user":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImConfUser;
    .end local v15    # "confUsersCount":I
    .restart local v22    # "icon":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;
    .restart local v24    # "confUsersCount":I
    .restart local v26    # "sessionHandle":I
    :goto_16
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v10, v22

    move-object/from16 v12, v23

    move/from16 v15, v24

    move/from16 v4, v26

    goto/16 :goto_a

    .end local v22    # "icon":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;
    .end local v24    # "confUsersCount":I
    .end local v26    # "sessionHandle":I
    .restart local v4    # "sessionHandle":I
    .restart local v10    # "icon":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;
    .restart local v15    # "confUsersCount":I
    :cond_21
    move/from16 v26, v4

    move-object/from16 v22, v10

    move/from16 v24, v15

    const/4 v15, 0x0

    .line 1762
    .end local v4    # "sessionHandle":I
    .end local v10    # "icon":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;
    .end local v11    # "index":I
    .end local v15    # "confUsersCount":I
    .restart local v22    # "icon":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;
    .restart local v24    # "confUsersCount":I
    .restart local v26    # "sessionHandle":I
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1763
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v4, "confinfo_update_not_allowed"

    invoke-interface {v0, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1764
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "imConferenceInfoUpdate: Drop the invalid info"

    invoke-static {v0, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    return-void

    .line 1768
    :cond_22
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;

    iget-object v12, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    .line 1769
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->maxUserCnt()J

    move-result-wide v10

    long-to-int v4, v10

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated;->sessionId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    iget-object v10, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {v10, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getImsiByUserAgent(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/lang/String;

    move-result-object v18

    move-object v11, v0

    move-object v13, v8

    move-object v10, v15

    move-object v14, v7

    move/from16 v21, v24

    .end local v24    # "confUsersCount":I
    .local v21, "confUsersCount":I
    move v15, v4

    move-object/from16 v16, v2

    move-object/from16 v19, v9

    invoke-direct/range {v11 .. v19}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;Ljava/util/List;ILcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;Ljava/lang/Object;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    .line 1770
    .local v0, "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;
    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v4, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mConferenceInfoUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v11, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {v11, v10, v0, v10}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v11}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 1771
    return-void

    .line 1612
    .end local v0    # "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;
    .end local v2    # "subjectData":Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;
    .end local v6    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .end local v7    # "participantsInfo":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;>;"
    .end local v8    # "infoType":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;
    .end local v9    # "iconData":Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;
    .end local v20    # "subjectExt":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/SubjectExt;
    .end local v21    # "confUsersCount":I
    .end local v22    # "icon":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;
    .end local v26    # "sessionHandle":I
    .end local v27    # "state":Ljava/lang/String;
    .restart local v4    # "sessionHandle":I
    :cond_23
    move/from16 v26, v4

    .line 1613
    .end local v4    # "sessionHandle":I
    .restart local v26    # "sessionHandle":I
    :goto_17
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown sessionId - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v26

    .end local v26    # "sessionHandle":I
    .restart local v4    # "sessionHandle":I
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    return-void
.end method

.method private handleImMessageReceivedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 9
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 1101
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleImMessageReceivedNotify(): invalid notify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return-void

    .line 1106
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;

    .line 1107
    .local v0, "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;->sessionData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;

    move-result-object v1

    .line 1108
    .local v1, "baseSessionData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReceived;->messageParam()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;

    move-result-object v2

    .line 1110
    .local v2, "imMessageParam":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;
    if-eqz v1, :cond_4

    if-nez v2, :cond_1

    goto :goto_0

    .line 1115
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sessionHandle()J

    move-result-wide v3

    long-to-int v3, v3

    .line 1117
    .local v3, "sessionHandle":I
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleImMessageReceivedNotify(): sessionId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v4, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 1120
    .local v4, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    if-nez v4, :cond_2

    .line 1121
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleImMessageReceivedNotify(): Unknown session handle - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    return-void

    .line 1125
    :cond_2
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->parseImMessageParam(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;)Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    move-result-object v5

    .line 1126
    .local v5, "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;
    if-eqz v5, :cond_3

    .line 1127
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mRawHandle:Ljava/lang/Object;

    .line 1128
    iget-object v6, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    iput-object v6, v5, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mChatId:Ljava/lang/String;

    .line 1129
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleImMessageReceivedNotify(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v6, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v7, Lcom/sec/internal/helper/AsyncResult;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v5, v8}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v7}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 1132
    :cond_3
    return-void

    .line 1111
    .end local v3    # "sessionHandle":I
    .end local v4    # "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    .end local v5    # "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handleImMessageReceivedNotify(): invalid message notify data"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    return-void
.end method

.method private handleImMessageReportReceivedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 12
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 1791
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    .line 1792
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleImMessageReportReceivedNotify(): invalid notify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    return-void

    .line 1796
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReportReceived;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReportReceived;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReportReceived;

    .line 1797
    .local v0, "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReportReceived;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReportReceived;->sessionId()J

    move-result-wide v1

    long-to-int v1, v1

    .line 1798
    .local v1, "sessionId":I
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v2, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 1799
    .local v2, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    iget-object v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    .line 1800
    .local v3, "chatId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReportReceived;->imdnMessageId()Ljava/lang/String;

    move-result-object v4

    .line 1801
    .local v4, "imdnId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReportReceived;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v5

    .line 1802
    .local v5, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImMessageReportReceived;->isChat()Z

    move-result v7

    .line 1803
    .local v7, "isChat":Z
    iget-object v8, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleImMessageReportReceivedNotify(): sessionId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " chatId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " imdnId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " isChat = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v8

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v8, v9, :cond_2

    .line 1807
    if-eqz v7, :cond_1

    .line 1808
    iget-object v8, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v8, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mMessageFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v9, Lcom/sec/internal/helper/AsyncResult;

    new-instance v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;

    .line 1809
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v10, v11, v3, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendMessageFailedEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-direct {v9, v6, v10, v6}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1808
    invoke-virtual {v8, v9}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 1811
    :cond_1
    iget-object v8, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v8, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v9, Lcom/sec/internal/helper/AsyncResult;

    new-instance v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;

    .line 1812
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v10, v11, v3, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/event/SendImdnFailedEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-direct {v9, v6, v10, v6}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1811
    invoke-virtual {v8, v9}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 1815
    :cond_2
    :goto_0
    return-void
.end method

.method private handleImSessionClosedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 18
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 992
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v1

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_0

    .line 993
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleImSessionClosedNotify(): invalid notify"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    return-void

    .line 996
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleImSessionClosedNotify"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;

    .line 999
    .local v1, "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;->sessionHandle()J

    move-result-wide v3

    long-to-int v3, v3

    .line 1002
    .local v3, "sessionHandle":I
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;->reasonHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v4

    .line 1003
    .local v4, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v5

    .line 1005
    .local v5, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;->referredBy()Ljava/lang/String;

    move-result-object v6

    .line 1006
    .local v6, "referredBy":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1007
    .local v7, "referredByUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v6, :cond_1

    .line 1008
    const-string v8, "\\<|\\>"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1009
    iget-object v8, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleImSessionClosedNotify() Referred By ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    invoke-static {v6}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    .line 1014
    :cond_1
    iget-object v8, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v8, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 1015
    .local v8, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    const-string v9, ", error = "

    if-nez v8, :cond_2

    .line 1016
    iget-object v10, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleImSessionClosedNotify(): no session found sessionHandle = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    return-void

    .line 1020
    :cond_2
    iget-object v10, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleImSessionClosedNotify(): sessionHandle = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", chat id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", referredBy = "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v10, 0x0

    if-eq v5, v9, :cond_7

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE_GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v5, v9, :cond_7

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CONFERENCE_PARTY_BOOTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v5, v9, :cond_7

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CONFERENCE_CALL_COMPLETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v5, v9, :cond_7

    .line 1027
    iget-object v9, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v11, "handleImSessionClosedNotify(): abnormal close"

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v9, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    if-eqz v9, :cond_3

    .line 1030
    iget-object v9, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v11, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1031
    iput-object v10, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    .line 1033
    :cond_3
    iget-object v9, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartCallback:Landroid/os/Message;

    if-eqz v9, :cond_4

    .line 1034
    iget-object v9, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v11, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartCallback:Landroid/os/Message;

    new-instance v12, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v12, v4, v10, v13}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;Ljava/lang/Object;)V

    invoke-virtual {v9, v11, v12}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1035
    iput-object v10, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartCallback:Landroid/os/Message;

    .line 1038
    :cond_4
    iget-object v9, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    if-eqz v9, :cond_5

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v5, v9, :cond_5

    .line 1039
    iget-object v9, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v11, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    new-instance v12, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v12, v13, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-virtual {v9, v11, v12}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1040
    iput-object v10, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    goto :goto_0

    .line 1041
    :cond_5
    iget-object v9, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    if-eqz v9, :cond_6

    .line 1042
    iget-object v9, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v11, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    new-instance v12, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    .line 1043
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v14, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v15, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {v14, v15, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-direct {v12, v13, v14}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 1042
    invoke-virtual {v9, v11, v12}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1044
    iput-object v10, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    .line 1048
    :cond_6
    :goto_0
    iget-object v9, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAcceptCallback:Landroid/os/Message;

    if-eqz v9, :cond_7

    .line 1049
    iget-object v9, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v11, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAcceptCallback:Landroid/os/Message;

    new-instance v12, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v12, v4, v10, v13}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;Ljava/lang/Object;)V

    invoke-virtual {v9, v11, v12}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1050
    iput-object v10, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAcceptCallback:Landroid/os/Message;

    .line 1054
    :cond_7
    new-instance v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    invoke-direct {v9, v11, v12, v4, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;)V

    .line 1055
    .local v9, "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;
    iget-object v11, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v11, v11, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessionClosedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v12, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {v12, v10, v9, v10}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v11, v12}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 1057
    iget-object v10, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v10, v10, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 1059
    .local v10, "removedSession":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    if-eqz v10, :cond_15

    .line 1060
    iget-object v11, v10, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSendMessageCallbacks:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 1061
    .local v12, "callback":Landroid/os/Message;
    if-eqz v12, :cond_8

    .line 1062
    iget-object v13, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v14, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v16, v1

    .end local v1    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    .local v16, "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move/from16 v17, v3

    .end local v3    # "sessionHandle":I
    .local v17, "sessionHandle":I
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    invoke-direct {v14, v15, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-virtual {v13, v12, v14}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_2

    .line 1061
    .end local v16    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    .end local v17    # "sessionHandle":I
    .restart local v1    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    .restart local v3    # "sessionHandle":I
    :cond_8
    move-object/from16 v16, v1

    move/from16 v17, v3

    .line 1065
    .end local v1    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    .end local v3    # "sessionHandle":I
    .end local v12    # "callback":Landroid/os/Message;
    .restart local v16    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    .restart local v17    # "sessionHandle":I
    :goto_2
    move-object/from16 v2, p1

    move-object/from16 v1, v16

    move/from16 v3, v17

    goto :goto_1

    .line 1066
    .end local v16    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    .end local v17    # "sessionHandle":I
    .restart local v1    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    .restart local v3    # "sessionHandle":I
    :cond_9
    move-object/from16 v16, v1

    move/from16 v17, v3

    .end local v1    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    .end local v3    # "sessionHandle":I
    .restart local v16    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    .restart local v17    # "sessionHandle":I
    iget-object v1, v10, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAddParticipantsCallbacks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 1067
    .local v2, "callback":Landroid/os/Message;
    if-eqz v2, :cond_a

    .line 1068
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v3, v2, v11}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1070
    .end local v2    # "callback":Landroid/os/Message;
    :cond_a
    goto :goto_3

    .line 1071
    :cond_b
    iget-object v1, v10, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mRemoveParticipantsCallbacks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 1072
    .restart local v2    # "callback":Landroid/os/Message;
    if-eqz v2, :cond_c

    .line 1073
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v3, v2, v11}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1075
    .end local v2    # "callback":Landroid/os/Message;
    :cond_c
    goto :goto_4

    .line 1076
    :cond_d
    iget-object v1, v10, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCAliasCallbacks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 1077
    .restart local v2    # "callback":Landroid/os/Message;
    if-eqz v2, :cond_e

    .line 1078
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v3, v2, v11}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1080
    .end local v2    # "callback":Landroid/os/Message;
    :cond_e
    goto :goto_5

    .line 1081
    :cond_f
    iget-object v1, v10, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCLeaderCallbacks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 1082
    .restart local v2    # "callback":Landroid/os/Message;
    if-eqz v2, :cond_10

    .line 1083
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v3, v2, v11}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1085
    .end local v2    # "callback":Landroid/os/Message;
    :cond_10
    goto :goto_6

    .line 1086
    :cond_11
    iget-object v1, v10, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCSubjectCallbacks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 1087
    .restart local v2    # "callback":Landroid/os/Message;
    if-eqz v2, :cond_12

    .line 1088
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v3, v2, v11}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1090
    .end local v2    # "callback":Landroid/os/Message;
    :cond_12
    goto :goto_7

    .line 1091
    :cond_13
    iget-object v1, v10, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCIconCallbacks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 1092
    .restart local v2    # "callback":Landroid/os/Message;
    if-eqz v2, :cond_14

    .line 1093
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v3, v2, v11}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1095
    .end local v2    # "callback":Landroid/os/Message;
    :cond_14
    goto :goto_8

    .line 1059
    .end local v16    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    .end local v17    # "sessionHandle":I
    .restart local v1    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    .restart local v3    # "sessionHandle":I
    :cond_15
    move-object/from16 v16, v1

    move/from16 v17, v3

    .line 1097
    .end local v1    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    .end local v3    # "sessionHandle":I
    .restart local v16    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionClosed;
    .restart local v17    # "sessionHandle":I
    :cond_16
    return-void
.end method

.method private handleImSessionEstablishedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 17
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 1414
    move-object/from16 v6, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_0

    .line 1415
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleImSessionEstablishedNotify(): invalid notify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    return-void

    .line 1420
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;-><init>()V

    move-object/from16 v7, p1

    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;

    .line 1421
    .local v8, "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;->sessionHandle()J

    move-result-wide v0

    long-to-int v9, v0

    .line 1424
    .local v9, "sessionHandle":I
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v10

    .line 1425
    .local v10, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v11

    .line 1428
    .local v11, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 1429
    .local v12, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    const-string v0, ", error = "

    if-nez v12, :cond_1

    .line 1430
    iget-object v1, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleImSessionEstablishedNotify(): no session found sessionHandle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    return-void

    .line 1434
    :cond_1
    iget-object v1, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleImSessionEstablishedNotify(): sessionHandle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", chat id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v11, v0, :cond_2

    .line 1440
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleImSessionEstablishedNotify(): failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    return-void

    .line 1444
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 1445
    .local v13, "acceptTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;->acceptContentLength()I

    move-result v1

    const-string v2, " "

    if-ge v0, v1, :cond_4

    .line 1446
    invoke-virtual {v8, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;->acceptContent(I)Ljava/lang/String;

    move-result-object v1

    .line 1447
    .local v1, "content":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 1448
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1445
    .end local v1    # "content":Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1451
    .end local v0    # "i":I
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 1452
    .local v14, "acceptWrappedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;->acceptWrappedContentLength()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 1453
    invoke-virtual {v8, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionEstablished;->acceptWrappedContent(I)Ljava/lang/String;

    move-result-object v1

    .line 1454
    .restart local v1    # "content":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 1455
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1452
    .end local v1    # "content":Ljava/lang/String;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1459
    .end local v0    # "i":I
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 1460
    .local v15, "acceptContent":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1461
    invoke-interface {v15, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1462
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartImMediaResponse(): acceptContent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    .line 1464
    .local v5, "supportedFeatures":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1465
    .local v1, "property":Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateAcceptContent(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    move-result-object v2

    .line 1466
    .local v2, "feature":Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;
    if-eqz v2, :cond_7

    .line 1467
    invoke-virtual {v5, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 1469
    .end local v1    # "property":Ljava/lang/String;
    .end local v2    # "feature":Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;
    :cond_7
    goto :goto_2

    .line 1470
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v1, v9

    move-object v3, v5

    move-object v4, v13

    move-object/from16 v16, v5

    .end local v5    # "supportedFeatures":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;>;"
    .local v16, "supportedFeatures":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;>;"
    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->imSessionEstablished(ILjava/lang/String;Ljava/util/EnumSet;Ljava/util/List;Ljava/util/List;)V

    .line 1471
    return-void
.end method

.method private handleImSessionProvisionalResponseNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 12
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 1980
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    .line 1981
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleImSessionProvisionalResponseNotify(): invalid notify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    return-void

    .line 1986
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;

    .line 1987
    .local v0, "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->sessionHandle()J

    move-result-wide v1

    long-to-int v1, v1

    .line 1990
    .local v1, "sessionHandle":I
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v2

    .line 1991
    .local v2, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v4

    .line 1993
    .local v4, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleImSessionProvisionalResponseNotify(): sessionHandle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", response = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v5, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 1997
    .local v5, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    if-nez v5, :cond_1

    .line 1998
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleImSessionProvisionalResponseNotify(): Unknown session handle: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    return-void

    .line 2003
    :cond_1
    iget-object v6, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    if-eqz v6, :cond_2

    .line 2004
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v8, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2005
    iput-object v3, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    .line 2009
    :cond_2
    iget-object v6, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartProvisionalCallback:Landroid/os/Message;

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    .line 2010
    iget-object v6, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartProvisionalCallback:Landroid/os/Message;

    invoke-static {v6}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v6

    .line 2011
    .local v6, "message":Landroid/os/Message;
    iget-object v9, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v10, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v10, v2, v3, v11, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;Ljava/lang/Object;Z)V

    invoke-virtual {v9, v6, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2014
    .end local v6    # "message":Landroid/os/Message;
    :cond_3
    iget-object v3, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    if-eqz v3, :cond_4

    .line 2015
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleImSessionProvisionalResponseNotify(): handle provisional response as SUCCESS for the message in INVITE. sessionHandle = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    iget-object v3, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    .line 2018
    .local v3, "message":Landroid/os/Message;
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {v10, v11, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-direct {v7, v9, v10, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Z)V

    invoke-virtual {v6, v3, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2020
    .end local v3    # "message":Landroid/os/Message;
    :cond_4
    return-void
.end method

.method private handleImSessionStartedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 27
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 931
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v1

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_0

    .line 932
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleImSessionStartedNotify(): invalid notify"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    return-void

    .line 937
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;

    .line 938
    .local v1, "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->sessionHandle()J

    move-result-wide v3

    long-to-int v3, v3

    .line 939
    .local v3, "sessionHandle":I
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->sessionUri()Ljava/lang/String;

    move-result-object v4

    .line 940
    .local v4, "sessionUri":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->displayName()Ljava/lang/String;

    move-result-object v5

    .line 943
    .local v5, "displayName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->warningHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v6

    .line 944
    .local v6, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v7

    .line 946
    .local v7, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    iget-object v8, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleImSessionStartedNotify(): sessionHandle = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", error = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", sessionUri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", displayName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    iget-object v8, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v8, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 951
    .local v15, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    if-nez v15, :cond_1

    .line 952
    iget-object v8, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleImSessionStartedNotify(): Unknown session handle: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return-void

    .line 957
    :cond_1
    iget-object v8, v15, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    const/4 v14, 0x0

    if-eqz v8, :cond_2

    .line 958
    iget-object v8, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v9, v15, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 959
    iput-object v14, v15, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    .line 963
    :cond_2
    iget-object v8, v15, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartCallback:Landroid/os/Message;

    if-eqz v8, :cond_7

    .line 964
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->retryHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RetryHdr;

    move-result-object v18

    .line 965
    .local v18, "retryHdr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RetryHdr;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->allowHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AllowHdr;

    move-result-object v19

    .line 966
    .local v19, "allowHdr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AllowHdr;
    iget-object v13, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v12, v15, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartCallback:Landroid/os/Message;

    new-instance v11, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    .line 967
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v10, v14

    goto :goto_0

    :cond_3
    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v8

    move-object v10, v8

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 968
    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RetryHdr;->retryTimer()I

    move-result v8

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    move/from16 v17, v8

    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AllowHdr;->text()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v20, v8

    goto :goto_2

    :cond_5
    move-object/from16 v20, v14

    .line 969
    :goto_2
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->isMsgRevokeSupported()Z

    move-result v21

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->isMsgFallbackSupported()Z

    move-result v22

    .line 970
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;->isChatbotRole()Z

    move-result v23

    if-nez v5, :cond_6

    const-string v8, ""

    move-object/from16 v24, v8

    goto :goto_3

    :cond_6
    move-object/from16 v24, v5

    :goto_3
    move-object v8, v11

    move-object v9, v6

    move-object/from16 v25, v1

    move-object v1, v11

    .end local v1    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;
    .local v25, "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;
    move-object/from16 v11, v16

    move-object v2, v12

    move/from16 v12, v17

    move-object/from16 v26, v4

    move-object v4, v13

    .end local v4    # "sessionUri":Ljava/lang/String;
    .local v26, "sessionUri":Ljava/lang/String;
    move-object/from16 v13, v20

    move-object/from16 v20, v5

    move-object v5, v14

    .end local v5    # "displayName":Ljava/lang/String;
    .local v20, "displayName":Ljava/lang/String;
    move/from16 v14, v21

    move-object v5, v15

    .end local v15    # "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    .local v5, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    move/from16 v15, v22

    move/from16 v16, v23

    move-object/from16 v17, v24

    invoke-direct/range {v8 .. v17}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;Ljava/lang/Object;ILjava/lang/String;ZZZLjava/lang/String;)V

    .line 966
    invoke-virtual {v4, v2, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 971
    const/4 v1, 0x0

    iput-object v1, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartCallback:Landroid/os/Message;

    goto :goto_4

    .line 963
    .end local v18    # "retryHdr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RetryHdr;
    .end local v19    # "allowHdr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AllowHdr;
    .end local v20    # "displayName":Ljava/lang/String;
    .end local v25    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;
    .end local v26    # "sessionUri":Ljava/lang/String;
    .restart local v1    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;
    .restart local v4    # "sessionUri":Ljava/lang/String;
    .local v5, "displayName":Ljava/lang/String;
    .restart local v15    # "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    :cond_7
    move-object/from16 v25, v1

    move-object/from16 v26, v4

    move-object/from16 v20, v5

    move-object v5, v15

    .line 974
    .end local v1    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;
    .end local v4    # "sessionUri":Ljava/lang/String;
    .end local v15    # "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    .local v5, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    .restart local v20    # "displayName":Ljava/lang/String;
    .restart local v25    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SessionStarted;
    .restart local v26    # "sessionUri":Ljava/lang/String;
    :goto_4
    iget-object v1, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    if-eqz v1, :cond_9

    .line 975
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v7, v1, :cond_8

    .line 976
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handle 486 response as SUCCESS for the message in INVITE."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v2, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    .line 978
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {v9, v10, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-direct {v4, v8, v9}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 977
    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_5

    .line 980
    :cond_8
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v2, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v4, v8, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 982
    :goto_5
    const/4 v1, 0x0

    iput-object v1, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    .line 985
    :cond_9
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v7, v1, :cond_a

    .line 986
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    :cond_a
    return-void
.end method

.method private handleIncomingSessionNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 18
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 778
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleIncomingSessionNotify()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const/4 v1, 0x0

    .line 781
    .local v1, "isTokenUsed":Z
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x1e

    if-eq v2, v3, :cond_0

    .line 782
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleIncomingSessionNotify(): invalid notify"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return-void

    .line 787
    :cond_0
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;-><init>()V

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;

    .line 789
    .local v2, "invite":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->userHandle()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v4

    .line 790
    .local v4, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v4, :cond_1

    .line 791
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleIncomingSessionNotify(): UserAgent not found. UserHandle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->userHandle()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    return-void

    .line 795
    :cond_1
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->session()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;

    move-result-object v5

    .line 796
    .local v5, "imSessionParam":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;
    const-string v6, "handleIncomingSessionNotify(): invalid notify data"

    if-nez v5, :cond_2

    .line 797
    iget-object v7, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    return-void

    .line 800
    :cond_2
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->baseSessionData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;

    move-result-object v7

    .line 801
    .local v7, "baseSessionData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->messageParam()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;

    move-result-object v8

    .line 802
    .local v8, "imMessageParam":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;
    if-nez v7, :cond_3

    .line 803
    iget-object v9, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return-void

    .line 808
    :cond_3
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    invoke-direct {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;-><init>()V

    .line 809
    .local v6, "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sessionHandle()J

    move-result-wide v9

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 810
    .local v9, "sessionHandle":Ljava/lang/Integer;
    iput-object v9, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    .line 811
    iget-object v10, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {v10, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getImsiByUserAgent(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    .line 812
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->isDeferred()Z

    move-result v10

    iput-boolean v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsDeferred:Z

    .line 813
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->isForStoredNoti()Z

    move-result v10

    iput-boolean v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsForStoredNoti:Z

    .line 814
    iget-object v10, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v10, v10, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    new-instance v11, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->isDeferred()Z

    move-result v13

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v14

    invoke-direct {v11, v12, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;-><init>(IZI)V

    invoke-interface {v10, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->isMsgRevokeSupported()Z

    move-result v10

    iput-boolean v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsMsgRevokeSupported:Z

    .line 816
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->isMsgFallbackSupported()Z

    move-result v10

    iput-boolean v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsMsgFallbackSupported:Z

    .line 817
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->isSendOnly()Z

    move-result v10

    iput-boolean v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsSendOnly:Z

    .line 818
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->isChatbotParticipant()Z

    move-result v10

    iput-boolean v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsChatbotRole:Z

    .line 823
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->sender()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v10

    iput-object v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    .line 825
    iget-boolean v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsChatbotRole:Z

    if-eqz v10, :cond_4

    iget-object v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    if-eqz v10, :cond_4

    iget-object v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    const-string/jumbo v11, "tk"

    invoke-virtual {v10, v11}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    iget-object v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    .line 826
    invoke-virtual {v10, v11}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "on"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 827
    const/4 v1, 0x1

    .line 829
    :cond_4
    iput-boolean v1, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsTokenUsed:Z

    .line 831
    iget-boolean v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsDeferred:Z

    if-eqz v10, :cond_5

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->isConference()Z

    move-result v10

    if-nez v10, :cond_5

    .line 832
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRecipients:Ljava/util/List;

    .line 833
    iget-object v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRecipients:Ljava/util/List;

    iget-object v11, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 835
    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRecipients:Ljava/util/List;

    .line 836
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->receiversLength()I

    move-result v11

    if-ge v10, v11, :cond_6

    .line 837
    iget-object v11, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRecipients:Ljava/util/List;

    invoke-virtual {v7, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->receivers(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 841
    .end local v10    # "i":I
    :cond_6
    :goto_1
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->isConference()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_7

    .line 842
    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;->CONFERENCE:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    iput-object v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSessionType:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    .line 843
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->isClosedGroupchat()Z

    move-result v10

    iput-boolean v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsClosedGroupChat:Z

    .line 844
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sessionUri()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v10

    iput-object v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    .line 845
    iget-object v10, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleIncomingSessionNotify(): session uri = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 847
    :cond_7
    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;->SINGLE:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    iput-object v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSessionType:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    .line 848
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->userAlias()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiatorAlias:Ljava/lang/String;

    .line 849
    iput-object v11, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    .line 852
    :goto_2
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sdpContentType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sdpContentType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    .line 853
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sdpContentType()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSdpContentType:Ljava/lang/String;

    .line 856
    :cond_8
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->serviceId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->serviceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    .line 857
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->serviceId()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mServiceId:Ljava/lang/String;

    .line 860
    :cond_9
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 861
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->deviceId()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mDeviceId:Ljava/lang/String;

    .line 865
    :cond_a
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->subject()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->subject()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->subject()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_b
    move-object v10, v11

    :goto_3
    iput-object v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSubject:Ljava/lang/String;

    .line 867
    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImServiceType;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImServiceType;

    iput-object v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mServiceType:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImServiceType;

    .line 870
    const/4 v10, 0x0

    iput-boolean v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsParticipantNtfy:Z

    .line 872
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->conversationId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->conversationId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c

    .line 873
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->conversationId()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_c
    move-object v10, v11

    :goto_4
    iput-object v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    .line 874
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->contributionId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->contributionId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_d

    .line 875
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->contributionId()Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :cond_d
    move-object v10, v11

    :goto_5
    iput-object v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    .line 876
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sessionReplaces()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_e

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sessionReplaces()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_e

    .line 877
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sessionReplaces()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mPrevContributionId:Ljava/lang/String;

    goto :goto_6

    .line 879
    :cond_e
    iput-object v11, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mPrevContributionId:Ljava/lang/String;

    .line 882
    :goto_6
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->inReplyToContributionId()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInReplyToContributionId:Ljava/lang/String;

    .line 884
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->remoteMsrpAddr()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_f

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->remoteMsrpAddr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_f

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->remoteMsrpAddr()Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_f
    move-object v10, v11

    :goto_7
    iput-object v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRemoteMsrpAddress:Ljava/lang/String;

    .line 886
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 887
    .local v10, "acceptTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_8
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->acceptTypesLength()I

    move-result v13

    const-string v14, " "

    if-ge v12, v13, :cond_11

    .line 888
    invoke-virtual {v5, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->acceptTypes(I)Ljava/lang/String;

    move-result-object v13

    .line 889
    .local v13, "content":Ljava/lang/String;
    if-eqz v13, :cond_10

    .line 890
    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 887
    .end local v13    # "content":Ljava/lang/String;
    :cond_10
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 893
    .end local v12    # "i":I
    :cond_11
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 894
    .local v12, "acceptWrappedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_9
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->acceptWrappedTypesLength()I

    move-result v15

    if-ge v13, v15, :cond_13

    .line 895
    invoke-virtual {v5, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->acceptWrappedTypes(I)Ljava/lang/String;

    move-result-object v15

    .line 896
    .local v15, "content":Ljava/lang/String;
    if-eqz v15, :cond_12

    .line 897
    invoke-virtual {v15, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v12, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 894
    .end local v15    # "content":Ljava/lang/String;
    :cond_12
    add-int/lit8 v13, v13, 0x1

    const/4 v11, 0x0

    goto :goto_9

    .line 900
    .end local v13    # "i":I
    :cond_13
    iput-object v10, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mAcceptTypes:Ljava/util/List;

    .line 901
    iput-object v12, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mAcceptWrappedTypes:Ljava/util/List;

    .line 903
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->messageParam()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;

    move-result-object v11

    const-string v13, "handleIncomingSessionNotify(): "

    if-eqz v11, :cond_15

    .line 904
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;->messageParam()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->parseImMessageParam(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;)Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    move-result-object v11

    .line 906
    .local v11, "msgEvent":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;
    if-eqz v11, :cond_14

    .line 907
    iput-object v9, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mRawHandle:Ljava/lang/Object;

    .line 908
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->userAlias()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 909
    iget-object v14, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_14
    iput-object v11, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mReceivedMessage:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    .line 915
    .end local v11    # "msgEvent":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;
    :cond_15
    new-instance v11, Lcom/sec/internal/helper/AsyncResult;

    const/4 v14, 0x0

    invoke-direct {v11, v14, v6, v14}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 916
    .local v11, "result":Lcom/sec/internal/helper/AsyncResult;
    iget-object v14, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v14, v14, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v14}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v14

    if-eqz v14, :cond_16

    .line 917
    iget-object v14, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v14, v14, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v14, v11}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    move/from16 v16, v1

    move-object/from16 v17, v2

    goto :goto_a

    .line 921
    :cond_16
    iget-object v14, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v1

    .end local v1    # "isTokenUsed":Z
    .local v16, "isTokenUsed":Z
    const-string v1, "handleIncomingSessionNotify(): Empty registrants, reject handle="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v14, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;

    sget-object v15, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->FORBIDDEN:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    move-object/from16 v17, v2

    const/4 v2, 0x0

    .end local v2    # "invite":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;
    .local v17, "invite":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImSessionInvited;
    invoke-direct {v14, v2, v9, v15, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;Landroid/os/Message;)V

    invoke-virtual {v1, v14}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleRejectImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V

    .line 925
    :goto_a
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    return-void
.end method

.method private handleMessageRevokeResponseReceivedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 6
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 2023
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    .line 2024
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessageRevokeResponseReceivedNotify(): invalid notify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    return-void

    .line 2027
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/MessageRevokeResponseReceived;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/MessageRevokeResponseReceived;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/MessageRevokeResponseReceived;

    .line 2029
    .local v0, "response":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/MessageRevokeResponseReceived;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/MessageRevokeResponseReceived;->uri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 2030
    .local v1, "remoteUri":Lcom/sec/ims/util/ImsUri;
    if-nez v1, :cond_1

    .line 2031
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid remote uri, return. uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/MessageRevokeResponseReceived;->uri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    return-void

    .line 2035
    :cond_1
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/MessageRevokeResponseReceived;->imdnMessageId()Ljava/lang/String;

    move-result-object v3

    .line 2036
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/MessageRevokeResponseReceived;->result()Z

    move-result v4

    invoke-direct {v2, v1, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;-><init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Z)V

    .line 2038
    .local v2, "event":Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessageRevokeResponseReceivedNotify: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v3, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    new-instance v4, Lcom/sec/internal/helper/AsyncResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2, v5}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 2040
    return-void
.end method

.method private handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 2
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 705
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notifyid()I

    move-result v0

    const/16 v1, 0x4a38

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    .line 773
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleNotify(): unexpected id"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 767
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleRequestChatbotAnonymizeNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 768
    goto :goto_0

    .line 764
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleRequestChatbotAnonymizeResp(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 765
    goto :goto_0

    .line 770
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleReportChatbotAsSpamResponseNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 771
    goto :goto_0

    .line 728
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleFtIncomingSessionNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 729
    goto :goto_0

    .line 725
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleFtProgressNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 726
    goto :goto_0

    .line 734
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleFtSessionEstablishedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 735
    goto :goto_0

    .line 737
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleFtSessionClosedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 738
    goto :goto_0

    .line 722
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleFtSessionStartedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 723
    goto :goto_0

    .line 761
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleSendMessageRevokeResponseNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 762
    goto :goto_0

    .line 758
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleMessageRevokeResponseReceivedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 759
    goto :goto_0

    .line 755
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleImSessionProvisionalResponseNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 756
    goto :goto_0

    .line 752
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleGroupChatInfoNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 753
    goto :goto_0

    .line 749
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleGroupChatListNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 750
    goto :goto_0

    .line 746
    :pswitch_d
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleGroupChatSubscribeStatusNotify()V

    .line 747
    goto :goto_0

    .line 743
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleImMessageReportReceivedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 744
    goto :goto_0

    .line 719
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleImComposingStatusReceivedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 720
    goto :goto_0

    .line 716
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleImMessageReceivedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 717
    goto :goto_0

    .line 707
    :pswitch_11
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleIncomingSessionNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 708
    goto :goto_0

    .line 731
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleImSessionEstablishedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 732
    goto :goto_0

    .line 713
    :pswitch_13
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleImSessionClosedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 714
    goto :goto_0

    .line 710
    :pswitch_14
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleImSessionStartedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 711
    goto :goto_0

    .line 740
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleImConferenceInfoUpdateNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 741
    nop

    .line 775
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2af9
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2aff
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2ee1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4e2b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleRejectFtSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V
    .locals 8
    .param p1, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;

    .line 541
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 544
    .local v0, "sessionHandle":I
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v1

    .line 547
    .local v1, "reason":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v3, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    .line 548
    .local v3, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;
    const-string v4, ", result = "

    if-nez v3, :cond_0

    .line 549
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleRejectFtSessionResponse(): cannot find session sessionHandle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-void

    .line 553
    :cond_0
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleRejectFtSessionResponse(): sessionHandle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iget-object v4, v4, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 558
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v5, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iget-object v5, v5, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 559
    iget-object v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iput-object v2, v4, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    .line 561
    :cond_1
    return-void
.end method

.method private handleRejectImSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V
    .locals 9
    .param p1, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;

    .line 565
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 568
    .local v0, "sessionHandle":I
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v1

    .line 569
    .local v1, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v3

    .line 572
    .local v3, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v4, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 573
    .local v4, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    const-string v5, ", error = "

    if-nez v4, :cond_0

    .line 574
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleRejectImSessionResponse(): no session found sessionHandle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    return-void

    .line 577
    :cond_0
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleRejectImSessionResponse(): sessionHandle = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", chat id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v5, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mRejectCallback:Landroid/os/Message;

    if-eqz v5, :cond_1

    .line 583
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v6, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mRejectCallback:Landroid/os/Message;

    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 584
    iput-object v2, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mRejectCallback:Landroid/os/Message;

    .line 586
    :cond_1
    return-void
.end method

.method private handleRemoveParticipantsResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;)V
    .locals 7
    .param p1, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;

    .line 414
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRemoveParticipantsResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 417
    .local v0, "sessionHandle":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 418
    .local v1, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    if-nez v1, :cond_0

    .line 419
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleRemoveParticipantsResponse(): no session found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-void

    .line 421
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->reqKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleRemoveParticipantsResponse(): response has no request key"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void

    .line 426
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->warningHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v2

    .line 427
    .local v2, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v3

    .line 428
    .local v3, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mRemoveParticipantsCallbacks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;->reqKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 429
    .local v4, "callback":Landroid/os/Message;
    if-eqz v4, :cond_2

    .line 430
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {v5, v4, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    .line 432
    :cond_2
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v6, "handleRemoveParticipantsResponse(): no callback set"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :goto_0
    return-void
.end method

.method private handleReportChatbotAsSpamResponseNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 8
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 2108
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    .line 2109
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleChatbotAsSpamResp(): invalid notify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    return-void

    .line 2113
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReportChatbotAsSpamResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReportChatbotAsSpamResponse;-><init>()V

    .line 2114
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReportChatbotAsSpamResponse;

    .line 2115
    .local v0, "response":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReportChatbotAsSpamResponse;
    if-nez v0, :cond_1

    .line 2116
    return-void

    .line 2118
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReportChatbotAsSpamResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v1

    .line 2119
    .local v1, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v3

    .line 2120
    .local v3, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/event/ReportChatbotAsSpamRespEvent;

    .line 2121
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReportChatbotAsSpamResponse;->uri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReportChatbotAsSpamResponse;->requestId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ReportChatbotAsSpamRespEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    .line 2122
    .local v4, "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/ReportChatbotAsSpamRespEvent;
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleReportChatbotAsSpamResponseNotify: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v5, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mReportChatbotAsSpamRespRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v6, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {v6, v2, v4, v2}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2124
    invoke-virtual {v5, v6}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 2125
    return-void
.end method

.method private handleRequestChatbotAnonymizeNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 10
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 2082
    const-string v0, ""

    .line 2083
    .local v0, "aliasResult":Ljava/lang/String;
    const-string v1, ""

    .line 2084
    .local v1, "aliasCommandId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    .line 2085
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleSetChatbotAnonymizeResponseNotify(): invalid notify"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    return-void

    .line 2088
    :cond_0
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponseReceived;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponseReceived;-><init>()V

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponseReceived;

    .line 2090
    .local v2, "response":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponseReceived;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponseReceived;->uri()Ljava/lang/String;

    move-result-object v3

    .line 2091
    .local v3, "chatbotUri":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponseReceived;->result()Ljava/lang/String;

    move-result-object v4

    .line 2092
    .local v4, "resultXml":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->getInstance()Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;

    move-result-object v5

    .line 2093
    .local v5, "mUtils":Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;
    if-eqz v4, :cond_1

    .line 2095
    :try_start_0
    const-string v6, "AM/result"

    invoke-virtual {v5, v4, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->parseXml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 2096
    const-string v6, "AM/Command-ID"

    invoke-virtual {v5, v4, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatbotXmlUtils;->parseXml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    .line 2099
    goto :goto_0

    .line 2097
    :catch_0
    move-exception v6

    .line 2098
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 2102
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeNotifyEvent;

    invoke-direct {v6, v3, v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeNotifyEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    .local v6, "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeNotifyEvent;
    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ChatbotAnonymizeNotifyEvent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v7, v7, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mChatbotAnonymizeNotifyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v8, Lcom/sec/internal/helper/AsyncResult;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v6, v9}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 2105
    return-void
.end method

.method private handleRequestChatbotAnonymizeResp(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 11
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 2062
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 2063
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRequestChatbotAnonymizeResp(): invalid notify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    return-void

    .line 2066
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponse;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponse;

    .line 2067
    .local v0, "response":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponse;
    if-nez v0, :cond_1

    .line 2068
    return-void

    .line 2070
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v1

    .line 2071
    .local v1, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v3

    .line 2072
    .local v3, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponse;->uri()Ljava/lang/String;

    move-result-object v4

    .line 2073
    .local v4, "chatbotUri":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponse;->commandId()Ljava/lang/String;

    move-result-object v5

    .line 2074
    .local v5, "commandId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RequestChatbotAnonymizeResponse;->retryAfter()I

    move-result v6

    .line 2076
    .local v6, "retryAfter":I
    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;

    invoke-direct {v7, v4, v3, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Ljava/lang/String;I)V

    .line 2077
    .local v7, "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;
    iget-object v8, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ChatbotAnonymizeRespEvent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2078
    iget-object v8, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v8, v8, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mChatbotAnonymizeResponseRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v9, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {v9, v2, v7, v2}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v8, v9}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 2079
    return-void
.end method

.method private handleSendMessageResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImMessageResponse;)V
    .locals 6
    .param p1, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImMessageResponse;

    .line 348
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSendMessageResponse()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImMessageResponse;->sessionId()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 351
    .local v0, "sessionHandle":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 352
    .local v1, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    if-nez v1, :cond_0

    .line 353
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSendMessageResponse(): no session found sessionHandle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void

    .line 356
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImMessageResponse;->imdnMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->findAndRemoveCallback(Ljava/lang/String;)Landroid/os/Message;

    move-result-object v2

    .line 357
    .local v2, "sendMessageCallback":Landroid/os/Message;
    if-nez v2, :cond_1

    .line 358
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSendMessageResponse(): no response callback set. sessionHandle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " imdnid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImMessageResponse;->imdnMessageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 358
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void

    .line 363
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImMessageResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v3

    .line 364
    .local v3, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    invoke-direct {v5, v0, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-virtual {v4, v2, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 365
    return-void
.end method

.method private handleSendMessageRevokeInternalResponse(Landroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendMessageRevokeInternalResponse;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendMessageRevokeInternalResponse;

    .line 689
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendMessageRevokeInternalResponse() msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "response : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    if-nez p2, :cond_0

    .line 691
    return-void

    .line 693
    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendMessageRevokeInternalResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v0

    .line 694
    .local v0, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v1

    .line 695
    .local v1, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    if-eqz p1, :cond_1

    .line 696
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {v2, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 698
    :cond_1
    return-void
.end method

.method private handleSendMessageRevokeResponseNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 8
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 2043
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_0

    .line 2044
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSendMessageRevokeResponseNotify(): invalid notify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    return-void

    .line 2047
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SendMessageRevokeResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SendMessageRevokeResponse;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SendMessageRevokeResponse;

    .line 2048
    .local v0, "response":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SendMessageRevokeResponse;
    if-nez v0, :cond_1

    .line 2049
    return-void

    .line 2051
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SendMessageRevokeResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v1

    .line 2052
    .local v1, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v3

    .line 2054
    .local v3, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SendMessageRevokeResponse;->imdnMessageId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v3, v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    invoke-direct {v4, v2, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;-><init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Z)V

    .line 2056
    .local v4, "event":Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSendMessageRevokeResponseNotify: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v5, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSendMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    new-instance v6, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {v6, v2, v4, v2}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v5, v6}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 2058
    return-void
.end method

.method private handleSetMoreInfoToSipUAResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    .line 701
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetMoreInfoToSipUAResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return-void
.end method

.method private handleStartFtSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V
    .locals 9
    .param p1, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;

    .line 437
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 438
    .local v0, "sessionHandle":I
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->fwSessionId()Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "fileTransferId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v2

    .line 443
    .local v2, "reason":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleStartFtSessionResponse(): sessionHandle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", FT id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v4, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mPendingFtSessions:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    .line 447
    .local v4, "ftSession":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;
    if-nez v4, :cond_0

    .line 448
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v5, "handleStartFtSessionResponse: cannot find session!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void

    .line 453
    :cond_0
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v5, v6, :cond_2

    .line 456
    iput v0, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mHandle:I

    .line 457
    iget-object v5, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartSessionHandleCallback:Landroid/os/Message;

    if-eqz v5, :cond_1

    .line 458
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v6, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartSessionHandleCallback:Landroid/os/Message;

    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 459
    iput-object v3, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartSessionHandleCallback:Landroid/os/Message;

    .line 461
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v3, v3, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object v3, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    if-eqz v3, :cond_3

    .line 466
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v5, "handleStartFtSessionResponse(): send postponed cancel request"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendFtCancelRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;)V

    goto :goto_0

    .line 471
    :cond_2
    iget-object v5, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    if-eqz v5, :cond_3

    .line 472
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v6, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 473
    iput-object v3, v4, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    .line 477
    :cond_3
    :goto_0
    return-void
.end method

.method private handleStartImSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V
    .locals 12
    .param p1, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;

    .line 249
    if-nez p1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "response object is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void

    .line 254
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 255
    .local v0, "sessionHandle":I
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->fwSessionId()Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "fwSessionId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v2

    .line 259
    .local v2, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v4

    .line 261
    .local v4, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleStartImSessionResponse(): sessionHandle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", fwSessionId = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", error = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v5, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 267
    .local v5, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    if-nez v5, :cond_1

    .line 268
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v6, "handleStartImSessionResponse(): cannot find session!"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void

    .line 273
    :cond_1
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v4, v6, :cond_2

    .line 276
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    .line 277
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v6, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v6, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    if-eqz v6, :cond_6

    .line 281
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v7, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 282
    iput-object v3, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    goto :goto_1

    .line 287
    :cond_2
    iget-object v6, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    if-eqz v6, :cond_3

    .line 288
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v7, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    invoke-virtual {v6, v7, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 289
    iput-object v3, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartSyncCallback:Landroid/os/Message;

    .line 292
    :cond_3
    iput-object v3, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartProvisionalCallback:Landroid/os/Message;

    .line 295
    iget-object v6, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartCallback:Landroid/os/Message;

    if-eqz v6, :cond_4

    .line 296
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v7, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartCallback:Landroid/os/Message;

    new-instance v8, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    invoke-direct {v8, v2, v3, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v8}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 297
    iput-object v3, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStartCallback:Landroid/os/Message;

    .line 300
    :cond_4
    iget-object v6, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    if-eqz v6, :cond_6

    .line 301
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v4, v6, :cond_5

    .line 302
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v7, "handle 486 response as SUCCESS for the message in INVITE."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v7, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    new-instance v8, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    .line 304
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {v10, v11, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-direct {v8, v9, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 303
    invoke-virtual {v6, v7, v8}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_0

    .line 306
    :cond_5
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v7, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    new-instance v8, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-virtual {v6, v7, v8}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 308
    :goto_0
    iput-object v3, v5, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    .line 311
    :cond_6
    :goto_1
    return-void
.end method

.method private handleSubscribeGroupChatInfoResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    .line 685
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSubscribeGroupChatInfoResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method private handleSubscribeGroupChatListResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    .line 681
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSubscribeGroupChatListResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    return-void
.end method

.method private imSessionEstablished(ILjava/lang/String;Ljava/util/EnumSet;Ljava/util/List;Ljava/util/List;)V
    .locals 15
    .param p1, "sessionHandle"    # I
    .param p2, "sessionUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1475
    .local p3, "supportedFeatures":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;>;"
    .local p4, "acceptTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "acceptWrappedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imSessionEstablished(): sessionHandle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", session uri = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", features = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v2, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    .line 1480
    .local v2, "session":Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;
    if-nez v2, :cond_0

    .line 1481
    return-void

    .line 1484
    :cond_0
    iget-object v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    .line 1486
    .local v3, "chatId":Ljava/lang/String;
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "imSessionEstablished(): chatid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    if-nez v3, :cond_1

    .line 1489
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v7, "imSessionEstablished(): Failed to find chat id."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    return-void

    .line 1493
    :cond_1
    const/4 v13, 0x0

    if-nez v1, :cond_2

    move-object v9, v13

    goto :goto_0

    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    move-object v9, v6

    .line 1494
    .local v9, "uri":Lcom/sec/ims/util/ImsUri;
    :goto_0
    new-instance v14, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v6, v14

    move-object v8, v3

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-direct/range {v6 .. v12}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/EnumSet;Ljava/util/List;Ljava/util/List;)V

    .line 1495
    .local v6, "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;
    iget-object v7, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->mResipImHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;

    iget-object v7, v7, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v8, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {v8, v13, v6, v13}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 1496
    return-void
.end method

.method private parseImMessageParam(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;)Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;
    .locals 10
    .param p1, "param"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;

    .line 2128
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;-><init>()V

    .line 2130
    .local v0, "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;
    if-nez p1, :cond_0

    .line 2131
    return-object v0

    .line 2134
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2135
    .local v1, "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2136
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->messageId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 2137
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->notiLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2138
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->noti(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2137
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2140
    .end local v2    # "i":I
    :cond_1
    nop

    .line 2141
    invoke-static {v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateStackImdnNoti(Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mDispositionNotification:Ljava/util/Set;

    .line 2144
    :try_start_0
    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2145
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->datetime()Ljava/lang/String;

    move-result-object v2

    .line 2146
    .local v2, "datetime":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    :goto_1
    iput-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2151
    .end local v2    # "datetime":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 2148
    :catch_0
    move-exception v2

    .line 2149
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 2150
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    .line 2153
    .end local v2    # "e":Ljava/text/ParseException;
    :goto_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->originalToHdr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2154
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->originalToHdr()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 2156
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->recRouteLength()I

    move-result v2

    if-lez v2, :cond_6

    .line 2157
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    .line 2158
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->recRouteLength()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 2159
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->recRoute(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;

    move-result-object v3

    .line 2160
    .local v3, "route":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;
    if-eqz v3, :cond_5

    .line 2161
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imdn route: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->uri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mImdnMessageId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    iget-object v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;

    iget-object v6, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 2164
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->uri()Ljava/lang/String;

    move-result-object v7

    .line 2165
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2158
    .end local v3    # "route":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2172
    .end local v2    # "i":I
    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->contentType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 2173
    nop

    .line 2174
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->body()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 2173
    invoke-static {v2, v3}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->adjustMessageBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 2175
    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mBody:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 2176
    const/4 v2, 0x0

    return-object v2

    .line 2179
    :cond_7
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->sender()Ljava/lang/String;

    move-result-object v2

    .line 2182
    .local v2, "sender":Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 2183
    const-string v3, "\\<|\\>"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2184
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parseImMessageParam sender="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 2187
    :cond_8
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->silenceSupported()Z

    move-result v3

    iput-boolean v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mIsRoutingMsg:Z

    .line 2188
    iget-boolean v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mIsRoutingMsg:Z

    if-eqz v3, :cond_9

    .line 2189
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "parseImMessageParam -> routing message"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->requestUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mRequestUri:Lcom/sec/ims/util/ImsUri;

    .line 2191
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->pAssertedId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mPAssertedId:Lcom/sec/ims/util/ImsUri;

    .line 2192
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->receiver()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mReceiver:Lcom/sec/ims/util/ImsUri;

    .line 2194
    :cond_9
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->userAlias()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 2196
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->deviceName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->deviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    .line 2197
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->deviceName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mDeviceName:Ljava/lang/String;

    .line 2200
    :cond_a
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->reliableMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->reliableMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 2201
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->reliableMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mReliableMessage:Ljava/lang/String;

    .line 2204
    :cond_b
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-direct {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;-><init>()V

    iput-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 2205
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->cpimNamespacesLength()I

    move-result v4

    if-ge v3, v4, :cond_e

    .line 2208
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->cpimNamespaces(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;

    move-result-object v4

    .line 2209
    .local v4, "protoNamespace":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;
    if-eqz v4, :cond_d

    .line 2210
    iget-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->uri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->addNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_5
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->headersLength()I

    move-result v6

    if-ge v5, v6, :cond_d

    .line 2213
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->headers(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;

    move-result-object v6

    .line 2214
    .local v6, "header":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->key()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 2215
    iget-object v7, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->getNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;

    move-result-object v7

    .line 2216
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->key()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->value()Ljava/lang/String;

    move-result-object v9

    .line 2215
    invoke-virtual {v7, v8, v9}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    .end local v6    # "header":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 2205
    .end local v4    # "protoNamespace":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;
    .end local v5    # "j":I
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2222
    .end local v3    # "i":I
    :cond_e
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->extraFt()Z

    move-result v3

    iput-boolean v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mExtraFt:Z

    .line 2224
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->ccParticipantsLength()I

    move-result v3

    if-lez v3, :cond_10

    .line 2225
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCcParticipants:Ljava/util/List;

    .line 2226
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->ccParticipantsLength()I

    move-result v4

    if-ge v3, v4, :cond_f

    .line 2227
    iget-object v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCcParticipants:Ljava/util/List;

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->ccParticipants(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2226
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 2229
    .end local v3    # "i":I
    :cond_f
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parseImMessageParam event.mCcParticipants="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCcParticipants:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2232
    :cond_10
    return-object v0
.end method

.method private parseReasonHeader(Ljava/lang/String;)I
    .locals 6
    .param p1, "header"    # Ljava/lang/String;

    .line 1774
    const/4 v0, 0x0

    .line 1775
    .local v0, "cause":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1777
    :try_start_0
    const-string v1, "cause="

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1778
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 1779
    add-int/lit8 v2, v1, 0x6

    add-int/lit8 v3, v1, 0x9

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1780
    .local v2, "code":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parseReasonHeader : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 1785
    .end local v1    # "index":I
    .end local v2    # "code":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1783
    :catch_0
    move-exception v1

    .line 1784
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1787
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 159
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 244
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStackResponseHandler.handleMessage(): unhandled event - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 218
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleChangeGroupChatIconResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;)V

    .line 219
    goto/16 :goto_0

    .line 240
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleSetMoreInfoToSipUAResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;)V

    .line 241
    goto/16 :goto_0

    .line 234
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 235
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_SEND_MESSAGE_REVOKE_REQUEST: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendMessageRevokeInternalResponse;

    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleSendMessageRevokeInternalResponse(Landroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendMessageRevokeInternalResponse;)V

    .line 237
    goto/16 :goto_0

    .line 230
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleSubscribeGroupChatInfoResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;)V

    .line 231
    goto/16 :goto_0

    .line 226
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleSubscribeGroupChatListResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;)V

    .line 227
    goto/16 :goto_0

    .line 222
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleChangeGroupChatAliasResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;)V

    .line 223
    goto/16 :goto_0

    .line 214
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleChangeGroupChatSubjectResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;)V

    .line 215
    goto/16 :goto_0

    .line 185
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleRemoveParticipantsResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;)V

    .line 186
    goto/16 :goto_0

    .line 189
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleStartFtSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V

    .line 190
    goto/16 :goto_0

    .line 201
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleRejectFtSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V

    .line 202
    goto/16 :goto_0

    .line 197
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleCancelFtSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V

    .line 198
    goto/16 :goto_0

    .line 193
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleAcceptFtSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V

    .line 194
    goto :goto_0

    .line 168
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImMessageResponse;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleSendMessageResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImMessageResponse;)V

    .line 169
    goto :goto_0

    .line 209
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 210
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleCloseImSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;Landroid/os/Message;)V

    .line 211
    goto :goto_0

    .line 164
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleAcceptImSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V

    .line 165
    goto :goto_0

    .line 161
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleStartImSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V

    .line 162
    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 173
    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleChangeGroupChatLeaderResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;)V

    .line 178
    goto :goto_0

    .line 205
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleRejectImSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V

    .line 206
    goto :goto_0

    .line 181
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;->handleAddParticipantsResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;)V

    .line 182
    nop

    .line 246
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
