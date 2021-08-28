.class public Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;
.super Landroid/os/Handler;
.source "EucStoreAndForward.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;


# static fields
.field private static final EVENT_SEND_RESPONSE_RESPONSE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

.field private mOwnIdentitiesInForwardState:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private storedResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;Landroid/os/Looper;)V
    .locals 1
    .param p1, "eucService"    # Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 49
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 50
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->mOwnIdentitiesInForwardState:Ljava/util/Set;

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->storedResponses:Ljava/util/List;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;

    .line 33
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->storedResponses:Ljava/util/List;

    return-object v0
.end method

.method private createEUCStoreAndForwardResponseData(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;)Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;
    .locals 8
    .param p1, "eucData"    # Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .param p2, "response"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;
    .param p3, "pin"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;
    .param p5, "responseToWorkflowHandle"    # Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;

    .line 148
    new-instance v7, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$3;-><init>(Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;)V

    return-object v7
.end method


# virtual methods
.method public forward(Ljava/lang/String;)V
    .locals 13
    .param p1, "ownIdentity"    # Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->mOwnIdentitiesInForwardState:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state for ownIdentity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " set to FORWARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->storedResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;

    .line 127
    .local v1, "responseData":Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;
    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;->getEUCData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v2

    .line 128
    .local v2, "eucData":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    new-instance v12, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;

    .line 130
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getId()Ljava/lang/String;

    move-result-object v5

    .line 131
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object v6

    .line 132
    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;->getPIN()Ljava/lang/String;

    move-result-object v7

    .line 133
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v8

    .line 134
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v9

    .line 135
    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;->getResponse()Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    move-result-object v10

    const/4 v4, 0x1

    .line 136
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Landroid/os/Message;)V

    .line 129
    invoke-interface {v3, v12}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->sendEucResponse(Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;)V

    .line 138
    .end local v1    # "responseData":Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;
    .end local v2    # "eucData":Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    :cond_0
    goto :goto_0

    .line 139
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 182
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_3

    .line 183
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 184
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;

    .line 190
    .local v1, "responseStatus":Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;
    const/4 v2, 0x0

    .line 191
    .local v2, "eucResponseToBeRemoved":Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->storedResponses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;

    .line 192
    .local v4, "storedData":Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;
    invoke-interface {v4}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;->getEUCData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 193
    if-nez v2, :cond_0

    .line 194
    move-object v2, v4

    .line 197
    .end local v4    # "storedData":Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;
    :cond_0
    goto :goto_0

    .line 198
    :cond_1
    if-eqz v2, :cond_2

    .line 199
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;->getCallback()Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;->onStatus(Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;)V

    .line 200
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->storedResponses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 202
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    .end local v1    # "responseStatus":Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;
    .end local v2    # "eucResponseToBeRemoved":Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;
    :cond_2
    goto :goto_1

    .line 203
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: Undefined message, ignoring!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_1
    return-void
.end method

.method public sendResponse(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;)Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;
    .locals 11
    .param p1, "euc"    # Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .param p2, "response"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;
    .param p3, "callback"    # Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;

    .line 60
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$1;-><init>(Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;)V

    .line 72
    .local v0, "responseToWorkflowHandle":Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->storedResponses:Ljava/util/List;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->createEUCStoreAndForwardResponseData(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;)Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->mOwnIdentitiesInForwardState:Ljava/util/Set;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    new-instance v10, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;

    .line 77
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    .line 78
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x1

    .line 79
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    move-object v2, v10

    move-object v8, p2

    invoke-direct/range {v2 .. v9}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Landroid/os/Message;)V

    .line 76
    invoke-interface {v1, v10}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->sendEucResponse(Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;)V

    .line 82
    :cond_0
    return-object v0
.end method

.method public sendResponse(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;)Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;
    .locals 11
    .param p1, "euc"    # Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .param p2, "response"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;
    .param p3, "pin"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;

    .line 90
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$2;-><init>(Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;)V

    .line 102
    .local v0, "responseToWorkflowHandle":Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->storedResponses:Ljava/util/List;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->createEUCStoreAndForwardResponseData(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;)Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->mOwnIdentitiesInForwardState:Ljava/util/Set;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    new-instance v10, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;

    .line 107
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object v4

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    .line 108
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x1

    .line 109
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    move-object v2, v10

    move-object v5, p3

    move-object v8, p2

    invoke-direct/range {v2 .. v9}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Landroid/os/Message;)V

    .line 106
    invoke-interface {v1, v10}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->sendEucResponse(Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;)V

    .line 112
    :cond_0
    return-object v0
.end method

.method public store(Ljava/lang/String;)V
    .locals 3
    .param p1, "ownIdentity"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->mOwnIdentitiesInForwardState:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state for ownIdentity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " set to STORE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method
