.class public Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;
.super Landroid/os/Handler;
.source "OptionsRequestController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$IOptionsEventListener;,
        Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;
    }
.end annotation


# static fields
.field private static final EVENT_OPTIONS_EVENT:I = 0x3

.field private static final EVENT_PROCESS_QUEUE:I = 0x1

.field private static final EVENT_PUSH_REQUEST:I = 0x2

.field private static final EVENT_PUSH_RESPONSE:I = 0x5

.field private static final EVENT_SEND_CAPEX_RESPONSE_COMPLETE:I = 0x6

.field private static final EVENT_SET_OWN_CAPABILITIES:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "OptionsReqController"

.field private static final MAX_OPTIONS_REQ:I = 0xf

.field private static final OPTIONS_PROCESS_TIMEOUT:I = 0x1e


# instance fields
.field private mListener:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$IOptionsEventListener;

.field private mProcessingRequests:I

.field private mRegistrationId:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;",
            ">;"
        }
    .end annotation
.end field

.field mService:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 69
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mProcessingRequests:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mListener:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$IOptionsEventListener;

    .line 70
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getOptionsHandler()Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mService:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    .line 71
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRegistrationId:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 72
    return-void
.end method

.method private OnSendCapexResponse(Lcom/sec/ims/util/ImsUri;JLjava/lang/String;IILjava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "myFeatures"    # J
    .param p4, "txID"    # Ljava/lang/String;
    .param p5, "lastSeen"    # I
    .param p6, "phoneId"    # I
    .param p7, "extFeature"    # Ljava/lang/String;

    .line 170
    new-instance v6, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;-><init>(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;)V

    .line 171
    .local v0, "optionsReq":Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->setIncoming(Z)V

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnSendCapexResponse: txID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OptionsReqController"

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, p4}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->setTxId(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, p5}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->setLastSeen(I)V

    .line 175
    invoke-virtual {v0, p7}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->setExtFeature(Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->sendEmptyMessage(I)Z

    .line 178
    return-void
.end method

.method private completeRequest(Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;)V
    .locals 2
    .param p1, "req"    # Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "completeRequest: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OptionsReqController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 239
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->setState(I)V

    .line 240
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mProcessingRequests:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mProcessingRequests:I

    .line 241
    return-void
.end method

.method private failedRequest(Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;)V
    .locals 2
    .param p1, "req"    # Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failedRequest: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OptionsReqController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 231
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->setState(I)V

    .line 232
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mProcessingRequests:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mProcessingRequests:I

    .line 233
    return-void
.end method

.method private findOptionsRequest(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "phoneId"    # I

    .line 212
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->findRequest(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;

    move-result-object v0

    return-object v0
.end method

.method private findRequest(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;
    .locals 3
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "state"    # I
    .param p3, "phoneId"    # I

    .line 216
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;

    .line 217
    .local v1, "req":Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getPhoneId()I

    move-result v2

    if-ne v2, p3, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/sec/internal/helper/UriUtil;->equals(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    if-ltz p2, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getState()I

    move-result v2

    if-eq v2, p2, :cond_0

    .line 219
    goto :goto_0

    .line 221
    :cond_0
    return-object v1

    .line 223
    .end local v1    # "req":Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;
    :cond_1
    goto :goto_0

    .line 224
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleSendCapexResponseComplete(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 3
    .param p1, "ret"    # Lcom/sec/internal/helper/AsyncResult;

    .line 319
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;

    .line 320
    .local v0, "req":Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;
    if-eqz v0, :cond_0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsEvent: handleSendCapexResponseComplete."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getTxId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 321
    const-string v2, "OptionsReqController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->completeRequest(Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;)V

    .line 325
    :cond_0
    return-void
.end method

.method private handleSetOwnCapabilities(JI)V
    .locals 1
    .param p1, "features"    # J
    .param p3, "phoneId"    # I

    .line 328
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mService:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->setOwnCapabilities(JI)V

    .line 329
    return-void
.end method

.method private onOptionsEvent(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 9
    .param p1, "ret"    # Lcom/sec/internal/helper/AsyncResult;

    .line 244
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    .line 245
    .local v0, "event":Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v1

    .line 247
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRegistrationId:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "OptionsReqController"

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 248
    const-string v2, "onOptionsEvent: registration is null. fail."

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void

    .line 252
    :cond_0
    const/4 v2, -0x1

    .line 254
    .local v2, "mHandle":I
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRegistrationId:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 255
    invoke-virtual {v5, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 259
    nop

    .line 261
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    .line 263
    .local v4, "uri":Lcom/sec/ims/util/ImsUri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onOptionsEvent: event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onOptionsEvent: mRegistrationId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRegistrationId:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onOptionsEvent: getHandle() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onOptionsEvent: event.getSessionId() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getSessionId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->isResponse()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 270
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getReason()Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->FORBIDDEN_403:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    if-ne v5, v6, :cond_1

    .line 271
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v5

    .line 272
    .local v5, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-interface {v5, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v6

    .line 274
    .local v6, "governor":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    if-eqz v6, :cond_1

    .line 275
    const-string v7, "403 forbidden response w/o warning header"

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v3, Lcom/sec/ims/util/SipError;

    const/16 v7, 0x193

    const-string v8, "Forbidden"

    invoke-direct {v3, v7, v8}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    const-string/jumbo v7, "options"

    invoke-interface {v6, v7, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    .line 281
    .end local v5    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .end local v6    # "governor":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    :cond_1
    const/4 v3, 0x1

    invoke-direct {p0, v4, v3, v1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->findRequest(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;

    move-result-object v3

    .line 282
    .local v3, "req":Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;
    if-eqz v3, :cond_2

    .line 284
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->completeRequest(Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;)V

    .line 287
    :cond_2
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v5

    sget-object v6, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v5, v6, :cond_4

    .line 288
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getFeatures()J

    move-result-wide v5

    sget-wide v7, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    and-long/2addr v5, v7

    sget-wide v7, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    .line 290
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPAssertedIdSet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/util/ImsUri;

    .line 291
    .local v6, "pAssertedIdentity":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {v6}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v7

    sget-object v8, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v7, v8, :cond_3

    .line 292
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->getInstance()Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v7

    .line 293
    invoke-virtual {v6}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 292
    invoke-virtual {v5, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->register(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    goto :goto_1

    .line 296
    .end local v6    # "pAssertedIdentity":Lcom/sec/ims/util/ImsUri;
    :cond_3
    goto :goto_0

    .line 299
    .end local v3    # "req":Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;
    :cond_4
    :goto_1
    goto :goto_2

    .line 300
    :cond_5
    invoke-static {v4}, Lcom/sec/internal/helper/UriUtil;->hasMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 301
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getFeatures()J

    move-result-wide v5

    sget-wide v7, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    and-long/2addr v5, v7

    sget-wide v7, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_6

    .line 302
    return-void

    .line 305
    :cond_6
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getSessionId()I

    move-result v5

    if-eq v2, v5, :cond_7

    .line 306
    const-string v5, "onOptionsEvent: event.getSessionId()!= event.getSessionId()"

    invoke-static {v3, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-void

    .line 311
    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mListener:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$IOptionsEventListener;

    if-eqz v3, :cond_8

    .line 312
    invoke-interface {v3, v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$IOptionsEventListener;->onCapabilityUpdate(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V

    .line 315
    :cond_8
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->process()V

    .line 316
    return-void

    .line 256
    .end local v4    # "uri":Lcom/sec/ims/util/ImsUri;
    :catch_0
    move-exception v4

    .line 257
    .local v4, "e":Ljava/lang/NullPointerException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onOptionsEvent: getRegistrationInfo is Null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " mRegistrationId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRegistrationId:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void
.end method

.method private onRequestCapabilityExchange(Lcom/sec/ims/util/ImsUri;JLjava/lang/String;I)V
    .locals 9
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "myFeatures"    # J
    .param p4, "extFeature"    # Ljava/lang/String;
    .param p5, "phoneId"    # I

    .line 144
    invoke-direct {p0, p1, p5}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->findOptionsRequest(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;

    move-result-object v0

    .line 145
    .local v0, "req":Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;
    if-eqz v0, :cond_2

    .line 146
    const-wide/16 v1, 0x0

    .line 147
    .local v1, "diff":J
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 148
    .local v3, "current":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getTimestamp()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 149
    .end local v1    # "diff":J
    .local v4, "diff":J
    const-wide/16 v1, 0x7530

    cmp-long v1, v4, v1

    const-string v2, "OptionsReqController"

    if-lez v1, :cond_0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRequestCapabilityExchange: options timeout diff = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms, set failed"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->failedRequest(Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;)V

    goto :goto_0

    .line 154
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRequestCapabilityExchange: myFeatures :"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "req.getMyFeatures()"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getMyFeatures()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v1, v1

    cmp-long v1, p2, v1

    if-eqz v1, :cond_1

    .line 156
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getMyFeatures()J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-nez v1, :cond_2

    .line 157
    return-void

    .line 160
    :cond_1
    return-void

    .line 164
    .end local v3    # "current":Ljava/util/Date;
    .end local v4    # "diff":J
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v8, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;

    move-object v2, v8

    move-object v3, p1

    move-wide v4, p2

    move v6, p5

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;-><init>(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->sendEmptyMessage(I)Z

    .line 166
    return-void
.end method

.method private process()V
    .locals 20

    .line 181
    move-object/from16 v0, p0

    const-string v1, "OptionsReqController"

    const-string/jumbo v2, "process requestQueue."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 184
    return-void

    .line 187
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 189
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;

    .line 190
    .local v2, "req":Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 191
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getState()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 192
    goto :goto_1

    .line 195
    :cond_2
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->isIncoming()Z

    move-result v3

    if-nez v3, :cond_3

    .line 196
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mService:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getMyFeatures()J

    move-result-wide v7

    .line 197
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getPhoneId()I

    move-result v9

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getExtFeature()Ljava/lang/String;

    move-result-object v10

    .line 196
    invoke-interface/range {v5 .. v10}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_3
    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mService:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v12

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getMyFeatures()J

    move-result-wide v13

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getTxId()Ljava/lang/String;

    move-result-object v15

    .line 200
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getLastSeen()I

    move-result v16

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    .line 201
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getPhoneId()I

    move-result v18

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getExtFeature()Ljava/lang/String;

    move-result-object v19

    .line 199
    invoke-interface/range {v11 .. v19}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->sendCapexResponse(Lcom/sec/ims/util/ImsUri;JLjava/lang/String;ILandroid/os/Message;ILjava/lang/String;)V

    .line 205
    :goto_0
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->setState(I)V

    .line 206
    iget v3, v0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mProcessingRequests:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mProcessingRequests:I

    .line 208
    .end local v2    # "req":Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mProcessingRequests:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_1

    .line 209
    :cond_5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 333
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "EXTFEATURE"

    const-string v2, "FEATURES"

    const-string v3, "URI"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 360
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->handleSendCapexResponseComplete(Lcom/sec/internal/helper/AsyncResult;)V

    .line 361
    goto/16 :goto_0

    .line 353
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 354
    .local v0, "b1":Landroid/os/Bundle;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 355
    const-string v2, "TXID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    const-string v2, "LASTSEEN"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 356
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    .line 354
    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->OnSendCapexResponse(Lcom/sec/ims/util/ImsUri;JLjava/lang/String;IILjava/lang/String;)V

    .line 357
    goto :goto_0

    .line 349
    .end local v0    # "b1":Landroid/os/Bundle;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->handleSetOwnCapabilities(JI)V

    .line 350
    goto :goto_0

    .line 345
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->onOptionsEvent(Lcom/sec/internal/helper/AsyncResult;)V

    .line 346
    goto :goto_0

    .line 335
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 336
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 337
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    iget v9, p1, Landroid/os/Message;->arg1:I

    .line 336
    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->onRequestCapabilityExchange(Lcom/sec/ims/util/ImsUri;JLjava/lang/String;I)V

    .line 338
    goto :goto_0

    .line 341
    .end local v0    # "b":Landroid/os/Bundle;
    :pswitch_5
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->process()V

    .line 342
    nop

    .line 366
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mService:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->registerForOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 76
    return-void
.end method

.method public synthetic lambda$setImsRegistration$0$OptionsRequestController(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistration;)V
    .locals 3
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "r"    # Lcom/sec/ims/ImsRegistration;

    .line 84
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 85
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRegistrationId:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-static {v2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoId(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImsRegistration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OptionsReqController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public registerOptionsEvent(Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$IOptionsEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$IOptionsEventListener;

    .line 79
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mListener:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$IOptionsEventListener;

    .line 80
    return-void
.end method

.method public requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;)Z
    .locals 3
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "myFeatures"    # J
    .param p4, "phoneId"    # I
    .param p5, "extFeature"    # Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestCapabilityExchange: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "iari"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OptionsReqController"

    invoke-static {v1, p4, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "URI"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 119
    const-string v1, "FEATURES"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 120
    const-string v1, "EXTFEATURE"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p4, v2, v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->sendMessage(Landroid/os/Message;)Z

    .line 126
    const/4 v1, 0x1

    return v1
.end method

.method public sendCapexResponse(Lcom/sec/ims/util/ImsUri;JLjava/lang/String;IILjava/lang/String;)Z
    .locals 3
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "myFeatures"    # J
    .param p4, "txId"    # Ljava/lang/String;
    .param p5, "lastSeen"    # I
    .param p6, "phoneId"    # I
    .param p7, "extFeature"    # Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendCapexResponse: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OptionsReqController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "TXID"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "FEATURES"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 135
    const-string v1, "URI"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 136
    const-string v1, "LASTSEEN"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    const-string v1, "EXTFEATURE"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p6, v2, v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->sendMessage(Landroid/os/Message;)Z

    .line 139
    const/4 v1, 0x1

    return v1
.end method

.method public setImsDeRegistration(Lcom/sec/ims/ImsRegistration;)V
    .locals 5
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 91
    const/4 v0, -0x1

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 91
    if-eqz p1, :cond_2

    .line 92
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    .line 93
    .local v1, "phoneId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setImsDeRegistration: clearing requests queue for phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OptionsReqController"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;

    .line 96
    .local v3, "req":Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->getPhoneId()I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 97
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 99
    .end local v3    # "req":Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;
    :cond_0
    goto :goto_0

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRegistrationId:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 101
    .end local v1    # "phoneId":I
    goto :goto_2

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRequestQueue:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 103
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 104
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->mRegistrationId:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 107
    .end local v1    # "i":I
    :cond_3
    :goto_2
    return-void
.end method

.method public setImsRegistration(Lcom/sec/ims/ImsRegistration;)V
    .locals 2
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 83
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$OptionsRequestController$5sVnsjfjGxdxS-qefzS2l2374is;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$OptionsRequestController$5sVnsjfjGxdxS-qefzS2l2374is;-><init>(Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;Lcom/sec/ims/ImsRegistration;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 88
    return-void
.end method

.method public setOwnCapabilities(JI)V
    .locals 3
    .param p1, "features"    # J
    .param p3, "phoneId"    # I

    .line 110
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p3, v2, v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->sendMessage(Landroid/os/Message;)Z

    .line 111
    return-void
.end method
