.class public Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;
.super Lcom/sec/internal/ims/core/handler/PresenceHandler;
.source "ResipPresenceHandler.java"


# static fields
.field public static final EVENT_PRESENCE_NOTIFY:I = 0x67

.field public static final EVENT_PRESENCE_PUBLISH_RESPONSE:I = 0x65

.field public static final EVENT_PRESENCE_SUBSCRIBE_RESPONSE:I = 0x66

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCallbackMessageToSubscriptionId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/Message;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private mMno:Lcom/sec/internal/constants/Mno;

.field private mPresenceInfoRegistrant:Lcom/sec/internal/helper/Registrant;

.field protected final mPresenceServiceHandles:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPublishResponseRegistrant:Lcom/sec/internal/helper/Registrant;

.field private mRequestCallbackMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/Message;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

.field protected mSubscriptionIdToCallbackMessage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;

    .line 63
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 83
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/PresenceHandler;-><init>(Landroid/os/Looper;)V

    .line 69
    sget-object v0, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mMno:Lcom/sec/internal/constants/Mno;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    .line 75
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceInfoRegistrant:Lcom/sec/internal/helper/Registrant;

    .line 76
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPublishResponseRegistrant:Lcom/sec/internal/helper/Registrant;

    .line 84
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mSubscriptionIdToCallbackMessage:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mCallbackMessageToSubscriptionId:Ljava/util/HashMap;

    .line 88
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 89
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceServiceHandles:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 90
    return-void
.end method

.method private callbackPresenceResponse(Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "pr"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 182
    .local v0, "onComplete":Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    if-eqz v0, :cond_0

    .line 184
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "callbackPresenceResponse() : callback found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 186
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 188
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "callbackPresenceResponse() : cannot find callback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_0
    return-void
.end method

.method private getPresenceResponse(Landroid/os/Message;)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 193
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    .line 194
    .local v0, "gr":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->handle()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    .line 195
    .local v1, "userAgent":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v2

    .line 196
    .local v2, "phoneId":I
    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v2

    .line 199
    :cond_0
    new-instance v9, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->result()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v4, v3

    .line 200
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->sipError()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->errorStr()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, v9

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;-><init>(ZILjava/lang/String;II)V

    .line 201
    .local v3, "pr":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;
    return-object v3
.end method

.method private getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 2
    .param p1, "handle"    # I

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 126
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v1
.end method

.method private getUa(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 2
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 121
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v1
.end method

.method private handleNewPresenceInfo(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 24
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 270
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 271
    .local v0, "contactInfoListSize":I
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;-><init>()V

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;

    .line 272
    .local v2, "newPresenceInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;->handle()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-direct {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v4

    .line 273
    .local v4, "userAgent":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v5

    .line 274
    .local v5, "phoneId":I
    if-eqz v4, :cond_0

    .line 275
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v5

    .line 277
    :cond_0
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;->contactInfoLength()I

    move-result v6

    .line 278
    .end local v0    # "contactInfoListSize":I
    .local v6, "contactInfoListSize":I
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleNewPresenceInfo(): subscriptionID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;->subscriptionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 278
    invoke-static {v0, v5, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 280
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleNewPresenceInfo(): contactinfo size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 282
    const/4 v0, 0x0

    move v7, v0

    .local v7, "index":I
    :goto_0
    if-ge v7, v6, :cond_12

    .line 283
    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;->contactInfo(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;

    move-result-object v8

    .line 284
    .local v8, "contactInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;
    if-nez v8, :cond_1

    .line 285
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "contact info is null for index: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v5, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 286
    move-object/from16 v20, v2

    goto/16 :goto_c

    .line 288
    :cond_1
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->serviceStatusLength()I

    move-result v9

    .line 289
    .local v9, "serviceStatusListSize":I
    new-instance v0, Lcom/sec/ims/presence/PresenceInfo;

    invoke-direct {v0, v5}, Lcom/sec/ims/presence/PresenceInfo;-><init>(I)V

    move-object v10, v0

    .line 290
    .local v10, "presenceInfo":Lcom/sec/ims/presence/PresenceInfo;
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->uri()Ljava/lang/String;

    move-result-object v11

    .line 291
    .local v11, "uri":Ljava/lang/String;
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleNewPresenceInfo(): entity uri = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->uri()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v10, v11}, Lcom/sec/ims/presence/PresenceInfo;->setUri(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v10, v11}, Lcom/sec/ims/presence/PresenceInfo;->setTelUri(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v10, v5}, Lcom/sec/ims/presence/PresenceInfo;->setPhoneId(I)V

    .line 296
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;->subscriptionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/sec/ims/presence/PresenceInfo;->setSubscriptionId(Ljava/lang/String;)V

    .line 297
    const/4 v0, 0x0

    .local v0, "statusListIndex":I
    :goto_1
    if-ge v0, v9, :cond_6

    .line 298
    invoke-virtual {v8, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->serviceStatus(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;

    move-result-object v12

    .line 299
    .local v12, "serviceStatus":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;
    if-eqz v12, :cond_5

    .line 300
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->mediaCapabilitiesLength()I

    move-result v13

    .line 301
    .local v13, "listSize":I
    new-array v15, v13, [Ljava/lang/String;

    .line 302
    .local v15, "mediaCapabilities":[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v13, :cond_2

    .line 303
    invoke-virtual {v12, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->mediaCapabilities(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v14

    .line 302
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 305
    .end local v14    # "i":I
    :cond_2
    nop

    .line 307
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->serviceId()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v20, v2

    .end local v2    # "newPresenceInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;
    .local v20, "newPresenceInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->version()Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-static {v14, v2, v15}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v2

    .line 309
    .local v2, "serviceTuple":Lcom/sec/ims/presence/ServiceTuple;
    if-nez v2, :cond_3

    .line 311
    new-instance v21, Lcom/sec/ims/presence/ServiceTuple;

    sget v14, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    move-object/from16 v22, v2

    .end local v2    # "serviceTuple":Lcom/sec/ims/presence/ServiceTuple;
    .local v22, "serviceTuple":Lcom/sec/ims/presence/ServiceTuple;
    int-to-long v2, v14

    .line 313
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->serviceId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->version()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v14, v21

    move-object/from16 v23, v15

    .end local v15    # "mediaCapabilities":[Ljava/lang/String;
    .local v23, "mediaCapabilities":[Ljava/lang/String;
    move-wide v15, v2

    move-object/from16 v19, v23

    invoke-direct/range {v14 .. v19}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v2, v21

    .end local v22    # "serviceTuple":Lcom/sec/ims/presence/ServiceTuple;
    .restart local v2    # "serviceTuple":Lcom/sec/ims/presence/ServiceTuple;
    goto :goto_3

    .line 309
    .end local v23    # "mediaCapabilities":[Ljava/lang/String;
    .restart local v15    # "mediaCapabilities":[Ljava/lang/String;
    :cond_3
    move-object/from16 v22, v2

    move-object/from16 v23, v15

    .line 316
    .end local v15    # "mediaCapabilities":[Ljava/lang/String;
    .restart local v23    # "mediaCapabilities":[Ljava/lang/String;
    :goto_3
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->status()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->status()Ljava/lang/String;

    move-result-object v3

    const-string v14, ""

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 317
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->status()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/ims/presence/ServiceTuple;->basicStatus:Ljava/lang/String;

    goto :goto_4

    .line 319
    :cond_4
    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v14, "handleNewPresenceInfo(): status is null"

    invoke-static {v3, v5, v14}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 321
    :goto_4
    invoke-virtual {v10, v2}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    .line 322
    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleNewPresenceInfo(): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/ims/presence/ServiceTuple;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v5, v14}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_5

    .line 299
    .end local v13    # "listSize":I
    .end local v20    # "newPresenceInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;
    .end local v23    # "mediaCapabilities":[Ljava/lang/String;
    .local v2, "newPresenceInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;
    :cond_5
    move-object/from16 v20, v2

    .line 297
    .end local v2    # "newPresenceInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;
    .end local v12    # "serviceStatus":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;
    .restart local v20    # "newPresenceInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;
    :goto_5
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, p1

    move-object/from16 v2, v20

    goto/16 :goto_1

    .end local v20    # "newPresenceInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;
    .restart local v2    # "newPresenceInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;
    :cond_6
    move-object/from16 v20, v2

    .line 325
    .end local v0    # "statusListIndex":I
    .end local v2    # "newPresenceInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;
    .restart local v20    # "newPresenceInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->rawPidf()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 326
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->rawPidf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/sec/ims/presence/PresenceInfo;->setPidf(Ljava/lang/String;)V

    goto :goto_6

    .line 328
    :cond_7
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleNewPresenceInfo(): empty pidf"

    invoke-static {v0, v5, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 336
    :goto_6
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNewPresenceInfo: state - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->subscriptionState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", state reason - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->subscriptionFailureReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-static {v0, v5, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 339
    :try_start_0
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->subscriptionState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 340
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->subscriptionState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    .line 341
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SubscriptionState;->name(I)Ljava/lang/String;

    move-result-object v2

    .line 340
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 342
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->subscriptionFailureReason()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 343
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->subscriptionFailureReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "subscriptionFailureReason":Ljava/lang/String;
    const/4 v3, 0x6

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SubscriptionFailureReason;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 345
    iget-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v12, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v3, v12, :cond_8

    .line 346
    new-instance v3, Lcom/sec/ims/presence/ServiceTuple;

    sget v12, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v12, v12

    invoke-direct {v3, v12, v13, v2, v2}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    goto/16 :goto_9

    .line 350
    :cond_8
    new-instance v3, Lcom/sec/ims/presence/ServiceTuple;

    sget v12, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v12, v12

    invoke-direct {v3, v12, v13, v2, v2}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    goto/16 :goto_9

    .line 353
    :cond_9
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SubscriptionFailureReason;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v12, 0x0

    if-eqz v3, :cond_d

    .line 354
    iget-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v13, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v3, v13, :cond_a

    .line 355
    new-instance v3, Lcom/sec/ims/presence/ServiceTuple;

    sget v12, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v12, v12

    invoke-direct {v3, v12, v13, v2, v2}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    goto :goto_9

    .line 358
    :cond_a
    iget-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v13, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v3, v13, :cond_c

    iget-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v13, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v3, v13, :cond_b

    goto :goto_7

    .line 362
    :cond_b
    invoke-virtual {v10, v12}, Lcom/sec/ims/presence/PresenceInfo;->setFetchState(Z)V

    goto :goto_9

    .line 359
    :cond_c
    :goto_7
    new-instance v3, Lcom/sec/ims/presence/ServiceTuple;

    sget v12, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v12, v12

    invoke-direct {v3, v12, v13, v2, v2}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    goto :goto_9

    .line 364
    :cond_d
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SubscriptionFailureReason;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v2, 0x5

    .line 365
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SubscriptionFailureReason;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v2, 0x2

    .line 366
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SubscriptionFailureReason;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_8

    .line 369
    :cond_e
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleNewPresenceInfo: state failure reason - "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->subscriptionFailureReason()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 369
    invoke-static {v2, v5, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_9

    .line 367
    :cond_f
    :goto_8
    invoke-virtual {v10, v12}, Lcom/sec/ims/presence/PresenceInfo;->setFetchState(Z)V

    .line 372
    .end local v0    # "subscriptionFailureReason":Ljava/lang/String;
    :goto_9
    goto :goto_a

    .line 373
    :cond_10
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleNewPresenceInfo: no reason"

    invoke-static {v0, v5, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 374
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 375
    new-instance v0, Lcom/sec/ims/presence/ServiceTuple;

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v12, v3

    invoke-direct {v0, v12, v13, v2, v2}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :cond_11
    :goto_a
    goto :goto_b

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "State or Reason is not understandable."

    invoke-static {v2, v5, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 383
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_b
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceInfoRegistrant:Lcom/sec/internal/helper/Registrant;

    invoke-virtual {v0, v10}, Lcom/sec/internal/helper/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 282
    .end local v8    # "contactInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;
    .end local v9    # "serviceStatusListSize":I
    .end local v10    # "presenceInfo":Lcom/sec/ims/presence/PresenceInfo;
    .end local v11    # "uri":Ljava/lang/String;
    :goto_c
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, p1

    move-object/from16 v2, v20

    goto/16 :goto_0

    .line 385
    .end local v7    # "index":I
    .end local v20    # "newPresenceInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;
    .restart local v2    # "newPresenceInfo":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;
    :cond_12
    return-void
.end method

.method private handleNotify(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 205
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 206
    .local v0, "notify":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notifyid()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 223
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleNotify(): unexpected id"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    :pswitch_0
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleNotify(), EVENT_SUBSCRIBE_STATUS."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->handleSubscribeStatusUpdate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 217
    goto :goto_0

    .line 212
    :pswitch_1
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleNotify(), NOTIFY_PRESENCE_UNPUBLISH_STATUS, just ignore..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    goto :goto_0

    .line 208
    :pswitch_2
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleNotify(), EVENT_PUBLISH_STATUS."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->handlePublishStatusUpdate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 210
    goto :goto_0

    .line 219
    :pswitch_3
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleNotify(), EVENT_PRESENCE_SUBSCRIBE."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->handleNewPresenceInfo(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 221
    nop

    .line 225
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x32c9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handlePublishResponse(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 152
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getPresenceResponse(Landroid/os/Message;)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    move-result-object v0

    .line 153
    .local v0, "pr":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePublishResponse() isSuccess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handlePublishResponse(): "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->callbackPresenceResponse(Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :goto_0
    return-void
.end method

.method private handlePublishStatusUpdate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 18
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 228
    move-object/from16 v0, p0

    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;

    .line 229
    .local v1, "publishStatus":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->handle()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v3

    .line 230
    .local v3, "userAgent":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v4

    .line 231
    .local v4, "phoneId":I
    if-eqz v3, :cond_0

    .line 232
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v4

    .line 234
    :cond_0
    new-instance v17, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->isSuccess()Z

    move-result v6

    .line 235
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->sipErrorCode()J

    move-result-wide v7

    long-to-int v7, v7

    .line 236
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->sipErrorPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->minExpires()J

    move-result-wide v9

    long-to-int v9, v9

    .line 237
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->etag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->remoteExpires()J

    move-result-wide v11

    .line 238
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->isRefresh()Z

    move-result v13

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->retryAfter()J

    move-result-wide v14

    move-object/from16 v5, v17

    move/from16 v16, v4

    invoke-direct/range {v5 .. v16}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;-><init>(ZILjava/lang/String;ILjava/lang/String;JZJI)V

    .line 239
    .local v5, "pr":Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;
    sget-object v6, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handlePublishStatusUpdate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPublishResponseRegistrant:Lcom/sec/internal/helper/Registrant;

    invoke-virtual {v6, v5}, Lcom/sec/internal/helper/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 241
    return-void
.end method

.method private handleSubscribeResponse(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 166
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getPresenceResponse(Landroid/os/Message;)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    move-result-object v0

    .line 167
    .local v0, "pr":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSubscribeResponse() isSuccess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 169
    .local v1, "callback":Landroid/os/Message;
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleSubscribeResponse(): "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mSubscriptionIdToCallbackMessage:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mCallbackMessageToSubscriptionId:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mCallbackMessageToSubscriptionId:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->callbackPresenceResponse(Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mCallbackMessageToSubscriptionId:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :goto_0
    return-void
.end method

.method private handleSubscribeStatusUpdate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 10
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 245
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;

    .line 246
    .local v0, "subscribeStatus":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;->handle()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    .line 247
    .local v1, "userAgent":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v2

    .line 248
    .local v2, "phoneId":I
    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v2

    .line 251
    :cond_0
    new-instance v9, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;->isSuccess()Z

    move-result v4

    .line 252
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;->sipErrorCode()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;->sipErrorPhrase()Ljava/lang/String;

    move-result-object v6

    .line 253
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;->minExpires()J

    move-result-wide v7

    long-to-int v7, v7

    move-object v3, v9

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;-><init>(ZILjava/lang/String;II)V

    .line 255
    .local v3, "pr":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;
    sget-object v4, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSubscribeStatusUpdate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 257
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;->subscriptionId()Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, "subscriptionId":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mSubscriptionIdToCallbackMessage:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    .line 259
    .local v5, "onComplete":Landroid/os/Message;
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mSubscriptionIdToCallbackMessage:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    if-eqz v5, :cond_1

    .line 261
    const/4 v6, 0x0

    invoke-static {v5, v3, v6}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 262
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 264
    :cond_1
    sget-object v6, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v7, "handleSubscribeStatusUpdate: no call back"

    invoke-static {v6, v2, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 266
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 131
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 141
    :pswitch_0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage(), EVENT_PRESENCE_NOTIFY."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->handleNotify(Landroid/os/Message;)V

    .line 143
    goto :goto_0

    .line 137
    :pswitch_1
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage(), EVENT_PRESENCE_SUBSCRIBE_RESPONSE."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->handleSubscribeResponse(Landroid/os/Message;)V

    .line 139
    goto :goto_0

    .line 133
    :pswitch_2
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage(), EVENT_PRESENCE_PUBLISH_RESPONSE."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->handlePublishResponse(Landroid/os/Message;)V

    .line 135
    nop

    .line 147
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 3

    .line 94
    invoke-super {p0}, Lcom/sec/internal/ims/core/handler/PresenceHandler;->init()V

    .line 95
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    .line 96
    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerPresenceEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 98
    return-void
.end method

.method public publish(Lcom/sec/ims/presence/PresenceInfo;Landroid/os/Message;I)V
    .locals 4
    .param p1, "presenceInfo"    # Lcom/sec/ims/presence/PresenceInfo;
    .param p2, "onComplete"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .line 102
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "presence publish:"

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 104
    const-string/jumbo v0, "presence"

    invoke-direct {p0, v0, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 105
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v0, :cond_0

    .line 106
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "publish: UserAgent not found."

    invoke-static {v1, p3, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 107
    return-void

    .line 110
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "presence publish: handle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceServiceHandles:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 112
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mMno:Lcom/sec/internal/constants/Mno;

    .line 114
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 115
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->requestPublish(Lcom/sec/ims/presence/PresenceInfo;Landroid/os/Message;)V

    .line 117
    return-void
.end method

.method public registerForPresenceInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 394
    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceInfoRegistrant:Lcom/sec/internal/helper/Registrant;

    .line 395
    return-void
.end method

.method public registerForPublishFailure(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 399
    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPublishResponseRegistrant:Lcom/sec/internal/helper/Registrant;

    .line 400
    return-void
.end method

.method public registerForWatcherInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 390
    return-void
.end method

.method public subscribe(Lcom/sec/ims/util/ImsUri;ZLandroid/os/Message;Ljava/lang/String;I)V
    .locals 8
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "isAnonymousFetch"    # Z
    .param p3, "onComplete"    # Landroid/os/Message;
    .param p4, "subscriptionId"    # Ljava/lang/String;
    .param p5, "phoneId"    # I

    .line 422
    const-string/jumbo v0, "presence"

    invoke-direct {p0, v0, p5}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 423
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v0, :cond_0

    .line 424
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "subscribe: UserAgent not found."

    invoke-static {v1, p5, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 425
    return-void

    .line 428
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subscribe: subscription id ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p5, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 429
    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 430
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mSubscriptionIdToCallbackMessage:Ljava/util/HashMap;

    invoke-virtual {v2, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mCallbackMessageToSubscriptionId:Ljava/util/HashMap;

    invoke-virtual {v2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v3

    move-object v4, p1

    move v5, p2

    move-object v6, p4

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->requestSubscribe(ILcom/sec/ims/util/ImsUri;ZLjava/lang/String;Landroid/os/Message;)V

    .line 434
    return-void
.end method

.method public subscribeList(Ljava/util/List;ZLandroid/os/Message;Ljava/lang/String;ZII)V
    .locals 14
    .param p2, "isAnonymousFetch"    # Z
    .param p3, "onComplete"    # Landroid/os/Message;
    .param p4, "subscriptionId"    # Ljava/lang/String;
    .param p5, "isGzipEnabled"    # Z
    .param p6, "expiry"    # I
    .param p7, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;Z",
            "Landroid/os/Message;",
            "Ljava/lang/String;",
            "ZII)V"
        }
    .end annotation

    .line 405
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v10, p4

    move/from16 v11, p7

    const-string/jumbo v2, "presence"

    invoke-direct {p0, v2, v11}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v12

    .line 406
    .local v12, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v12, :cond_0

    .line 407
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "subscribeList: UserAgent not found"

    invoke-static {v2, v11, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 408
    return-void

    .line 411
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subscribeList: subscription id ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v11, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 412
    const/16 v2, 0x66

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 413
    .local v13, "message":Landroid/os/Message;
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {v2, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mSubscriptionIdToCallbackMessage:Ljava/util/HashMap;

    invoke-virtual {v2, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mCallbackMessageToSubscriptionId:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v3

    move-object v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object v9, v13

    invoke-virtual/range {v2 .. v9}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->requestSubscribeList(ILjava/util/List;ZLjava/lang/String;ZILandroid/os/Message;)V

    .line 418
    return-void
.end method

.method public unpublish(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 438
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "presence unpublish:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceServiceHandles:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 442
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v0, :cond_0

    .line 443
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "unpublish: UserAgent not found. UserAgent already was de-registerd"

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceServiceHandles:Lcom/sec/internal/helper/PhoneIdKeyMap;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 445
    return-void

    .line 447
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "presence unpublish: handle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 451
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->requestUnpublish()V

    .line 452
    return-void
.end method

.method public updateServiceVersion(ILjava/util/HashMap;)V
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 456
    .local p2, "svMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "presence updateServiceVersion:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 458
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->updateServiceVersion(ILjava/util/HashMap;)V

    .line 461
    return-void
.end method
