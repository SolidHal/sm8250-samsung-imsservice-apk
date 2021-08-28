.class public Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;
.super Lcom/sec/internal/ims/core/handler/SlmHandler;
.source "ResipSlmHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;,
        Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;
    }
.end annotation


# static fields
.field private static final EVENT_ACCEPT_FT_SLM_MESSAGE:I = 0x2

.field private static final EVENT_ACCEPT_SLM_LMM_SESSION:I = 0x7

.field private static final EVENT_CANCEL_FT_SLM_MESSAGE:I = 0x3

.field private static final EVENT_REJECT_FT_SLM_MESSAGE:I = 0x4

.field private static final EVENT_REJECT_SLM_LMM_SESSION:I = 0x8

.field private static final EVENT_SEND_DISPOSITION_NOTIFICATION:I = 0x6

.field private static final EVENT_SEND_FT_SLM_MESSAGE:I = 0x5

.field private static final EVENT_SEND_SLM_MESSAGE:I = 0x1

.field private static final EVENT_STACK_NOTIFY:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private final mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mIncomingSlmLMMSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mMessageSendRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;

.field private final mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    const-class v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 188
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;
    .param p3, "imdnHandler"    # Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    .line 192
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/SlmHandler;-><init>(Landroid/os/Looper;)V

    .line 124
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 125
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 126
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 127
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingSlmLMMSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessageSendRequests:Ljava/util/Map;

    .line 193
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 194
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;

    .line 195
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    .line 198
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerSlmHandler(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;
    .param p1, "x1"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;

    .line 101
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleSendMessageResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;
    .param p1, "x1"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;

    .line 101
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleSendFileResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;
    .param p1, "x1"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;

    .line 101
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleCancelResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;
    .param p1, "x1"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 101
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;
    .param p1, "x1"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;

    .line 101
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleAcceptSlmLMMSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;
    .param p1, "x1"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;

    .line 101
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleRejectSlmLMMSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 101
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private couldBeEmailGateway(Ljava/lang/String;)Z
    .locals 6
    .param p1, "address"    # Ljava/lang/String;

    .line 1438
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldBeEmailGateway("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-gt v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    return v3
.end method

.method private handleAcceptFileRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;)V
    .locals 26
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;

    .line 643
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAcceptFileRequest(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mRawHandle:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 648
    .local v2, "sessionHandle":I
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 649
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-direct {v0, v3, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 650
    iput-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    .line 653
    :cond_0
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    .line 655
    .local v3, "session":Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;
    const-string v5, "handleAcceptFileRequest(): no listener!"

    if-nez v3, :cond_2

    .line 656
    sget-object v6, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v7, "handleAcceptFileRequest(): session not found!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v6}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v6

    if-eqz v6, :cond_1

    .line 658
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v6, Lcom/sec/internal/helper/AsyncResult;

    new-instance v15, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    .line 659
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mMessageId:I

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    sget-object v14, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    const/16 v16, 0x0

    move-object v7, v15

    move-object v4, v15

    move-object/from16 v15, v16

    invoke-direct/range {v7 .. v15}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;-><init>(Ljava/lang/Object;IJJLcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    const/4 v7, 0x0

    invoke-direct {v6, v7, v4, v7}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 658
    invoke-virtual {v5, v6}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 661
    :cond_1
    sget-object v4, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :goto_0
    return-void

    .line 667
    :cond_2
    iget-object v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mIncomingFtSession:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;

    .line 668
    .local v4, "notify":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->payload()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;

    move-result-object v6

    .line 669
    .local v6, "ftPayload":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;
    if-nez v6, :cond_3

    .line 670
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v7, "handleAcceptFileRequest(): ftpayload is null"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return-void

    .line 673
    :cond_3
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->fileAttr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;

    move-result-object v7

    .line 674
    .local v7, "fileAttr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;
    if-nez v7, :cond_4

    .line 675
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v8, "handleAcceptFileRequest(): fileAttr is null"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return-void

    .line 679
    :cond_4
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->path()Ljava/lang/String;

    move-result-object v8

    .line 680
    .local v8, "filePath":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->contentType()Ljava/lang/String;

    move-result-object v9

    .line 681
    .local v9, "contentType":Ljava/lang/String;
    if-nez v8, :cond_5

    .line 682
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v10, "handleAcceptFileRequest(): file info is null"

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return-void

    .line 686
    :cond_5
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v10

    .line 687
    .local v10, "mimeTypeMap":Landroid/webkit/MimeTypeMap;
    if-eqz v9, :cond_6

    invoke-virtual {v10, v9}, Landroid/webkit/MimeTypeMap;->hasMimeType(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 688
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 691
    :cond_6
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 692
    .local v11, "in":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mFilePath:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 693
    .local v12, "out":Ljava/io/File;
    invoke-static {v11, v12}, Lcom/sec/internal/helper/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v13

    .line 694
    .local v13, "isCopied":Z
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 698
    iget-object v14, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v14}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v14

    if-eqz v14, :cond_8

    .line 699
    new-instance v5, Lcom/sec/internal/helper/AsyncResult;

    new-instance v14, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v15, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mMessageId:I

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->size()J

    move-result-wide v20

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->size()J

    move-result-wide v22

    .line 700
    if-eqz v13, :cond_7

    sget-object v16, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->COMPLETED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    goto :goto_1

    :cond_7
    sget-object v16, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    :goto_1
    move-object/from16 v24, v16

    const/16 v25, 0x0

    move-object/from16 v17, v14

    move/from16 v19, v15

    invoke-direct/range {v17 .. v25}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;-><init>(Ljava/lang/Object;IJJLcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    const/4 v15, 0x0

    invoke-direct {v5, v15, v14, v15}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 701
    .local v5, "result":Lcom/sec/internal/helper/AsyncResult;
    iget-object v14, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v14, v5}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 702
    .end local v5    # "result":Lcom/sec/internal/helper/AsyncResult;
    goto :goto_2

    .line 703
    :cond_8
    sget-object v14, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    invoke-static {v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :goto_2
    return-void
.end method

.method private handleAcceptSlmLMMSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;)V
    .locals 12
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;

    .line 709
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAcceptSlmLMMSessionRequest(): params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 712
    .local v0, "sessionHandle":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    .line 713
    .local v1, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;->mOwnImsi:Ljava/lang/String;

    const-string/jumbo v3, "slm"

    invoke-interface {v1, v3, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 714
    .local v2, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v2, :cond_1

    .line 715
    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handleAcceptSlmLMMSessionRequest(): User agent not found!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 717
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;->mCallback:Landroid/os/Message;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {p0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 718
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;->mCallback:Landroid/os/Message;

    .line 720
    :cond_0
    return-void

    .line 723
    :cond_1
    new-instance v3, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v9, v3

    .line 724
    .local v9, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;->mUserAlias:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, ""

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;->mUserAlias:Ljava/lang/String;

    :goto_0
    invoke-virtual {v9, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 727
    .local v10, "uaOffset":I
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptSlmLMMSession;->startRequestAcceptSlmLMMSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 728
    int-to-long v3, v0

    invoke-static {v9, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptSlmLMMSession;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 729
    invoke-static {v9, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptSlmLMMSession;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 730
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptSlmLMMSession;->endRequestAcceptSlmLMMSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 732
    .local v3, "offset":I
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 733
    const/16 v4, 0x20b

    invoke-static {v9, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 734
    const/16 v4, 0x39

    invoke-static {v9, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 735
    invoke-static {v9, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 736
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v11

    .line 739
    .end local v3    # "offset":I
    .local v11, "offset":I
    const/16 v4, 0x20b

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    move-object v3, p0

    move-object v5, v9

    move v6, v11

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 740
    return-void
.end method

.method private handleAcceptSlmLMMSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V
    .locals 6
    .param p1, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;

    .line 787
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 790
    .local v0, "sessionHandle":I
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v1

    .line 791
    .local v1, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v2

    .line 793
    .local v2, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAcceptSlmLMMSessionResponse() sessionHandle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    return-void
.end method

.method private handleCancelFileTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .locals 8
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 1255
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCancelFileTransfer(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mRawHandle:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1258
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleCancelFileTransfer: params.mRawHandle is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v2, v3, v4, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1261
    iput-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    .line 1263
    :cond_0
    return-void

    .line 1268
    :cond_1
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1269
    .local v0, "sessionHandle":I
    const/4 v2, 0x0

    .line 1270
    .local v2, "session":Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mImdnMessageId:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1271
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessageSendRequests:Ljava/util/Map;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mImdnMessageId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    .line 1274
    :cond_2
    if-eqz v2, :cond_3

    .line 1275
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleCancelFileTransfer(): pending message - postpone"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iput-object p1, v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 1277
    return-void

    .line 1280
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    .line 1281
    if-nez v2, :cond_5

    .line 1282
    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handleCancelFileTransfer(): unknown session!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v3, :cond_4

    .line 1284
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-direct {p0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1285
    iput-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    .line 1287
    :cond_4
    return-void

    .line 1291
    :cond_5
    iget-object v1, v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    if-eqz v1, :cond_6

    .line 1292
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleCancelFileTransfer(): cancel already in progress!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    return-void

    .line 1296
    :cond_6
    iput-object p1, v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 1297
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCancelRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;)V

    .line 1298
    return-void
.end method

.method private handleCancelResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V
    .locals 7
    .param p1, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;

    .line 1348
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1349
    .local v0, "sessionHandle":I
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v1

    .line 1351
    .local v1, "reason":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCancelResponse(): sessionHandle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    .line 1356
    .local v3, "session":Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;
    if-nez v3, :cond_0

    .line 1357
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handleCancelResponse(): cannot find ftsession"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    return-void

    .line 1361
    :cond_0
    iget-object v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iget-object v4, v4, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 1362
    iget-object v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iget-object v4, v4, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-direct {p0, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1363
    iget-object v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iput-object v2, v4, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    goto :goto_0

    .line 1365
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handleCancelResponse(): no callback set"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    :goto_0
    return-void
.end method

.method private handleIncomingSlmFileNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 19
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 960
    move-object/from16 v1, p0

    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleIncomingSlmFileNotify()"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v2, 0x29

    if-eq v0, v2, :cond_0

    .line 964
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleIncomingSlmFileNotify(): invalid notify"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    return-void

    .line 968
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;

    .line 969
    .local v3, "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->session()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;

    move-result-object v4

    .line 970
    .local v4, "baseSessionData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->payload()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;

    move-result-object v5

    .line 971
    .local v5, "ftPayload":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;
    if-eqz v4, :cond_15

    if-nez v5, :cond_1

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    goto/16 :goto_b

    .line 975
    :cond_1
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->fileAttr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;

    move-result-object v6

    .line 976
    .local v6, "fileAttr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;
    if-nez v6, :cond_2

    .line 977
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v7, "handleIncomingSlmFileNotify(): fileAttr is null"

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    return-void

    .line 981
    :cond_2
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v7

    .line 982
    .local v7, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->userHandle()J

    move-result-wide v8

    long-to-int v0, v8

    invoke-interface {v7, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 983
    .local v8, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v8, :cond_3

    .line 984
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v9, "handleIncomingSlmFileNotify(): User agent not found!"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    return-void

    .line 988
    :cond_3
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sessionHandle()J

    move-result-wide v9

    long-to-int v9, v9

    .line 989
    .local v9, "sessionHandle":I
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;-><init>()V

    move-object v10, v0

    .line 992
    .local v10, "session":Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v10, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    .line 993
    iput-object v3, v10, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mIncomingFtSession:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;

    .line 994
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->userHandle()J

    move-result-wide v11

    long-to-int v0, v11

    iput v0, v10, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mUaHandle:I

    .line 998
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;-><init>()V

    move-object v11, v0

    .line 999
    .local v11, "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    .line 1000
    const/4 v0, 0x1

    iput-boolean v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    .line 1001
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->isLmm()Z

    move-result v0

    iput-boolean v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsLMM:Z

    .line 1002
    invoke-interface {v7, v8}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    .line 1006
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sessionUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSenderUri:Lcom/sec/ims/util/ImsUri;

    .line 1007
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->userAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mUserAlias:Ljava/lang/String;

    .line 1009
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mParticipants:Ljava/util/List;

    .line 1010
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->receiversLength()I

    move-result v12

    if-ge v0, v12, :cond_5

    .line 1011
    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->receivers(I)Ljava/lang/String;

    move-result-object v12

    .line 1012
    .local v12, "participant":Ljava/lang/String;
    invoke-static {v12}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v13

    .line 1013
    .local v13, "parti":Lcom/sec/ims/util/ImsUri;
    if-nez v13, :cond_4

    .line 1014
    sget-object v14, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v15, "participant has Wrong Uri."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1016
    :cond_4
    iget-object v14, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mParticipants:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    .end local v12    # "participant":Ljava/lang/String;
    .end local v13    # "parti":Lcom/sec/ims/util/ImsUri;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1020
    .end local v0    # "i":I
    :cond_5
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->contentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContentType:Ljava/lang/String;

    .line 1021
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sdpContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSdpContentType:Ljava/lang/String;

    .line 1022
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->deviceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1023
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->deviceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mDeviceName:Ljava/lang/String;

    .line 1025
    :cond_6
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->reliableMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1026
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->reliableMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mReliableMessage:Ljava/lang/String;

    .line 1028
    :cond_7
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->extraFt()Z

    move-result v0

    iput-boolean v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mExtraFt:Z

    .line 1031
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileName:Ljava/lang/String;

    .line 1032
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->path()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    .line 1033
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->size()J

    move-result-wide v12

    iput-wide v12, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileSize:J

    .line 1035
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v12

    .line 1036
    .local v12, "mimeTypeMap":Landroid/webkit/MimeTypeMap;
    iget-object v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContentType:Ljava/lang/String;

    invoke-virtual {v12, v0}, Landroid/webkit/MimeTypeMap;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1037
    new-instance v0, Ljava/io/File;

    iget-object v13, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1038
    .local v0, "from":Ljava/io/File;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContentType:Ljava/lang/String;

    invoke-virtual {v12, v14}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    .line 1039
    new-instance v13, Ljava/io/File;

    iget-object v14, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1040
    .local v13, "to":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1041
    invoke-virtual {v0, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 1042
    sget-object v14, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIncomingSlmFileNotify(): failed to rename! "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1045
    :cond_8
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleIncomingSlmFileNotify(): file doesn\'t exist! "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    .end local v0    # "from":Ljava/io/File;
    .end local v13    # "to":Ljava/io/File;
    :cond_9
    :goto_2
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->contributionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    .line 1051
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->conversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1052
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->conversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    .line 1054
    :cond_a
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->inReplyToContributionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1055
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->inReplyToContributionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mInReplyToConversationId:Ljava/lang/String;

    .line 1058
    :cond_b
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->start()J

    move-result-wide v13

    long-to-int v0, v13

    iput v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mStart:I

    .line 1059
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->end()J

    move-result-wide v13

    long-to-int v0, v13

    iput v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mEnd:I

    .line 1060
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->isPush()Z

    move-result v0

    iput-boolean v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mPush:Z

    .line 1063
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1064
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->messageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnId:Ljava/lang/String;

    .line 1065
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 1066
    .local v2, "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->notiLength()I

    move-result v13

    if-ge v0, v13, :cond_c

    .line 1067
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v13

    invoke-virtual {v13, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->noti(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1069
    .end local v0    # "i":I
    :cond_c
    invoke-static {v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateStackImdnNoti(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mDisposition:Ljava/util/Set;

    .line 1070
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->deviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mDeviceId:Ljava/lang/String;

    .line 1071
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->originalToHdr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 1073
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRecRouteList:Ljava/util/List;

    .line 1074
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->recRouteLength()I

    move-result v13

    if-ge v0, v13, :cond_e

    .line 1075
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v13

    invoke-virtual {v13, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->recRoute(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;

    move-result-object v13

    .line 1076
    .local v13, "route":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;
    if-eqz v13, :cond_d

    .line 1077
    iget-object v14, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRecRouteList:Ljava/util/List;

    new-instance v15, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;

    move-object/from16 v16, v2

    .end local v2    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v16, "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnId:Ljava/lang/String;

    move-object/from16 v17, v3

    .end local v3    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .local v17, "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    invoke-virtual {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->uri()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v4

    .end local v4    # "baseSessionData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    .local v18, "baseSessionData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    invoke-virtual {v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v2, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1076
    .end local v16    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .end local v18    # "baseSessionData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    .restart local v2    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .restart local v4    # "baseSessionData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    :cond_d
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 1074
    .end local v2    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .end local v4    # "baseSessionData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    .end local v13    # "route":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;
    .restart local v16    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v17    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .restart local v18    # "baseSessionData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    :goto_5
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    goto :goto_4

    .end local v16    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .end local v18    # "baseSessionData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    .restart local v2    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .restart local v4    # "baseSessionData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    :cond_e
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 1081
    .end local v0    # "i":I
    .end local v2    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .end local v4    # "baseSessionData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    .restart local v16    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v17    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .restart local v18    # "baseSessionData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    :try_start_0
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->datetime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->datetime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_6

    :cond_f
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :goto_6
    iput-object v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    goto :goto_7

    .line 1082
    :catch_0
    move-exception v0

    .line 1083
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 1084
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnTime:Ljava/util/Date;

    goto :goto_7

    .line 1063
    .end local v0    # "e":Ljava/text/ParseException;
    .end local v16    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .end local v18    # "baseSessionData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    .restart local v3    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .restart local v4    # "baseSessionData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    :cond_10
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 1088
    .end local v3    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .end local v4    # "baseSessionData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    .restart local v17    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .restart local v18    # "baseSessionData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    :goto_7
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;-><init>()V

    iput-object v0, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 1089
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->cpimNamespacesLength()I

    move-result v2

    if-ge v0, v2, :cond_13

    .line 1090
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->cpimNamespaces(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;

    move-result-object v2

    .line 1091
    .local v2, "protoNamespace":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;
    if-eqz v2, :cond_12

    .line 1092
    iget-object v3, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->uri()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v4, v13}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->addNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_9
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->headersLength()I

    move-result v4

    if-ge v3, v4, :cond_12

    .line 1094
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->headers(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;

    move-result-object v4

    .line 1095
    .local v4, "header":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;
    if-eqz v4, :cond_11

    .line 1096
    iget-object v13, v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->getNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;

    move-result-object v13

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->key()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->value()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    .end local v4    # "header":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1089
    .end local v2    # "protoNamespace":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;
    .end local v3    # "j":I
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1102
    .end local v0    # "i":I
    :cond_13
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIncomingSlmFileNotify(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

    if-eqz v0, :cond_14

    .line 1105
    new-instance v2, Lcom/sec/internal/helper/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v11, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_a

    .line 1107
    :cond_14
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleIncomingSlmFileNotify(): no listener!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :goto_a
    return-void

    .line 971
    .end local v6    # "fileAttr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;
    .end local v7    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .end local v8    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .end local v9    # "sessionHandle":I
    .end local v10    # "session":Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;
    .end local v11    # "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;
    .end local v12    # "mimeTypeMap":Landroid/webkit/MimeTypeMap;
    .end local v17    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .end local v18    # "baseSessionData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    .local v3, "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .local v4, "baseSessionData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    :cond_15
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 972
    .end local v3    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .end local v4    # "baseSessionData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    .restart local v17    # "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;
    .restart local v18    # "baseSessionData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    :goto_b
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleIncomingSlmFileNotify(): invalid data"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return-void
.end method

.method private handleIncomingSlmMessageNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 17
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 809
    move-object/from16 v1, p0

    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleIncomingSlmMessageNotify()"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/4 v2, 0x0

    .line 812
    .local v2, "isTokenUsed":Z
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v3, 0x45

    if-eq v0, v3, :cond_0

    .line 813
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleIncomingSlmMessageNotify(): invalid notify!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    return-void

    .line 817
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;-><init>()V

    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;

    .line 819
    .local v4, "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;->msg()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;

    move-result-object v5

    .line 820
    .local v5, "message":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;->sessionData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;

    move-result-object v6

    .line 821
    .local v6, "baseSessionData":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;
    if-eqz v5, :cond_19

    if-nez v6, :cond_1

    goto/16 :goto_a

    .line 826
    :cond_1
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;-><init>()V

    move-object v7, v0

    .line 828
    .local v7, "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v8

    .line 829
    .local v8, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;->userHandle()J

    move-result-wide v9

    long-to-int v0, v9

    invoke-interface {v8, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 830
    .local v9, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v9, :cond_2

    .line 831
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v10, "handleIncomingSlmMessageNotify(): User agent not found!"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    return-void

    .line 835
    :cond_2
    invoke-interface {v8, v9}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mOwnImsi:Ljava/lang/String;

    .line 836
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->sender()Ljava/lang/String;

    move-result-object v0

    const-string v10, "Invalid sender uri, return. uri="

    if-nez v0, :cond_3

    .line 837
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->sender()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    return-void

    .line 840
    :cond_3
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->sender()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 841
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    if-nez v0, :cond_4

    .line 842
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->sender()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    return-void

    .line 845
    :cond_4
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->userAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 846
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->isPublicAccountMsg()Z

    move-result v0

    iput-boolean v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsPublicAccountMsg:Z

    .line 848
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mParticipants:Ljava/util/List;

    .line 849
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->receiversLength()I

    move-result v10

    if-ge v0, v10, :cond_5

    .line 850
    iget-object v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mParticipants:Ljava/util/List;

    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->receivers(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 853
    .end local v0    # "i":I
    :cond_5
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->contentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 854
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->body()Ljava/lang/String;

    move-result-object v0

    iget-object v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->adjustMessageBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 855
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 856
    return-void

    .line 859
    :cond_6
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->silenceSupported()Z

    move-result v0

    iput-boolean v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsRoutingMsg:Z

    .line 860
    iget-boolean v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsRoutingMsg:Z

    if-eqz v0, :cond_7

    .line 861
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v10, "handleIncomingSlmMessageNotify -> routing message"

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->requestUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mRequestUri:Lcom/sec/ims/util/ImsUri;

    .line 863
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->pAssertedId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mPAssertedId:Lcom/sec/ims/util/ImsUri;

    .line 864
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->receiver()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mReceiver:Lcom/sec/ims/util/ImsUri;

    .line 867
    :cond_7
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->messageId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 868
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->messageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 870
    :cond_8
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->originalToHdr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 871
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->originalToHdr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 875
    :cond_9
    :try_start_0
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->datetime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->datetime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    :goto_1
    iput-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    goto :goto_2

    .line 876
    :catch_0
    move-exception v0

    .line 877
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 880
    .end local v0    # "e":Ljava/text/ParseException;
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 881
    .local v0, "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 882
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->notiLength()I

    move-result v12

    if-ge v11, v12, :cond_b

    .line 883
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->noti(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 887
    .end local v11    # "i":I
    :cond_b
    invoke-static {v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateStackImdnNoti(Ljava/util/List;)Ljava/util/Set;

    move-result-object v11

    iput-object v11, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mDispositionNotification:Ljava/util/Set;

    .line 888
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->contributionId()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContributionId:Ljava/lang/String;

    .line 889
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->conversationId()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mConversationId:Ljava/lang/String;

    .line 890
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->deviceName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 891
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->deviceName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mDeviceName:Ljava/lang/String;

    .line 894
    :cond_c
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->reliableMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 895
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->reliableMessage()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mReliableMessage:Ljava/lang/String;

    .line 898
    :cond_d
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->extraFt()Z

    move-result v11

    iput-boolean v11, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mExtraFt:Z

    .line 900
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v11

    if-eqz v11, :cond_10

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->recRouteLength()I

    move-result v11

    if-lez v11, :cond_10

    .line 901
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    .line 902
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_4
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->recRouteLength()I

    move-result v12

    if-ge v11, v12, :cond_f

    .line 903
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->recRoute(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;

    move-result-object v12

    .line 904
    .local v12, "route":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;
    if-eqz v12, :cond_e

    .line 905
    sget-object v13, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "imdn route: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->uri()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-object v13, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    new-instance v14, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;

    iget-object v15, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->uri()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v0

    .end local v0    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v16, "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v15, v10, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 904
    .end local v16    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v0    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_e
    move-object/from16 v16, v0

    .line 902
    .end local v0    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "route":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;
    .restart local v16    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_5
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v16

    goto :goto_4

    .end local v16    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v0    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_f
    move-object/from16 v16, v0

    .end local v0    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v16    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_6

    .line 900
    .end local v11    # "i":I
    .end local v16    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v0    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_10
    move-object/from16 v16, v0

    .line 911
    .end local v0    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v16    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_6
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;-><init>()V

    iput-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 912
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->cpimNamespacesLength()I

    move-result v10

    if-ge v0, v10, :cond_13

    .line 913
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->cpimNamespaces(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;

    move-result-object v10

    .line 914
    .local v10, "nameSpace":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;
    if-eqz v10, :cond_12

    .line 915
    iget-object v11, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->uri()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->addNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_8
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->headersLength()I

    move-result v12

    if-ge v11, v12, :cond_12

    .line 917
    invoke-virtual {v10, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->headers(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;

    move-result-object v12

    .line 918
    .local v12, "header":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;
    if-eqz v12, :cond_11

    .line 919
    iget-object v13, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->getNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;

    move-result-object v13

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->key()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->value()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    .end local v12    # "header":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;
    :cond_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 912
    .end local v10    # "nameSpace":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;
    .end local v11    # "j":I
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 926
    .end local v0    # "i":I
    :cond_13
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    iget-object v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    invoke-direct {v1, v0, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseEmailOverSlm(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 927
    .local v0, "email":[Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 928
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sip:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    aget-object v11, v0, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v10

    iput-object v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 929
    const-string v10, ""

    iput-object v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 930
    const/4 v10, 0x1

    aget-object v10, v0, v10

    iput-object v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 934
    :cond_14
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;->extension()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;

    move-result-object v10

    if-eqz v10, :cond_15

    .line 935
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;->extension()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFwImExtensionHeaders(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;)Ljava/util/Map;

    move-result-object v10

    iput-object v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImExtensionMNOHeaders:Ljava/util/Map;

    .line 938
    :cond_15
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;->isLmm()Z

    move-result v10

    iput-boolean v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsLMM:Z

    .line 939
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->isChatbotParticipant()Z

    move-result v10

    iput-boolean v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsChatbotRole:Z

    .line 941
    iget-boolean v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsChatbotRole:Z

    if-eqz v10, :cond_17

    iget-object v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    if-eqz v10, :cond_17

    iget-object v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 942
    const-string/jumbo v11, "tk"

    invoke-virtual {v10, v11}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_17

    .line 943
    iget-object v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v10, v11}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "on"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 944
    const/4 v2, 0x1

    .line 946
    :cond_16
    iget-object v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v10, v11}, Lcom/sec/ims/util/ImsUri;->removeParam(Ljava/lang/String;)V

    .line 948
    :cond_17
    iput-boolean v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsTokenUsed:Z

    .line 950
    sget-object v10, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleIncomingSlmMessageNotify(): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v10, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    if-eqz v10, :cond_18

    .line 953
    new-instance v11, Lcom/sec/internal/helper/AsyncResult;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v7, v12}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v10, v11}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_9

    .line 955
    :cond_18
    sget-object v10, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v11, "handleIncomingSlmMessageNotify(): no listener!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :goto_9
    return-void

    .line 822
    .end local v0    # "email":[Ljava/lang/String;
    .end local v7    # "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;
    .end local v8    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .end local v9    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .end local v16    # "notiList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_19
    :goto_a
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v7, "handleIncomingSlmMessageNotify(): invalid data."

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    return-void
.end method

.method private handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 2
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 1370
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notifyid()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1392
    :pswitch_0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleNotify(): unexpected id"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1384
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleSlmSipResponseReceived(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 1385
    goto :goto_0

    .line 1388
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleSlmLMMIncomingSession(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 1389
    goto :goto_0

    .line 1380
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleSlmProgress(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 1381
    goto :goto_0

    .line 1376
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleIncomingSlmFileNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 1377
    goto :goto_0

    .line 1372
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleIncomingSlmMessageNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 1373
    nop

    .line 1394
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4650
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleRejectSlmLMMSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;)V
    .locals 13
    .param p1, "rejectParams"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;

    .line 743
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRejectSlmLMMSessionRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 746
    .local v0, "sessionHandle":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    .line 747
    .local v1, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;->mOwnImsi:Ljava/lang/String;

    const-string/jumbo v3, "slm"

    invoke-interface {v1, v3, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 748
    .local v2, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v2, :cond_1

    .line 749
    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handleRejectSlmLMMSessionRequest(): User agent not found!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 751
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;->mCallback:Landroid/os/Message;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {p0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 752
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;->mCallback:Landroid/os/Message;

    .line 754
    :cond_0
    return-void

    .line 757
    :cond_1
    new-instance v3, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v9, v3

    .line 758
    .local v9, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->getWarningText()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string v3, ""

    :goto_0
    invoke-virtual {v9, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 761
    .local v10, "wTxtOffset":I
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->startWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 762
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    if-eqz v3, :cond_3

    .line 763
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->getWarningCode()I

    move-result v3

    invoke-static {v9, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 764
    invoke-static {v9, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 766
    :cond_3
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->endWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v11

    .line 768
    .local v11, "whOffset":I
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectSlmLMMSession;->startRequestRejectSlmLMMSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 769
    int-to-long v3, v0

    invoke-static {v9, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectSlmLMMSession;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 770
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    if-eqz v3, :cond_4

    .line 771
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->getSipCode()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v9, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectSlmLMMSession;->addSipCode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 773
    :cond_4
    invoke-static {v9, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectSlmLMMSession;->addWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 774
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectSlmLMMSession;->endRequestRejectSlmLMMSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 776
    .local v3, "offset":I
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 777
    invoke-static {v9, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 778
    const/16 v4, 0x20c

    invoke-static {v9, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 779
    const/16 v4, 0x3a

    invoke-static {v9, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 780
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v12

    .line 782
    .end local v3    # "offset":I
    .local v12, "offset":I
    const/16 v4, 0x20c

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    move-object v3, p0

    move-object v5, v9

    move v6, v12

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 783
    return-void
.end method

.method private handleRejectSlmLMMSessionResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V
    .locals 6
    .param p1, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;

    .line 798
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 801
    .local v0, "sessionHandle":I
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v1

    .line 802
    .local v1, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v2

    .line 804
    .local v2, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRejectSlmLMMSessionResponse() sessionHandle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    return-void
.end method

.method private handleSendFileRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;)V
    .locals 33
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;

    .line 490
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendFileRequest(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v8

    .line 493
    .local v8, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mOwnImsi:Ljava/lang/String;

    const-string/jumbo v1, "slm"

    invoke-interface {v8, v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 494
    .local v9, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v9, :cond_1

    .line 495
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSendMessageRequest(): UserAgent not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mCallback:Landroid/os/Message;

    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-direct {v6, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 498
    iput-object v4, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mCallback:Landroid/os/Message;

    .line 500
    :cond_0
    return-void

    .line 503
    :cond_1
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;-><init>()V

    move-object v10, v0

    .line 504
    .local v10, "message":Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;
    iget v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mMessageId:I

    iput v0, v10, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mId:I

    .line 505
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mCallback:Landroid/os/Message;

    iput-object v0, v10, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    .line 506
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->isFile:Z

    .line 507
    iget-wide v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mFileSize:J

    iput-wide v0, v10, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mFileSize:J

    .line 508
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessageSendRequests:Ljava/util/Map;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mImdnMsgId:Ljava/lang/String;

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v0

    iput v0, v10, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mUaHandle:I

    .line 511
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v11, v0

    .line 514
    .local v11, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mUserAlias:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mUserAlias:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 515
    .local v12, "uaOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mConfUri:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mConfUri:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 516
    .local v13, "sessionUriOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mInReplyToContributionId:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mInReplyToContributionId:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 517
    .local v14, "irtcOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mSdpContentType:Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 518
    .local v15, "sdpctOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mContributionId:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mContributionId:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object v0, v1

    :goto_3
    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 519
    .local v5, "contIdOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mConversationId:Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 520
    .local v4, "convIdOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mFileName:Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 521
    .local v3, "fnameOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mFilePath:Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 522
    .local v2, "pathOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mContentType:Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 523
    .local v0, "fctOffset":I
    move-object/from16 v16, v1

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mImdnMsgId:Ljava/lang/String;

    invoke-direct {v6, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 524
    .local v1, "imdnMsgIdOffset":I
    move-object/from16 v17, v8

    .end local v8    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .local v17, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    iget-object v8, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mDispositionNotification:Ljava/util/Set;

    invoke-static {v8}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFwImdnNoti(Ljava/util/Set;)[I

    move-result-object v8

    invoke-static {v11, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->createNotiVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v8

    .line 525
    .local v8, "notiOffset":I
    move-object/from16 v18, v10

    .end local v10    # "message":Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;
    .local v18, "message":Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;
    iget-object v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mDeviceName:Ljava/lang/String;

    invoke-direct {v6, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 526
    .local v10, "devNameOffset":I
    move-object/from16 v19, v9

    .end local v9    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .local v19, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    iget-object v9, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mReliableMessage:Ljava/lang/String;

    invoke-direct {v6, v9}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 527
    .local v9, "relMsgOffset":I
    iget-object v6, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mRecipients:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 528
    .local v6, "pOffsetArr":[I
    const/16 v20, 0x0

    .line 530
    .local v20, "i":I
    move/from16 v21, v9

    .end local v9    # "relMsgOffset":I
    .local v21, "relMsgOffset":I
    iget-object v9, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mRecipients:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/ims/util/ImsUri;

    .line 531
    .local v22, "uri":Lcom/sec/ims/util/ImsUri;
    if-eqz v22, :cond_6

    invoke-virtual/range {v22 .. v22}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v32, v23

    move-object/from16 v23, v9

    move-object/from16 v9, v32

    goto :goto_5

    :cond_6
    move-object/from16 v23, v9

    move-object/from16 v9, v16

    :goto_5
    invoke-virtual {v11, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 532
    .local v9, "uriOffset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;->startParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 533
    invoke-static {v11, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 534
    move/from16 v24, v9

    .end local v9    # "uriOffset":I
    .local v24, "uriOffset":I
    iget-boolean v9, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mIsBroadcastMsg:Z

    if-eqz v9, :cond_7

    .line 535
    const/4 v9, 0x2

    invoke-static {v11, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;->addCopyControl(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 537
    :cond_7
    add-int/lit8 v9, v20, 0x1

    .end local v20    # "i":I
    .local v9, "i":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;->endParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v25

    aput v25, v6, v20

    .line 538
    .end local v22    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v24    # "uriOffset":I
    move/from16 v20, v9

    move-object/from16 v9, v23

    goto :goto_4

    .line 539
    .end local v9    # "i":I
    .restart local v20    # "i":I
    :cond_8
    invoke-static {v11, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->createParticipantVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v9

    .line 541
    .local v9, "pOffset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->startBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 542
    invoke-static {v11, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 543
    invoke-static {v11, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addSessionUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 544
    invoke-static {v11, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addInReplyToContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 545
    invoke-static {v11, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addSdpContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 546
    move-object/from16 v16, v6

    .end local v6    # "pOffsetArr":[I
    .local v16, "pOffsetArr":[I
    iget-object v6, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mContributionId:Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 547
    invoke-static {v11, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 549
    :cond_9
    iget-object v6, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mConversationId:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 550
    invoke-static {v11, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addConversationId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 552
    :cond_a
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->endBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v6

    .line 554
    .local v6, "bsdOffset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->startImFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 555
    invoke-static {v11, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 556
    invoke-static {v11, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addPath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 557
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 558
    move/from16 v23, v2

    move/from16 v22, v3

    .end local v2    # "pathOffset":I
    .end local v3    # "fnameOffset":I
    .local v22, "fnameOffset":I
    .local v23, "pathOffset":I
    iget-wide v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mFileSize:J

    long-to-int v2, v2

    int-to-long v2, v2

    invoke-static {v11, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addSize(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 559
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->endImFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 561
    .local v3, "fileOffset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->startImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 562
    invoke-static {v11, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addMessageId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 563
    invoke-static {v11, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addNoti(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 564
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->endImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 566
    .local v2, "imdnpOffset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->startFtPayloadParam(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 567
    invoke-static {v11, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addImdn(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 568
    invoke-static {v11, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 569
    move/from16 v24, v0

    .end local v0    # "fctOffset":I
    .local v24, "fctOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 570
    invoke-static {v11, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addDeviceName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 572
    :cond_b
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mReliableMessage:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 573
    move/from16 v0, v21

    .end local v21    # "relMsgOffset":I
    .local v0, "relMsgOffset":I
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addReliableMessage(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    goto :goto_6

    .line 572
    .end local v0    # "relMsgOffset":I
    .restart local v21    # "relMsgOffset":I
    :cond_c
    move/from16 v0, v21

    .line 575
    .end local v21    # "relMsgOffset":I
    .restart local v0    # "relMsgOffset":I
    :goto_6
    move/from16 v21, v0

    .end local v0    # "relMsgOffset":I
    .restart local v21    # "relMsgOffset":I
    iget-boolean v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mExtraFt:Z

    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addExtraFt(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 576
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->endFtPayloadParam(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 578
    .local v0, "ftpOffset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSlmFile;->startRequestSendSlmFile(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 579
    move/from16 v25, v1

    .end local v1    # "imdnMsgIdOffset":I
    .local v25, "imdnMsgIdOffset":I
    invoke-virtual/range {v19 .. v19}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v1

    move/from16 v26, v2

    .end local v2    # "imdnpOffset":I
    .local v26, "imdnpOffset":I
    int-to-long v1, v1

    invoke-static {v11, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSlmFile;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 580
    invoke-static {v11, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSlmFile;->addParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 581
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSlmFile;->addPayloadParam(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 582
    invoke-static {v11, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSlmFile;->addSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 583
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSlmFile;->endRequestSendSlmFile(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 585
    .local v1, "offset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 586
    invoke-static {v11, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 587
    const/16 v2, 0x209

    invoke-static {v11, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 588
    const/16 v2, 0x32

    invoke-static {v11, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 589
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v27

    .line 591
    .end local v1    # "offset":I
    .local v27, "offset":I
    move-object/from16 v2, p0

    iget-object v1, v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;

    move/from16 v29, v0

    .end local v0    # "ftpOffset":I
    .local v29, "ftpOffset":I
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v30

    move/from16 v32, v24

    move/from16 v24, v21

    move/from16 v21, v32

    .local v21, "fctOffset":I
    .local v24, "relMsgOffset":I
    move-object/from16 v0, p0

    const/16 v1, 0x209

    move-object v2, v11

    move/from16 v28, v3

    .end local v3    # "fileOffset":I
    .local v28, "fileOffset":I
    move/from16 v3, v27

    move/from16 v31, v4

    .end local v4    # "convIdOffset":I
    .local v31, "convIdOffset":I
    move-object/from16 v4, v30

    move/from16 v30, v5

    .end local v5    # "contIdOffset":I
    .local v30, "contIdOffset":I
    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 592
    return-void
.end method

.method private handleSendFileResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;)V
    .locals 13
    .param p1, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;

    .line 595
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSendFileResponse()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessageSendRequests:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->imdnMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    .line 599
    .local v0, "message":Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;
    if-nez v0, :cond_0

    .line 600
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleSendFileResponse(): no StandaloneMessage found!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return-void

    .line 603
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->slmMode()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mMode:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    .line 607
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    if-eqz v1, :cond_1

    .line 608
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleSendFileResponse(): send pending cancel request"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCancelRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;)V

    .line 610
    return-void

    .line 612
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->sessionHandle()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    .line 613
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v1

    .line 615
    .local v1, "reason":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSendFileResponse(): sessionHandle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    if-eqz v3, :cond_2

    .line 617
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-direct {v4, v1, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-direct {p0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 618
    iput-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    .line 621
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v3, v4, :cond_3

    .line 622
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "request sendFile is failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-void

    .line 626
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mMode:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->PAGER:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    if-ne v3, v4, :cond_5

    .line 628
    new-instance v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->sessionHandle()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mId:I

    iget-wide v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mFileSize:J

    const-wide/16 v8, 0x0

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->TRANSFERRING:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    move-object v3, v12

    move-object v11, v1

    invoke-direct/range {v3 .. v11}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;-><init>(Ljava/lang/Object;IJJLcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 630
    .local v3, "progress":Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;
    new-instance v4, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {v4, v2, v3, v2}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v2, v4

    .line 631
    .local v2, "result":Lcom/sec/internal/helper/AsyncResult;
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v4}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v4

    if-eqz v4, :cond_4

    .line 632
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v4, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 634
    :cond_4
    sget-object v4, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v5, "handleSendFileResponse(): no listener!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    .end local v2    # "result":Lcom/sec/internal/helper/AsyncResult;
    .end local v3    # "progress":Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;
    :cond_5
    :goto_0
    return-void
.end method

.method private handleSendMessageRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;)V
    .locals 39
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;

    .line 317
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendMessageRequest(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v8

    .line 320
    .local v8, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mOwnImsi:Ljava/lang/String;

    const-string/jumbo v1, "slm"

    invoke-interface {v8, v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 321
    .local v9, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v9, :cond_1

    .line 322
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSendMessageRequest(): UserAgent not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mCallback:Landroid/os/Message;

    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;)V

    invoke-direct {v6, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 326
    :cond_0
    return-void

    .line 329
    :cond_1
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;-><init>()V

    move-object v10, v0

    .line 330
    .local v10, "message":Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;
    iget v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mMessageId:I

    iput v0, v10, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mId:I

    .line 331
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mCallback:Landroid/os/Message;

    iput-object v0, v10, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    .line 332
    iget-object v0, v6, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessageSendRequests:Ljava/util/Map;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mImdnMessageId:Ljava/lang/String;

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v0

    iput v0, v10, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mUaHandle:I

    .line 334
    iget-boolean v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mIsChatbotParticipant:Z

    iput-boolean v0, v10, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mIsChatbotMessage:Z

    .line 336
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mContentType:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "charset="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 337
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSendMessageRequest(): missed charset, use utf8!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";charset=UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mContentType:Ljava/lang/String;

    .line 341
    :cond_2
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v11, v0

    .line 344
    .local v11, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReceivers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v12, v0, [I

    .line 345
    .local v12, "pOffsetArr":[I
    const/4 v0, 0x0

    .line 346
    .local v0, "i":I
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mUserAlias:Ljava/lang/String;

    const-string v3, ""

    if-eqz v2, :cond_3

    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mUserAlias:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v2, v3

    :goto_0
    invoke-virtual {v11, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 347
    .local v13, "uaOffset":I
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mInReplyToContributionId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mInReplyToContributionId:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v2, v3

    :goto_1
    invoke-virtual {v11, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 348
    .local v14, "irtcOffset":I
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mContributionId:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mContributionId:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v2, v3

    :goto_2
    invoke-virtual {v11, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 349
    .local v15, "contIdOffset":I
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mConversationId:Ljava/lang/String;

    invoke-direct {v6, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 350
    .local v5, "convIdOffset":I
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    if-eqz v2, :cond_6

    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamFrom()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    move-object v2, v3

    :goto_3
    invoke-virtual {v11, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 351
    .local v4, "spamFromOffset":I
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    if-eqz v2, :cond_7

    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamTo()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_7
    move-object v2, v3

    :goto_4
    invoke-virtual {v11, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 352
    .local v2, "spamToOffset":I
    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    if-eqz v1, :cond_8

    iget-object v1, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamDate()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_8
    move-object v1, v3

    :goto_5
    invoke-virtual {v11, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 353
    .local v1, "spamDOffset":I
    move/from16 v17, v0

    .end local v0    # "i":I
    .local v17, "i":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mImdnMessageId:Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 354
    .local v0, "imdnMsgIdOffset":I
    move-object/from16 v18, v3

    iget-object v3, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mDispositionNotification:Ljava/util/Set;

    invoke-static {v3}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFwImdnNoti(Ljava/util/Set;)[I

    move-result-object v3

    invoke-static {v11, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->createNotiVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v3

    .line 355
    .local v3, "notiOffset":I
    move-object/from16 v19, v8

    .end local v8    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .local v19, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    iget-object v8, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mImdnTime:Ljava/util/Date;

    invoke-static {v8}, Lcom/sec/internal/helper/Iso8601;->formatMillis(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 356
    .local v8, "dtOffset":I
    move-object/from16 v20, v10

    .end local v10    # "message":Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;
    .local v20, "message":Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;
    iget-object v10, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mBody:Ljava/lang/String;

    invoke-direct {v6, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 357
    .local v10, "bodyOffset":I
    move-object/from16 v21, v9

    .end local v9    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .local v21, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    iget-object v9, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mContentType:Ljava/lang/String;

    invoke-direct {v6, v9}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 358
    .local v9, "ctOffset":I
    move/from16 v22, v9

    .end local v9    # "ctOffset":I
    .local v22, "ctOffset":I
    iget-object v9, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mDeviceName:Ljava/lang/String;

    invoke-direct {v6, v9}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 359
    .local v9, "devNameOffset":I
    move/from16 v23, v9

    .end local v9    # "devNameOffset":I
    .local v23, "devNameOffset":I
    iget-object v9, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReliableMessage:Ljava/lang/String;

    invoke-direct {v6, v9}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 362
    .local v9, "relMsgOffset":I
    iget-object v6, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReceivers:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sec/ims/util/ImsUri;

    .line 363
    .local v24, "uri":Lcom/sec/ims/util/ImsUri;
    if-eqz v24, :cond_9

    invoke-virtual/range {v24 .. v24}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v38, v25

    move-object/from16 v25, v6

    move-object/from16 v6, v38

    goto :goto_7

    :cond_9
    move-object/from16 v25, v6

    move-object/from16 v6, v18

    :goto_7
    invoke-virtual {v11, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    .line 364
    .local v6, "uriOffset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;->startParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 365
    invoke-static {v11, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 366
    move/from16 v26, v6

    .end local v6    # "uriOffset":I
    .local v26, "uriOffset":I
    iget-boolean v6, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mIsBroadcastMsg:Z

    if-eqz v6, :cond_a

    .line 367
    const/4 v6, 0x2

    invoke-static {v11, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;->addCopyControl(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 369
    :cond_a
    add-int/lit8 v6, v17, 0x1

    .end local v17    # "i":I
    .local v6, "i":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;->endParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v27

    aput v27, v12, v17

    .line 370
    .end local v24    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v26    # "uriOffset":I
    move/from16 v17, v6

    move-object/from16 v6, v25

    goto :goto_6

    .line 372
    .end local v6    # "i":I
    .restart local v17    # "i":I
    :cond_b
    invoke-static {v11, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->createParticipantVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v6

    .line 374
    .local v6, "pOffset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->startBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 375
    invoke-static {v11, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 376
    invoke-static {v11, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addInReplyToContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 377
    move-object/from16 v18, v12

    .end local v12    # "pOffsetArr":[I
    .local v18, "pOffsetArr":[I
    iget-object v12, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mConversationId:Ljava/lang/String;

    if-eqz v12, :cond_c

    .line 378
    invoke-static {v11, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addConversationId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 380
    :cond_c
    iget-object v12, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mContributionId:Ljava/lang/String;

    if-eqz v12, :cond_d

    .line 381
    invoke-static {v11, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 383
    :cond_d
    iget-boolean v12, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mIsChatbotParticipant:Z

    invoke-static {v11, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addIsChatbotParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 384
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->endBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v12

    .line 386
    .local v12, "bsdOffset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->startReportMessageHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 387
    invoke-static {v11, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->addSpamFrom(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 388
    invoke-static {v11, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->addSpamTo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 389
    invoke-static {v11, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->addSpamDate(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 390
    move/from16 v24, v1

    .end local v1    # "spamDOffset":I
    .local v24, "spamDOffset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->endReportMessageHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 392
    .local v1, "rmhOffset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->startImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 393
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addMessageId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 394
    move/from16 v25, v0

    .end local v0    # "imdnMsgIdOffset":I
    .local v25, "imdnMsgIdOffset":I
    iget-object v0, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mImdnTime:Ljava/util/Date;

    if-eqz v0, :cond_e

    .line 395
    invoke-static {v11, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addDatetime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 397
    :cond_e
    invoke-static {v11, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addNoti(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 398
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->endImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 400
    .local v0, "imdnpOffset":I
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v27, v26

    .line 401
    .local v27, "cpimNamespacesOffsetIntegers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v26, -0x1

    .line 403
    .local v26, "cpimNamespacesVectorOffset":I
    move/from16 v28, v2

    .end local v2    # "spamToOffset":I
    .local v28, "spamToOffset":I
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mMaapTrafficType:Ljava/lang/String;

    move/from16 v29, v3

    .end local v3    # "notiOffset":I
    .local v29, "notiOffset":I
    if-eqz v2, :cond_10

    .line 404
    const-string v2, "maap"

    invoke-virtual {v11, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 405
    .local v2, "cpimNamespaceNameOffset":I
    const-string v3, "<http://www.gsma.com/rcs/maap/>"

    invoke-virtual {v11, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 406
    .local v3, "cpimNamespaceUriOffset":I
    move/from16 v31, v4

    .end local v4    # "spamFromOffset":I
    .local v31, "spamFromOffset":I
    const-string v4, "Traffic-Type"

    invoke-virtual {v11, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 407
    .local v4, "cpimNamespaceKeyOffset":I
    move/from16 v32, v5

    .end local v5    # "convIdOffset":I
    .local v32, "convIdOffset":I
    iget-object v5, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mMaapTrafficType:Ljava/lang/String;

    invoke-virtual {v11, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 409
    .local v5, "cpimNamespaceValueOffset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 410
    invoke-static {v11, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 411
    invoke-static {v11, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 412
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v33

    .line 414
    .local v33, "headersPairOffset":I
    move/from16 v34, v4

    move/from16 v35, v5

    const/4 v4, 0x1

    .end local v4    # "cpimNamespaceKeyOffset":I
    .end local v5    # "cpimNamespaceValueOffset":I
    .local v34, "cpimNamespaceKeyOffset":I
    .local v35, "cpimNamespaceValueOffset":I
    new-array v5, v4, [I

    const/4 v4, 0x0

    aput v33, v5, v4

    move-object v4, v5

    .line 415
    .local v4, "headersOffset":[I
    invoke-static {v11, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->createHeadersVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v5

    .line 417
    .local v5, "headersVectorOffset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->startCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 418
    invoke-static {v11, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 419
    invoke-static {v11, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 420
    invoke-static {v11, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 421
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->endCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v16

    move/from16 v36, v2

    .end local v2    # "cpimNamespaceNameOffset":I
    .local v36, "cpimNamespaceNameOffset":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move/from16 v16, v8

    move-object/from16 v8, v27

    .end local v27    # "cpimNamespacesOffsetIntegers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v8, "cpimNamespacesOffsetIntegers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v16, "dtOffset":I
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 424
    .local v2, "cpimNamespacesOffset":[I
    const/16 v27, 0x0

    move/from16 v37, v3

    move/from16 v3, v27

    .local v3, "j":I
    .local v37, "cpimNamespaceUriOffset":I
    :goto_8
    move-object/from16 v27, v4

    .end local v4    # "headersOffset":[I
    .local v27, "headersOffset":[I
    array-length v4, v2

    if-ge v3, v4, :cond_f

    .line 425
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    .line 424
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v27

    goto :goto_8

    .line 427
    .end local v3    # "j":I
    :cond_f
    invoke-static {v11, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->createCpimNamespacesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v26

    move/from16 v5, v26

    goto :goto_9

    .line 403
    .end local v2    # "cpimNamespacesOffset":[I
    .end local v16    # "dtOffset":I
    .end local v31    # "spamFromOffset":I
    .end local v32    # "convIdOffset":I
    .end local v33    # "headersPairOffset":I
    .end local v34    # "cpimNamespaceKeyOffset":I
    .end local v35    # "cpimNamespaceValueOffset":I
    .end local v36    # "cpimNamespaceNameOffset":I
    .end local v37    # "cpimNamespaceUriOffset":I
    .local v4, "spamFromOffset":I
    .local v5, "convIdOffset":I
    .local v8, "dtOffset":I
    .local v27, "cpimNamespacesOffsetIntegers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_10
    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v16, v8

    move-object/from16 v8, v27

    .end local v4    # "spamFromOffset":I
    .end local v5    # "convIdOffset":I
    .end local v27    # "cpimNamespacesOffsetIntegers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v8, "cpimNamespacesOffsetIntegers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v16    # "dtOffset":I
    .restart local v31    # "spamFromOffset":I
    .restart local v32    # "convIdOffset":I
    move/from16 v5, v26

    .line 430
    .end local v26    # "cpimNamespacesVectorOffset":I
    .local v5, "cpimNamespacesVectorOffset":I
    :goto_9
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->startImMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 431
    invoke-static {v11, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 432
    invoke-static {v11, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addBody(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 433
    move/from16 v4, v22

    .end local v22    # "ctOffset":I
    .local v4, "ctOffset":I
    invoke-static {v11, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 434
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mDeviceName:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 435
    move/from16 v3, v23

    .end local v23    # "devNameOffset":I
    .local v3, "devNameOffset":I
    invoke-static {v11, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addDeviceName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    goto :goto_a

    .line 434
    .end local v3    # "devNameOffset":I
    .restart local v23    # "devNameOffset":I
    :cond_11
    move/from16 v3, v23

    .line 437
    .end local v23    # "devNameOffset":I
    .restart local v3    # "devNameOffset":I
    :goto_a
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReliableMessage:Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 438
    invoke-static {v11, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addReliableMessage(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 440
    :cond_12
    iget-boolean v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mExtraFt:Z

    invoke-static {v11, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addExtraFt(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 441
    iget-boolean v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mIsPublicAccountMsg:Z

    invoke-static {v11, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addIsPublicAccountMsg(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 442
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addImdn(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 443
    iget-object v2, v7, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mMaapTrafficType:Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 444
    invoke-static {v11, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addCpimNamespaces(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 446
    :cond_13
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->endImMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 448
    .local v2, "immpOffset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->startRequestSendImSlmMessage(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 449
    move/from16 v22, v0

    .end local v0    # "imdnpOffset":I
    .local v22, "imdnpOffset":I
    invoke-virtual/range {v21 .. v21}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v0

    move/from16 v26, v3

    move/from16 v23, v4

    .end local v3    # "devNameOffset":I
    .end local v4    # "ctOffset":I
    .local v23, "ctOffset":I
    .local v26, "devNameOffset":I
    int-to-long v3, v0

    invoke-static {v11, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 450
    invoke-static {v11, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->addMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 451
    invoke-static {v11, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->addReportData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 452
    invoke-static {v11, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->addSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 453
    invoke-static {v11, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->addParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 454
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->endRequestSendImSlmMessage(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 456
    .local v0, "offset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 457
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 458
    const/16 v3, 0x208

    invoke-static {v11, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 459
    const/16 v3, 0x31

    invoke-static {v11, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 460
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v27

    .line 463
    .end local v0    # "offset":I
    .local v27, "offset":I
    move-object/from16 v4, p0

    iget-object v0, v4, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v30

    move/from16 v38, v25

    move/from16 v25, v22

    move/from16 v22, v38

    .local v22, "imdnMsgIdOffset":I
    .local v25, "imdnpOffset":I
    move-object/from16 v0, p0

    move/from16 v33, v1

    const/16 v1, 0x208

    .end local v1    # "rmhOffset":I
    .local v33, "rmhOffset":I
    move/from16 v34, v2

    .end local v2    # "immpOffset":I
    .local v34, "immpOffset":I
    move-object v2, v11

    move/from16 v38, v29

    move/from16 v29, v26

    move/from16 v26, v38

    .local v26, "notiOffset":I
    .local v29, "devNameOffset":I
    move/from16 v3, v27

    move/from16 v38, v31

    move/from16 v31, v23

    move/from16 v23, v38

    .local v23, "spamFromOffset":I
    .local v31, "ctOffset":I
    move-object/from16 v4, v30

    move/from16 v30, v32

    move/from16 v32, v5

    .end local v5    # "cpimNamespacesVectorOffset":I
    .local v30, "convIdOffset":I
    .local v32, "cpimNamespacesVectorOffset":I
    move-object/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 464
    return-void
.end method

.method private handleSendMessageResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;)V
    .locals 6
    .param p1, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;

    .line 467
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSendMessageResponse()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessageSendRequests:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->imdnMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    .line 471
    .local v0, "message":Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;
    if-nez v0, :cond_0

    .line 472
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "no message found!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-void

    .line 475
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->slmMode()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mMode:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    .line 476
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->sessionHandle()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    .line 477
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v1

    .line 478
    .local v1, "reason":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSendMessageResponse(): sessionHandle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v3, v4, :cond_1

    .line 480
    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "request sendMessage is failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;

    invoke-direct {v4, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 482
    iput-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    .line 483
    return-void

    .line 486
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    return-void
.end method

.method private handleSlmLMMIncomingSession(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 13
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 1215
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSlmLMMIncomingSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x27

    if-eq v0, v1, :cond_0

    .line 1219
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSlmLMMIncomingSession(): invalid notify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    return-void

    .line 1223
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmLMMInvited;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmLMMInvited;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmLMMInvited;

    .line 1225
    .local v0, "invite":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmLMMInvited;
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    .line 1226
    .local v1, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmLMMInvited;->userHandle()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1228
    .local v2, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v2, :cond_1

    .line 1229
    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handleSlmLMMIncomingSession(): UserAgent not found."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    return-void

    .line 1234
    :cond_1
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;

    invoke-direct {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;-><init>()V

    .line 1236
    .local v3, "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmLMMInvited;->sessionHandle()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1237
    .local v4, "sessionHandle":Ljava/lang/Integer;
    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    .line 1238
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmLMMInvited;->sender()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    iput-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    .line 1239
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmLMMInvited;->userAlias()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;->mInitiatorAlias:Ljava/lang/String;

    .line 1240
    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    .line 1242
    new-instance v5, Lcom/sec/internal/helper/AsyncResult;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v3, v6}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v11, v5

    .line 1243
    .local v11, "result":Lcom/sec/internal/helper/AsyncResult;
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingSlmLMMSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v5}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v5

    if-eqz v5, :cond_2

    .line 1244
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingSlmLMMSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v5, v11}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 1248
    :cond_2
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSlmLMMIncomingSession(): Empty registrants, reject handle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    new-instance v12, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;

    const/4 v6, 0x0

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const/4 v9, 0x0

    .line 1250
    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v12

    move-object v7, v4

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;Landroid/os/Message;Ljava/lang/String;)V

    .line 1249
    invoke-direct {p0, v12}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleRejectSlmLMMSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;)V

    .line 1252
    :goto_0
    return-void
.end method

.method private handleSlmProgress(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 17
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 1113
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v1

    const/16 v2, 0x26

    if-eq v1, v2, :cond_0

    .line 1114
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleSlmProgress(): invalid notify"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    return-void

    .line 1118
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;

    .line 1120
    .local v1, "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;
    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSlmProgress(): total = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->total()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", transferred = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->transferred()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", imdnMessageId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->imdnMessageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", sessionHandle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->sessionHandle()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1120
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->sessionHandle()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    .line 1124
    .local v3, "message":Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->state()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtProgressState(I)Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    move-result-object v4

    .line 1126
    .local v4, "state":Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;
    if-nez v3, :cond_1

    .line 1127
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v6, "handleSlmProgress(): no StandaloneMessage found!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    return-void

    .line 1130
    :cond_1
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->TRANSFERRING:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    if-eq v4, v5, :cond_2

    .line 1131
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    iget-object v6, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    :cond_2
    iget-boolean v5, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->isFile:Z

    const/4 v14, 0x0

    if-eqz v5, :cond_4

    .line 1134
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v5

    invoke-static {v5, v14}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v15

    .line 1135
    .local v15, "reason":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    new-instance v16, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->sessionHandle()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mId:I

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->total()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->transferred()J

    move-result-wide v10

    move-object/from16 v5, v16

    move-object v12, v4

    move-object v13, v15

    invoke-direct/range {v5 .. v13}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;-><init>(Ljava/lang/Object;IJJLcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 1137
    .local v5, "progress":Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;
    new-instance v6, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {v6, v14, v5, v14}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1138
    .local v6, "result":Lcom/sec/internal/helper/AsyncResult;
    iget-object v7, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v7}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v7

    if-eqz v7, :cond_3

    .line 1139
    iget-object v7, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v7, v6}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 1141
    :cond_3
    sget-object v7, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v8, "handleSlmProgress(): no listener!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    .end local v5    # "progress":Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;
    .end local v6    # "result":Lcom/sec/internal/helper/AsyncResult;
    .end local v15    # "reason":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    :goto_0
    goto :goto_1

    .line 1144
    :cond_4
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v5

    invoke-static {v5, v14}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v5

    .line 1145
    .local v5, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->COMPLETED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    if-eq v4, v6, :cond_5

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v6, v7, :cond_6

    .line 1146
    :cond_5
    iget-object v6, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;

    invoke-direct {v7, v5, v14}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;)V

    invoke-direct {v0, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1147
    iput-object v14, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    .line 1150
    .end local v5    # "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    :cond_6
    :goto_1
    return-void
.end method

.method private handleSlmSipResponseReceived(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 14
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 1153
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "HandleSlmSipResponseReceived() Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    .line 1156
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handlSlmSipResponseReceived(): invalid notify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    return-void

    .line 1160
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;

    .line 1161
    .local v0, "noti":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->sessionHandle()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    .line 1163
    .local v1, "message":Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;
    if-eqz v1, :cond_a

    .line 1164
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->isFile:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mMode:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->PAGER:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    if-ne v2, v4, :cond_4

    .line 1165
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->warningHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v2

    .line 1167
    .local v2, "reason":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->sessionHandle()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mId:I

    iget-wide v8, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mFileSize:J

    .line 1168
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v5

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v5, v10, :cond_1

    iget-wide v10, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mFileSize:J

    goto :goto_0

    :cond_1
    const-wide/16 v10, 0x0

    .line 1169
    :goto_0
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v5

    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v5, v12, :cond_2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->COMPLETED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    :goto_1
    move-object v12, v5

    move-object v5, v4

    move-object v13, v2

    invoke-direct/range {v5 .. v13}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;-><init>(Ljava/lang/Object;IJJLcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 1172
    .local v4, "ftTransferProgressEvent":Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;
    new-instance v5, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {v5, v3, v4, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v3, v5

    .line 1173
    .local v3, "result":Lcom/sec/internal/helper/AsyncResult;
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v5}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v5

    if-eqz v5, :cond_3

    .line 1174
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v5, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_2

    .line 1176
    :cond_3
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v6, "handleSlmSipResponseReceived(): no listener!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    :goto_2
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    iget-object v6, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    .end local v2    # "reason":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    .end local v3    # "result":Lcom/sec/internal/helper/AsyncResult;
    .end local v4    # "ftTransferProgressEvent":Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;
    goto/16 :goto_4

    :cond_4
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mMode:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->PAGER:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    if-ne v2, v4, :cond_5

    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->isFile:Z

    if-nez v2, :cond_5

    .line 1180
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->warningHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v2

    .line 1181
    .local v2, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    sget-object v4, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSlmSipResponseReceived(), result= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->passertedId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;)V

    invoke-direct {p0, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1183
    iput-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    .line 1184
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    .end local v2    # "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    goto/16 :goto_4

    :cond_5
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mMode:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->LARGE_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    if-ne v2, v4, :cond_7

    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->isFile:Z

    if-eqz v2, :cond_7

    .line 1186
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->warningHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v2

    .line 1187
    .local v2, "reason":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v4, v5, :cond_9

    .line 1188
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->sessionHandle()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mId:I

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    move-object v5, v4

    move-object v13, v2

    invoke-direct/range {v5 .. v13}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;-><init>(Ljava/lang/Object;IJJLcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 1191
    .restart local v4    # "ftTransferProgressEvent":Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;
    new-instance v5, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {v5, v3, v4, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v3, v5

    .line 1192
    .restart local v3    # "result":Lcom/sec/internal/helper/AsyncResult;
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    iget-object v6, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v5}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v5

    if-eqz v5, :cond_6

    .line 1194
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v5, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_3

    .line 1196
    :cond_6
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v6, "handlSlmSipResponseReceived(): no listener!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1199
    .end local v2    # "reason":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    .end local v3    # "result":Lcom/sec/internal/helper/AsyncResult;
    .end local v4    # "ftTransferProgressEvent":Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;
    :cond_7
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mMode:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->LARGE_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    if-ne v2, v4, :cond_9

    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->isFile:Z

    if-nez v2, :cond_9

    .line 1200
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->warningHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v2

    .line 1201
    .local v2, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v4, v5, :cond_8

    .line 1202
    sget-object v4, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSlmSipResponseReceived(): SipResponse is not 200 OK, result= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;

    invoke-direct {v5, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;)V

    invoke-direct {p0, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1204
    iput-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    .line 1205
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    .end local v2    # "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    :cond_8
    goto :goto_4

    .line 1199
    :cond_9
    :goto_3
    goto :goto_4

    .line 1209
    :cond_a
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSlmSipResponseReceived(): no StandaloneMessage found!, ImdnMessageId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->imdnMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", SessionHandle : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->sessionHandle()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1209
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :goto_4
    return-void
.end method

.method private parseEmailOverSlm(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p1, "originalSender"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "message"    # Ljava/lang/String;

    .line 1406
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "parseEmailOverSlm"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->couldBeEmailGateway(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1409
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "parseEmailOverSlm: No email gateway"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    return-object v0

    .line 1413
    :cond_0
    const-string v1, "( /)|( )"

    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 1415
    .local v1, "parts":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 1416
    .local v6, "a":Ljava/lang/String;
    sget-object v7, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parseEmailOverSlm: part: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    .end local v6    # "a":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1419
    :cond_1
    array-length v3, v1

    if-ge v3, v2, :cond_2

    .line 1420
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "parseEmailOverSlm: message type is not email"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    return-object v0

    .line 1424
    :cond_2
    aget-object v2, v1, v4

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/ResipUtils;->validateEmailAddressFormat(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1425
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "parseEmailOverSlm: email type message"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    return-object v1

    .line 1429
    :cond_3
    return-object v0
.end method

.method private parseStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 1448
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private sendCallback(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/Message;
    .param p2, "object"    # Ljava/lang/Object;

    .line 1443
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 1444
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1445
    return-void
.end method

.method private sendCancelRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;)V
    .locals 14
    .param p1, "session"    # Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    .line 1301
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendCancelRequestToStack(): session handle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 1304
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    iget v1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mUaHandle:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1305
    .local v1, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v1, :cond_1

    .line 1306
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendCancelRequestToStack(): UserAgent not found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-object v2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 1308
    iget-object v2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v4, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1310
    iput-object v5, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    .line 1312
    :cond_0
    return-void

    .line 1315
    :cond_1
    iget-object v8, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 1316
    .local v8, "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;
    if-nez v8, :cond_2

    .line 1317
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendCancelRequestToStack(): null reject params!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    return-void

    .line 1321
    :cond_2
    iget-object v2, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    if-eqz v2, :cond_3

    iget-object v2, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    :goto_0
    move-object v9, v2

    .line 1323
    .local v9, "reason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v10, v2

    .line 1324
    .local v10, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getWarningText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 1327
    .local v11, "wTxtOffset":I
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->startWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1328
    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getWarningCode()I

    move-result v2

    invoke-static {v10, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1329
    invoke-static {v10, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1330
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->endWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v12

    .line 1332
    .local v12, "whOffset":I
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->startRequestCancelFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1333
    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getSipCode()I

    move-result v2

    invoke-static {v10, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addSipCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1334
    iget-object v2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v10, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1335
    invoke-static {v10, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1336
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->endRequestCancelFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1338
    .local v2, "offset":I
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1339
    invoke-static {v10, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1340
    const/16 v3, 0x20a

    invoke-static {v10, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1341
    const/16 v3, 0x2f

    invoke-static {v10, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1342
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v13

    .line 1344
    .end local v2    # "offset":I
    .local v13, "offset":I
    const/16 v3, 0x20a

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object v2, p0

    move-object v4, v10

    move v5, v13

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 1345
    return-void
.end method

.method private sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "request"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p3, "offset"    # I
    .param p4, "callback"    # Landroid/os/Message;
    .param p5, "ua"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1398
    if-nez p5, :cond_0

    .line 1399
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendRequestToStack(): UserAgent not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    return-void

    .line 1402
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;-><init>(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V

    .line 1403
    return-void
.end method


# virtual methods
.method public acceptFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;

    .line 223
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 224
    return-void
.end method

.method public acceptSlmLMMSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;

    .line 268
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 269
    return-void
.end method

.method public cancelFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 233
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 288
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 312
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: Undefined message."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 309
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleRejectSlmLMMSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;)V

    .line 310
    goto :goto_0

    .line 306
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleAcceptSlmLMMSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmLMMSessionParams;)V

    .line 307
    goto :goto_0

    .line 299
    :pswitch_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->sendDispositionNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;II)V

    .line 300
    goto :goto_0

    .line 293
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleSendFileRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;)V

    .line 294
    goto :goto_0

    .line 303
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleCancelFileTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V

    .line 304
    goto :goto_0

    .line 296
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleAcceptFileRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;)V

    .line 297
    goto :goto_0

    .line 290
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleSendMessageRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;)V

    .line 291
    nop

    .line 314
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerForSlmIncomingFileTransfer(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 249
    return-void
.end method

.method public registerForSlmIncomingMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 239
    return-void
.end method

.method public registerForSlmLMMIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingSlmLMMSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 279
    return-void
.end method

.method public registerForSlmTransferProgress(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 259
    return-void
.end method

.method public rejectFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 228
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 229
    return-void
.end method

.method public rejectSlmLMMSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;)V
    .locals 1
    .param p1, "rejectParams"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmLMMSessionParams;

    .line 273
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 274
    return-void
.end method

.method public sendFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;

    .line 218
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 219
    return-void
.end method

.method public sendSlmDeliveredNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    .line 203
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 204
    return-void
.end method

.method public sendSlmDisplayedNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    .line 208
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 209
    return-void
.end method

.method public sendSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;

    .line 213
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    return-void
.end method

.method public unregisterForSlmIncomingFileTransfer(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 253
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 254
    return-void
.end method

.method public unregisterForSlmIncomingMessage(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 243
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 244
    return-void
.end method

.method public unregisterForSlmLMMIncomingSession(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingSlmLMMSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 284
    return-void
.end method

.method public unregisterForSlmTransferProgress(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 263
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 264
    return-void
.end method
