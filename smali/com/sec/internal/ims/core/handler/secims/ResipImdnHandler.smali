.class public Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;
.super Landroid/os/Handler;
.source "ResipImdnHandler.java"


# static fields
.field private static final EVENT_IMDN_NOTI:I = 0x2

.field private static final EVENT_IMDN_RESPONSE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mImdnNotificationRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mImdnResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 58
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 52
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->mImdnNotificationRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 53
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->mImdnResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    .line 59
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 60
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerImdnHandler(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 61
    return-void
.end method

.method private getImdnRecRouteOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;I)[I
    .locals 8
    .param p1, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;",
            ">;I)[I"
        }
    .end annotation

    .line 111
    .local p2, "imImdnRecRouteList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;>;"
    new-array v0, p3, [I

    .line 112
    .local v0, "offsetArray":[I
    const/4 v1, 0x0

    .line 113
    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;

    .line 114
    .local v3, "route":Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->getRecordRouteDispName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 115
    .local v4, "nameOffset":I
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->getRecordRouteUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 117
    .local v5, "uriOffset":I
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->startImdnRecRoute(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 118
    invoke-static {p1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 119
    invoke-static {p1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 120
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "i":I
    .local v6, "i":I
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->endImdnRecRoute(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v7

    aput v7, v0, v1

    .line 121
    .end local v3    # "route":Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;
    .end local v4    # "nameOffset":I
    .end local v5    # "uriOffset":I
    move v1, v6

    goto :goto_0

    .line 122
    .end local v6    # "i":I
    .restart local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private handleImdnReceivedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 12
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 266
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    .line 267
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleImNotiReceivedNotify(): invalid notify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void

    .line 271
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImNotificationStatusReceived;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImNotificationStatusReceived;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImNotificationStatusReceived;

    .line 272
    .local v0, "proto":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImNotificationStatusReceived;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImNotificationStatusReceived;->status()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;

    move-result-object v1

    .line 273
    .local v1, "param":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;
    if-nez v1, :cond_1

    .line 274
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleImNotiReceivedNotify(): param is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void

    .line 280
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImNotificationStatusReceived;->cpimDateTime()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImNotificationStatusReceived;->cpimDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .local v2, "cpimDate":Ljava/util/Date;
    :goto_0
    goto :goto_1

    .line 281
    .end local v2    # "cpimDate":Ljava/util/Date;
    :catch_0
    move-exception v2

    .line 282
    .local v2, "e":Ljava/text/ParseException;
    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    move-object v2, v3

    .line 288
    .local v2, "cpimDate":Ljava/util/Date;
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->imdnDateTime()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->imdnDateTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :cond_3
    move-object v3, v2

    .line 292
    .local v3, "imdnDate":Ljava/util/Date;
    :goto_2
    goto :goto_3

    .line 289
    .end local v3    # "imdnDate":Ljava/util/Date;
    :catch_1
    move-exception v3

    .line 290
    .local v3, "e":Ljava/text/ParseException;
    sget-object v4, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    move-object v4, v2

    move-object v3, v4

    .line 294
    .local v3, "imdnDate":Ljava/util/Date;
    :goto_3
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImNotificationStatusReceived;->uri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v10

    .line 295
    .local v10, "remoteUri":Lcom/sec/ims/util/ImsUri;
    if-nez v10, :cond_4

    .line 296
    sget-object v4, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid remote uri, return. uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImNotificationStatusReceived;->uri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void

    .line 300
    :cond_4
    new-instance v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->imdnMessageId()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    .line 301
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->status(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->translateNotificationType(I)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v8

    move-object v4, v11

    move-object v6, v3

    move-object v7, v10

    move-object v9, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;-><init>(Ljava/lang/String;Ljava/util/Date;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Ljava/util/Date;)V

    .line 303
    .local v4, "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleImNotiReceivedNotify: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->mImdnNotificationRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v6, Lcom/sec/internal/helper/AsyncResult;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v4, v7}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v5, v6}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 305
    return-void
.end method

.method private handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 2
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 80
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notifyid()I

    move-result v0

    const/16 v1, 0x2afe

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2b07

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->handleSendImdnResponseNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 87
    goto :goto_0

    .line 82
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->handleImdnReceivedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 83
    nop

    .line 92
    :goto_0
    return-void
.end method

.method private handleSendImdnNotificationResponse(Landroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImNotiResponse;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImNotiResponse;

    .line 257
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSendImdnNotificationResponse()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImNotiResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v0

    .line 259
    .local v0, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    if-eqz p1, :cond_0

    .line 260
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 261
    const/4 p1, 0x0

    .line 263
    :cond_0
    return-void
.end method

.method private handleSendImdnResponseNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 8
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 308
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    .line 309
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSendImdnResponseNotify(): invalid notify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void

    .line 313
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImdnResponseReceived;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImdnResponseReceived;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImdnResponseReceived;

    .line 314
    .local v0, "response":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImdnResponseReceived;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImdnResponseReceived;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v1

    .line 316
    .local v1, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v3, "messageIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImdnResponseReceived;->imdnMessageIdLength()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 318
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImdnResponseReceived;->imdnMessageId(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 321
    .end local v4    # "i":I
    :cond_1
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnResponseReceivedEvent;

    invoke-direct {v4, v1, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnResponseReceivedEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/util/Collection;)V

    .line 322
    .local v4, "event":Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnResponseReceivedEvent;
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSendImdnResponseNotify() Event : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->mImdnResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    new-instance v6, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {v6, v2, v4, v2}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v5, v6}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 324
    return-void
.end method

.method private parseStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 357
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

    .line 352
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 353
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 354
    return-void
.end method

.method private sendRequestToStack(Lcom/sec/internal/ims/core/handler/secims/UserAgent;ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V
    .locals 2
    .param p1, "ua"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .param p2, "id"    # I
    .param p3, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p4, "offset"    # I
    .param p5, "callback"    # Landroid/os/Message;

    .line 344
    if-nez p1, :cond_0

    .line 345
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendRequestToStack(): UserAgent not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void

    .line 348
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;-><init>(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V

    .line 349
    return-void
.end method

.method private translateNotificationType(I)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .locals 1
    .param p1, "status"    # I

    .line 327
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 339
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object v0

    .line 335
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_MMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object v0

    .line 333
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_SMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object v0

    .line 331
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object v0

    .line 329
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 73
    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 69
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImNotiResponse;

    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->handleSendImdnNotificationResponse(Landroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImNotiResponse;)V

    .line 70
    nop

    .line 77
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :goto_0
    return-void
.end method

.method registerForImdnNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->mImdnNotificationRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 96
    return-void
.end method

.method registerForImdnResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->mImdnResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 104
    return-void
.end method

.method sendDispositionNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;II)V
    .locals 28
    .param p1, "params"    # Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;
    .param p2, "service"    # I
    .param p3, "sessionHandle"    # I

    .line 126
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDispositionNotification(): service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sessionHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDispositionNotification(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, v7, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v11

    .line 131
    .local v11, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    if-eqz v9, :cond_1

    const/4 v0, 0x2

    if-eq v9, v0, :cond_0

    .line 141
    iget-object v0, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mOwnImsi:Ljava/lang/String;

    const-string v1, "im"

    invoke-interface {v11, v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-object v12, v0

    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    goto :goto_0

    .line 133
    .end local v0    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    :cond_0
    iget-object v0, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mOwnImsi:Ljava/lang/String;

    const-string v1, "ft"

    invoke-interface {v11, v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 134
    .restart local v0    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    move-object v12, v0

    goto :goto_0

    .line 136
    .end local v0    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    :cond_1
    iget-object v0, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mOwnImsi:Ljava/lang/String;

    const-string/jumbo v1, "slm"

    invoke-interface {v11, v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 137
    .restart local v0    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    move-object v12, v0

    .line 143
    .end local v0    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .local v12, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    :goto_0
    if-nez v12, :cond_3

    .line 144
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendDispositionNotification(): UserAgent not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mCallback:Landroid/os/Message;

    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    invoke-direct {v7, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 149
    :cond_2
    return-void

    .line 151
    :cond_3
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v13

    .line 153
    .local v13, "registrationHandle":I
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v14, v0

    .line 155
    .local v14, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v2, -0x1

    .local v2, "conversationIdOffset":I
    const/4 v3, -0x1

    .local v3, "contributionIdOffset":I
    const/4 v4, -0x1

    .local v4, "deviceIdOffset":I
    const/4 v5, -0x1

    .line 156
    .local v5, "extHeaderOffset":I
    const/4 v6, -0x1

    .local v6, "imNotificationParamOffset":I
    const/4 v15, -0x1

    .local v15, "uriOffset":I
    const/16 v16, -0x1

    .line 159
    .local v16, "cpimDateOffset":I
    :try_start_0
    iget-object v0, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mUri:Lcom/sec/ims/util/ImsUri;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_13

    const-string v17, ""

    if-nez v0, :cond_4

    move-object/from16 v0, v17

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v0, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "mUri":Ljava/lang/String;
    :goto_1
    invoke-virtual {v14, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v18

    move/from16 v15, v18

    .line 161
    iget-object v1, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mConversationId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_13

    if-eqz v1, :cond_5

    :try_start_2
    iget-object v1, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mConversationId:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 210
    .end local v0    # "mUri":Ljava/lang/String;
    :catch_0
    move-exception v0

    move/from16 v20, v6

    move-object/from16 v21, v11

    move-object/from16 v24, v12

    goto/16 :goto_e

    .line 161
    .restart local v0    # "mUri":Ljava/lang/String;
    :cond_5
    move-object/from16 v1, v17

    :goto_2
    :try_start_3
    invoke-virtual {v14, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_13

    move v2, v1

    .line 162
    :try_start_4
    iget-object v1, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mContributionId:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_12

    if-eqz v1, :cond_6

    :try_start_5
    iget-object v1, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mContributionId:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :cond_6
    move-object/from16 v1, v17

    :goto_3
    :try_start_6
    invoke-virtual {v14, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_12

    move v3, v1

    .line 163
    :try_start_7
    iget-object v1, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mDeviceId:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_11

    if-eqz v1, :cond_7

    :try_start_8
    iget-object v1, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mDeviceId:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_4

    :cond_7
    move-object/from16 v1, v17

    :goto_4
    :try_start_9
    invoke-virtual {v14, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_11

    move v4, v1

    .line 164
    :try_start_a
    iget-object v1, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mCpimDate:Ljava/util/Date;

    invoke-static {v1}, Lcom/sec/internal/helper/Iso8601;->formatMillis(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_10

    .line 166
    .end local v16    # "cpimDateOffset":I
    .local v1, "cpimDateOffset":I
    move-object/from16 v17, v0

    .end local v0    # "mUri":Ljava/lang/String;
    .local v17, "mUri":Ljava/lang/String;
    :try_start_b
    iget-object v0, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mImExtensionMNOHeaders:Ljava/util/Map;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_f

    if-eqz v0, :cond_8

    :try_start_c
    iget-object v0, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mImExtensionMNOHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 167
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_3

    move/from16 v19, v5

    .end local v5    # "extHeaderOffset":I
    .local v19, "extHeaderOffset":I
    :try_start_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_2

    move/from16 v20, v6

    .end local v6    # "imNotificationParamOffset":I
    .local v20, "imNotificationParamOffset":I
    :try_start_e
    const-string/jumbo v6, "sendDispositionNotification()112312: headers "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mImExtensionMNOHeaders:Ljava/util/Map;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mImExtensionMNOHeaders:Ljava/util/Map;

    invoke-static {v14, v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateStackImExtensionHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/Map;)I

    move-result v0
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_1

    move v5, v0

    move v6, v5

    .end local v19    # "extHeaderOffset":I
    .restart local v5    # "extHeaderOffset":I
    goto :goto_5

    .line 210
    .end local v5    # "extHeaderOffset":I
    .end local v17    # "mUri":Ljava/lang/String;
    .restart local v19    # "extHeaderOffset":I
    :catch_1
    move-exception v0

    move/from16 v16, v1

    move-object/from16 v21, v11

    move-object/from16 v24, v12

    move/from16 v5, v19

    goto/16 :goto_e

    .end local v20    # "imNotificationParamOffset":I
    .restart local v6    # "imNotificationParamOffset":I
    :catch_2
    move-exception v0

    move/from16 v20, v6

    move/from16 v16, v1

    move-object/from16 v21, v11

    move-object/from16 v24, v12

    move/from16 v5, v19

    .end local v6    # "imNotificationParamOffset":I
    .restart local v20    # "imNotificationParamOffset":I
    goto/16 :goto_e

    .end local v19    # "extHeaderOffset":I
    .end local v20    # "imNotificationParamOffset":I
    .restart local v5    # "extHeaderOffset":I
    .restart local v6    # "imNotificationParamOffset":I
    :catch_3
    move-exception v0

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v16, v1

    move-object/from16 v21, v11

    move-object/from16 v24, v12

    .end local v5    # "extHeaderOffset":I
    .end local v6    # "imNotificationParamOffset":I
    .restart local v19    # "extHeaderOffset":I
    .restart local v20    # "imNotificationParamOffset":I
    goto/16 :goto_e

    .line 166
    .end local v19    # "extHeaderOffset":I
    .end local v20    # "imNotificationParamOffset":I
    .restart local v5    # "extHeaderOffset":I
    .restart local v6    # "imNotificationParamOffset":I
    .restart local v17    # "mUri":Ljava/lang/String;
    :cond_8
    move/from16 v19, v5

    move/from16 v20, v6

    .line 171
    .end local v5    # "extHeaderOffset":I
    .end local v6    # "imNotificationParamOffset":I
    .restart local v19    # "extHeaderOffset":I
    .restart local v20    # "imNotificationParamOffset":I
    move/from16 v6, v19

    .end local v19    # "extHeaderOffset":I
    .local v6, "extHeaderOffset":I
    :goto_5
    :try_start_f
    iget-object v0, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mImdnDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 172
    .local v0, "imdnParams":[I
    const/4 v5, 0x0

    .line 173
    .local v5, "index":I
    move/from16 v16, v5

    .end local v5    # "index":I
    .local v16, "index":I
    iget-object v5, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mImdnDataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_e

    move-object/from16 v21, v11

    .end local v11    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .local v21, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    if-eqz v19, :cond_e

    :try_start_10
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;

    move-object/from16 v22, v19

    .line 174
    .local v22, "imdnData":Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;
    const/16 v19, -0x1

    .line 175
    .local v19, "imdnRecRouteVectorOffset":I
    move-object/from16 v11, v22

    move-object/from16 v22, v5

    .end local v22    # "imdnData":Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;
    .local v11, "imdnData":Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;
    iget-object v5, v11, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mImdnRecRouteList:Ljava/util/List;
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_c

    if-eqz v5, :cond_9

    .line 176
    :try_start_11
    iget-object v5, v11, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mImdnRecRouteList:Ljava/util/List;
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_5

    move-object/from16 v24, v12

    .end local v12    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .local v24, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    :try_start_12
    iget-object v12, v11, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mImdnRecRouteList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v7, v14, v5, v12}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->getImdnRecRouteOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;I)[I

    move-result-object v5

    .line 177
    .local v5, "imdnRecRouteOffset":[I
    invoke-static {v14, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->createImdnRecRouteVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v12
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_4

    move/from16 v19, v12

    move/from16 v5, v19

    goto :goto_7

    .line 210
    .end local v0    # "imdnParams":[I
    .end local v5    # "imdnRecRouteOffset":[I
    .end local v11    # "imdnData":Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;
    .end local v16    # "index":I
    .end local v17    # "mUri":Ljava/lang/String;
    .end local v19    # "imdnRecRouteVectorOffset":I
    :catch_4
    move-exception v0

    move/from16 v16, v1

    move v5, v6

    goto/16 :goto_e

    .end local v24    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .restart local v12    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    :catch_5
    move-exception v0

    move-object/from16 v24, v12

    move/from16 v16, v1

    move v5, v6

    .end local v12    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .restart local v24    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    goto/16 :goto_e

    .line 175
    .end local v24    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .restart local v0    # "imdnParams":[I
    .restart local v11    # "imdnData":Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;
    .restart local v12    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .restart local v16    # "index":I
    .restart local v17    # "mUri":Ljava/lang/String;
    .restart local v19    # "imdnRecRouteVectorOffset":I
    :cond_9
    move-object/from16 v24, v12

    .end local v12    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .restart local v24    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    move/from16 v5, v19

    .line 179
    .end local v19    # "imdnRecRouteVectorOffset":I
    .local v5, "imdnRecRouteVectorOffset":I
    :goto_7
    :try_start_13
    iget-object v12, v11, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mImdnId:Ljava/lang/String;

    invoke-direct {v7, v12}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_b

    .line 180
    .local v12, "msgIdOffset":I
    move/from16 v19, v6

    .end local v6    # "extHeaderOffset":I
    .local v19, "extHeaderOffset":I
    :try_start_14
    iget-object v6, v11, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mImdnDate:Ljava/util/Date;

    invoke-static {v6}, Lcom/sec/internal/helper/Iso8601;->formatMillis(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_a

    .line 181
    .local v6, "imdnDateOffset":I
    const/16 v25, -0x1

    .line 182
    .local v25, "imdnOriginalToOffset":I
    move/from16 v26, v4

    .end local v4    # "deviceIdOffset":I
    .local v26, "deviceIdOffset":I
    :try_start_15
    iget-object v4, v11, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mImdnOriginalTo:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_9

    if-eqz v4, :cond_a

    .line 183
    :try_start_16
    iget-object v4, v11, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mImdnOriginalTo:Ljava/lang/String;

    invoke-direct {v7, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_6

    move/from16 v25, v4

    goto :goto_8

    .line 210
    .end local v0    # "imdnParams":[I
    .end local v5    # "imdnRecRouteVectorOffset":I
    .end local v6    # "imdnDateOffset":I
    .end local v11    # "imdnData":Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;
    .end local v12    # "msgIdOffset":I
    .end local v16    # "index":I
    .end local v17    # "mUri":Ljava/lang/String;
    .end local v25    # "imdnOriginalToOffset":I
    :catch_6
    move-exception v0

    move/from16 v16, v1

    move/from16 v5, v19

    move/from16 v4, v26

    goto/16 :goto_e

    .line 182
    .restart local v0    # "imdnParams":[I
    .restart local v5    # "imdnRecRouteVectorOffset":I
    .restart local v6    # "imdnDateOffset":I
    .restart local v11    # "imdnData":Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;
    .restart local v12    # "msgIdOffset":I
    .restart local v16    # "index":I
    .restart local v17    # "mUri":Ljava/lang/String;
    .restart local v25    # "imdnOriginalToOffset":I
    :cond_a
    move/from16 v4, v25

    .line 186
    .end local v25    # "imdnOriginalToOffset":I
    .local v4, "imdnOriginalToOffset":I
    :goto_8
    move/from16 v25, v3

    const/4 v7, 0x1

    .end local v3    # "contributionIdOffset":I
    .local v25, "contributionIdOffset":I
    :try_start_17
    new-array v3, v7, [I

    .line 187
    iget-object v7, v11, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_8

    move/from16 v27, v2

    .end local v2    # "conversationIdOffset":I
    .local v27, "conversationIdOffset":I
    :try_start_18
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v7, v2, :cond_b

    .line 188
    const/16 v23, 0x1

    goto :goto_9

    :cond_b
    const/16 v23, 0x0

    :goto_9
    const/4 v2, 0x0

    aput v23, v3, v2

    .line 190
    .local v3, "statusData":[I
    invoke-static {v14, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->createStatusVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v7

    .line 192
    .local v7, "statusOffset":I
    invoke-static {v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->startImNotificationParam(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 193
    invoke-static {v14, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->addImdnMessageId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 194
    invoke-static {v14, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->addStatus(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 195
    invoke-static {v14, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->addImdnDateTime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 197
    iget-object v2, v11, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mImdnRecRouteList:Ljava/util/List;

    if-eqz v2, :cond_c

    .line 198
    invoke-static {v14, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->addImdnRecRoute(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 201
    :cond_c
    iget-object v2, v11, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;->mImdnOriginalTo:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 202
    invoke-static {v14, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->addImdnOriginalTo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 205
    :cond_d
    add-int/lit8 v2, v16, 0x1

    .end local v16    # "index":I
    .local v2, "index":I
    invoke-static {v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImNotificationParam;->endImNotificationParam(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v23

    aput v23, v0, v16
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_18} :catch_7

    .line 206
    .end local v3    # "statusData":[I
    .end local v4    # "imdnOriginalToOffset":I
    .end local v5    # "imdnRecRouteVectorOffset":I
    .end local v6    # "imdnDateOffset":I
    .end local v7    # "statusOffset":I
    .end local v11    # "imdnData":Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;
    .end local v12    # "msgIdOffset":I
    move-object/from16 v7, p0

    move/from16 v16, v2

    move/from16 v6, v19

    move-object/from16 v11, v21

    move-object/from16 v5, v22

    move-object/from16 v12, v24

    move/from16 v3, v25

    move/from16 v4, v26

    move/from16 v2, v27

    goto/16 :goto_6

    .line 210
    .end local v0    # "imdnParams":[I
    .end local v2    # "index":I
    .end local v17    # "mUri":Ljava/lang/String;
    :catch_7
    move-exception v0

    move/from16 v16, v1

    move/from16 v5, v19

    move/from16 v3, v25

    move/from16 v4, v26

    move/from16 v2, v27

    goto/16 :goto_e

    .end local v27    # "conversationIdOffset":I
    .local v2, "conversationIdOffset":I
    :catch_8
    move-exception v0

    move/from16 v27, v2

    move/from16 v16, v1

    move/from16 v5, v19

    move/from16 v3, v25

    move/from16 v4, v26

    .end local v2    # "conversationIdOffset":I
    .restart local v27    # "conversationIdOffset":I
    goto/16 :goto_e

    .end local v25    # "contributionIdOffset":I
    .end local v27    # "conversationIdOffset":I
    .restart local v2    # "conversationIdOffset":I
    .local v3, "contributionIdOffset":I
    :catch_9
    move-exception v0

    move/from16 v27, v2

    move/from16 v25, v3

    move/from16 v16, v1

    move/from16 v5, v19

    move/from16 v4, v26

    .end local v2    # "conversationIdOffset":I
    .end local v3    # "contributionIdOffset":I
    .restart local v25    # "contributionIdOffset":I
    .restart local v27    # "conversationIdOffset":I
    goto/16 :goto_e

    .end local v25    # "contributionIdOffset":I
    .end local v26    # "deviceIdOffset":I
    .end local v27    # "conversationIdOffset":I
    .restart local v2    # "conversationIdOffset":I
    .restart local v3    # "contributionIdOffset":I
    .local v4, "deviceIdOffset":I
    :catch_a
    move-exception v0

    move/from16 v27, v2

    move/from16 v25, v3

    move/from16 v26, v4

    move/from16 v16, v1

    move/from16 v5, v19

    .end local v2    # "conversationIdOffset":I
    .end local v3    # "contributionIdOffset":I
    .end local v4    # "deviceIdOffset":I
    .restart local v25    # "contributionIdOffset":I
    .restart local v26    # "deviceIdOffset":I
    .restart local v27    # "conversationIdOffset":I
    goto/16 :goto_e

    .end local v19    # "extHeaderOffset":I
    .end local v25    # "contributionIdOffset":I
    .end local v26    # "deviceIdOffset":I
    .end local v27    # "conversationIdOffset":I
    .restart local v2    # "conversationIdOffset":I
    .restart local v3    # "contributionIdOffset":I
    .restart local v4    # "deviceIdOffset":I
    .local v6, "extHeaderOffset":I
    :catch_b
    move-exception v0

    move/from16 v27, v2

    move/from16 v25, v3

    move/from16 v26, v4

    move/from16 v19, v6

    move/from16 v16, v1

    move/from16 v5, v19

    .end local v2    # "conversationIdOffset":I
    .end local v3    # "contributionIdOffset":I
    .end local v4    # "deviceIdOffset":I
    .end local v6    # "extHeaderOffset":I
    .restart local v19    # "extHeaderOffset":I
    .restart local v25    # "contributionIdOffset":I
    .restart local v26    # "deviceIdOffset":I
    .restart local v27    # "conversationIdOffset":I
    goto/16 :goto_e

    .end local v19    # "extHeaderOffset":I
    .end local v24    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .end local v25    # "contributionIdOffset":I
    .end local v26    # "deviceIdOffset":I
    .end local v27    # "conversationIdOffset":I
    .restart local v2    # "conversationIdOffset":I
    .restart local v3    # "contributionIdOffset":I
    .restart local v4    # "deviceIdOffset":I
    .restart local v6    # "extHeaderOffset":I
    .local v12, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    :catch_c
    move-exception v0

    move/from16 v27, v2

    move/from16 v25, v3

    move/from16 v26, v4

    move/from16 v19, v6

    move-object/from16 v24, v12

    move/from16 v16, v1

    move/from16 v5, v19

    .end local v2    # "conversationIdOffset":I
    .end local v3    # "contributionIdOffset":I
    .end local v4    # "deviceIdOffset":I
    .end local v6    # "extHeaderOffset":I
    .end local v12    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .restart local v19    # "extHeaderOffset":I
    .restart local v24    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .restart local v25    # "contributionIdOffset":I
    .restart local v26    # "deviceIdOffset":I
    .restart local v27    # "conversationIdOffset":I
    goto/16 :goto_e

    .line 208
    .end local v19    # "extHeaderOffset":I
    .end local v24    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .end local v25    # "contributionIdOffset":I
    .end local v26    # "deviceIdOffset":I
    .end local v27    # "conversationIdOffset":I
    .restart local v0    # "imdnParams":[I
    .restart local v2    # "conversationIdOffset":I
    .restart local v3    # "contributionIdOffset":I
    .restart local v4    # "deviceIdOffset":I
    .restart local v6    # "extHeaderOffset":I
    .restart local v12    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .restart local v16    # "index":I
    .restart local v17    # "mUri":Ljava/lang/String;
    :cond_e
    move/from16 v27, v2

    move/from16 v25, v3

    move/from16 v26, v4

    move/from16 v19, v6

    move-object/from16 v24, v12

    .end local v2    # "conversationIdOffset":I
    .end local v3    # "contributionIdOffset":I
    .end local v4    # "deviceIdOffset":I
    .end local v6    # "extHeaderOffset":I
    .end local v12    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .restart local v19    # "extHeaderOffset":I
    .restart local v24    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .restart local v25    # "contributionIdOffset":I
    .restart local v26    # "deviceIdOffset":I
    .restart local v27    # "conversationIdOffset":I
    :try_start_19
    invoke-static {v14, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->createNotificationsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v2
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_19} :catch_d

    move v0, v2

    .line 216
    .end local v16    # "index":I
    .end local v17    # "mUri":Ljava/lang/String;
    .end local v20    # "imNotificationParamOffset":I
    .local v0, "imNotificationParamOffset":I
    nop

    .line 217
    invoke-static {v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->startRequestSendImNotificationStatus(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 218
    int-to-long v2, v10

    invoke-static {v14, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 219
    invoke-static {v14, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addNotifications(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 220
    int-to-long v2, v13

    invoke-static {v14, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 221
    invoke-static {v14, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 222
    invoke-static {v14, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addService(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 223
    invoke-static {v14, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addCpimDateTime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 225
    iget-object v2, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mConversationId:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 226
    move/from16 v2, v27

    .end local v27    # "conversationIdOffset":I
    .restart local v2    # "conversationIdOffset":I
    invoke-static {v14, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addConversationId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    goto :goto_a

    .line 225
    .end local v2    # "conversationIdOffset":I
    .restart local v27    # "conversationIdOffset":I
    :cond_f
    move/from16 v2, v27

    .line 229
    .end local v27    # "conversationIdOffset":I
    .restart local v2    # "conversationIdOffset":I
    :goto_a
    iget-object v3, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mContributionId:Ljava/lang/String;

    if-eqz v3, :cond_10

    .line 230
    move/from16 v3, v25

    .end local v25    # "contributionIdOffset":I
    .restart local v3    # "contributionIdOffset":I
    invoke-static {v14, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    goto :goto_b

    .line 229
    .end local v3    # "contributionIdOffset":I
    .restart local v25    # "contributionIdOffset":I
    :cond_10
    move/from16 v3, v25

    .line 233
    .end local v25    # "contributionIdOffset":I
    .restart local v3    # "contributionIdOffset":I
    :goto_b
    iget-object v4, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mDeviceId:Ljava/lang/String;

    if-eqz v4, :cond_11

    .line 234
    move/from16 v4, v26

    .end local v26    # "deviceIdOffset":I
    .restart local v4    # "deviceIdOffset":I
    invoke-static {v14, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addDeviceId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    goto :goto_c

    .line 233
    .end local v4    # "deviceIdOffset":I
    .restart local v26    # "deviceIdOffset":I
    :cond_11
    move/from16 v4, v26

    .line 237
    .end local v26    # "deviceIdOffset":I
    .restart local v4    # "deviceIdOffset":I
    :goto_c
    iget-object v5, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mImExtensionMNOHeaders:Ljava/util/Map;

    if-eqz v5, :cond_12

    iget-object v5, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mImExtensionMNOHeaders:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_12

    .line 238
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendDispositionNotification(): headers "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mImExtensionMNOHeaders:Ljava/util/Map;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    move/from16 v6, v19

    .end local v19    # "extHeaderOffset":I
    .restart local v6    # "extHeaderOffset":I
    invoke-static {v14, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addExtension(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    goto :goto_d

    .line 237
    .end local v6    # "extHeaderOffset":I
    .restart local v19    # "extHeaderOffset":I
    :cond_12
    move/from16 v6, v19

    .line 242
    .end local v19    # "extHeaderOffset":I
    .restart local v6    # "extHeaderOffset":I
    :goto_d
    iget-boolean v5, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mIsGroupChat:Z

    invoke-static {v14, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addIsGroupChat(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 243
    iget-boolean v5, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mIsBotSessionAnonymized:Z

    invoke-static {v14, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->addIsBotSessionAnonymized(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 244
    invoke-static {v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImNotificationStatus;->endRequestSendImNotificationStatus(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v7

    .line 247
    .local v7, "requestSendImNotificationStatusOffset":I
    invoke-static {v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 248
    const/16 v5, 0x1fa

    invoke-static {v14, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 249
    const/16 v5, 0x2d

    invoke-static {v14, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 250
    invoke-static {v14, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 251
    invoke-static {v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v11

    .line 253
    .local v11, "offset":I
    iget-object v12, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mCallback:Landroid/os/Message;

    const/4 v5, 0x1

    move/from16 v25, v3

    move-object/from16 v3, p0

    .end local v3    # "contributionIdOffset":I
    .restart local v25    # "contributionIdOffset":I
    invoke-virtual {v3, v5, v12}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move/from16 v17, v1

    .end local v1    # "cpimDateOffset":I
    .local v17, "cpimDateOffset":I
    move-object/from16 v1, p0

    move/from16 v18, v2

    .end local v2    # "conversationIdOffset":I
    .local v18, "conversationIdOffset":I
    move-object/from16 v2, v24

    move-object v5, v3

    move/from16 v22, v25

    const/16 v3, 0x1fa

    .end local v25    # "contributionIdOffset":I
    .local v22, "contributionIdOffset":I
    move/from16 v23, v4

    .end local v4    # "deviceIdOffset":I
    .local v23, "deviceIdOffset":I
    move-object v4, v14

    move v5, v11

    move/from16 v19, v6

    .end local v6    # "extHeaderOffset":I
    .restart local v19    # "extHeaderOffset":I
    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->sendRequestToStack(Lcom/sec/internal/ims/core/handler/secims/UserAgent;ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 254
    return-void

    .line 210
    .end local v0    # "imNotificationParamOffset":I
    .end local v7    # "requestSendImNotificationStatusOffset":I
    .end local v11    # "offset":I
    .end local v17    # "cpimDateOffset":I
    .end local v18    # "conversationIdOffset":I
    .end local v22    # "contributionIdOffset":I
    .end local v23    # "deviceIdOffset":I
    .restart local v1    # "cpimDateOffset":I
    .restart local v20    # "imNotificationParamOffset":I
    .restart local v25    # "contributionIdOffset":I
    .restart local v26    # "deviceIdOffset":I
    .restart local v27    # "conversationIdOffset":I
    :catch_d
    move-exception v0

    move/from16 v17, v1

    move/from16 v22, v25

    move/from16 v23, v26

    move/from16 v18, v27

    move/from16 v16, v17

    move/from16 v2, v18

    move/from16 v5, v19

    move/from16 v3, v22

    move/from16 v4, v23

    .end local v1    # "cpimDateOffset":I
    .end local v25    # "contributionIdOffset":I
    .end local v26    # "deviceIdOffset":I
    .end local v27    # "conversationIdOffset":I
    .restart local v17    # "cpimDateOffset":I
    .restart local v18    # "conversationIdOffset":I
    .restart local v22    # "contributionIdOffset":I
    .restart local v23    # "deviceIdOffset":I
    goto/16 :goto_e

    .end local v17    # "cpimDateOffset":I
    .end local v18    # "conversationIdOffset":I
    .end local v19    # "extHeaderOffset":I
    .end local v21    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .end local v22    # "contributionIdOffset":I
    .end local v23    # "deviceIdOffset":I
    .end local v24    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .restart local v1    # "cpimDateOffset":I
    .restart local v2    # "conversationIdOffset":I
    .restart local v3    # "contributionIdOffset":I
    .restart local v4    # "deviceIdOffset":I
    .restart local v6    # "extHeaderOffset":I
    .local v11, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .restart local v12    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    :catch_e
    move-exception v0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v19, v6

    move-object/from16 v21, v11

    move-object/from16 v24, v12

    move/from16 v16, v17

    move/from16 v5, v19

    .end local v1    # "cpimDateOffset":I
    .end local v2    # "conversationIdOffset":I
    .end local v3    # "contributionIdOffset":I
    .end local v4    # "deviceIdOffset":I
    .end local v6    # "extHeaderOffset":I
    .end local v11    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .end local v12    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .restart local v17    # "cpimDateOffset":I
    .restart local v18    # "conversationIdOffset":I
    .restart local v19    # "extHeaderOffset":I
    .restart local v21    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .restart local v22    # "contributionIdOffset":I
    .restart local v23    # "deviceIdOffset":I
    .restart local v24    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    goto :goto_e

    .end local v17    # "cpimDateOffset":I
    .end local v18    # "conversationIdOffset":I
    .end local v19    # "extHeaderOffset":I
    .end local v20    # "imNotificationParamOffset":I
    .end local v21    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .end local v22    # "contributionIdOffset":I
    .end local v23    # "deviceIdOffset":I
    .end local v24    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .restart local v1    # "cpimDateOffset":I
    .restart local v2    # "conversationIdOffset":I
    .restart local v3    # "contributionIdOffset":I
    .restart local v4    # "deviceIdOffset":I
    .local v5, "extHeaderOffset":I
    .local v6, "imNotificationParamOffset":I
    .restart local v11    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .restart local v12    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    :catch_f
    move-exception v0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v21, v11

    move-object/from16 v24, v12

    move/from16 v16, v17

    .end local v1    # "cpimDateOffset":I
    .end local v2    # "conversationIdOffset":I
    .end local v3    # "contributionIdOffset":I
    .end local v4    # "deviceIdOffset":I
    .end local v5    # "extHeaderOffset":I
    .end local v6    # "imNotificationParamOffset":I
    .end local v11    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .end local v12    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .restart local v17    # "cpimDateOffset":I
    .restart local v18    # "conversationIdOffset":I
    .restart local v19    # "extHeaderOffset":I
    .restart local v20    # "imNotificationParamOffset":I
    .restart local v21    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .restart local v22    # "contributionIdOffset":I
    .restart local v23    # "deviceIdOffset":I
    .restart local v24    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    goto :goto_e

    .end local v17    # "cpimDateOffset":I
    .end local v18    # "conversationIdOffset":I
    .end local v19    # "extHeaderOffset":I
    .end local v20    # "imNotificationParamOffset":I
    .end local v21    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .end local v22    # "contributionIdOffset":I
    .end local v23    # "deviceIdOffset":I
    .end local v24    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .restart local v2    # "conversationIdOffset":I
    .restart local v3    # "contributionIdOffset":I
    .restart local v4    # "deviceIdOffset":I
    .restart local v5    # "extHeaderOffset":I
    .restart local v6    # "imNotificationParamOffset":I
    .restart local v11    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .restart local v12    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .local v16, "cpimDateOffset":I
    :catch_10
    move-exception v0

    move/from16 v18, v2

    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v21, v11

    move-object/from16 v24, v12

    .end local v2    # "conversationIdOffset":I
    .end local v3    # "contributionIdOffset":I
    .end local v4    # "deviceIdOffset":I
    .end local v5    # "extHeaderOffset":I
    .end local v6    # "imNotificationParamOffset":I
    .end local v11    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .end local v12    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .restart local v18    # "conversationIdOffset":I
    .restart local v19    # "extHeaderOffset":I
    .restart local v20    # "imNotificationParamOffset":I
    .restart local v21    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .restart local v22    # "contributionIdOffset":I
    .restart local v23    # "deviceIdOffset":I
    .restart local v24    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    goto :goto_e

    .end local v18    # "conversationIdOffset":I
    .end local v19    # "extHeaderOffset":I
    .end local v20    # "imNotificationParamOffset":I
    .end local v21    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .end local v22    # "contributionIdOffset":I
    .end local v23    # "deviceIdOffset":I
    .end local v24    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .restart local v2    # "conversationIdOffset":I
    .restart local v3    # "contributionIdOffset":I
    .restart local v4    # "deviceIdOffset":I
    .restart local v5    # "extHeaderOffset":I
    .restart local v6    # "imNotificationParamOffset":I
    .restart local v11    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .restart local v12    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    :catch_11
    move-exception v0

    move/from16 v18, v2

    move/from16 v22, v3

    move/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v21, v11

    move-object/from16 v24, v12

    .end local v2    # "conversationIdOffset":I
    .end local v3    # "contributionIdOffset":I
    .end local v5    # "extHeaderOffset":I
    .end local v6    # "imNotificationParamOffset":I
    .end local v11    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .end local v12    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .restart local v18    # "conversationIdOffset":I
    .restart local v19    # "extHeaderOffset":I
    .restart local v20    # "imNotificationParamOffset":I
    .restart local v21    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .restart local v22    # "contributionIdOffset":I
    .restart local v24    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    goto :goto_e

    .end local v18    # "conversationIdOffset":I
    .end local v19    # "extHeaderOffset":I
    .end local v20    # "imNotificationParamOffset":I
    .end local v21    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .end local v22    # "contributionIdOffset":I
    .end local v24    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .restart local v2    # "conversationIdOffset":I
    .restart local v3    # "contributionIdOffset":I
    .restart local v5    # "extHeaderOffset":I
    .restart local v6    # "imNotificationParamOffset":I
    .restart local v11    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .restart local v12    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    :catch_12
    move-exception v0

    move/from16 v18, v2

    move/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v21, v11

    move-object/from16 v24, v12

    .end local v2    # "conversationIdOffset":I
    .end local v5    # "extHeaderOffset":I
    .end local v6    # "imNotificationParamOffset":I
    .end local v11    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .end local v12    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .restart local v18    # "conversationIdOffset":I
    .restart local v19    # "extHeaderOffset":I
    .restart local v20    # "imNotificationParamOffset":I
    .restart local v21    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .restart local v24    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    goto :goto_e

    .end local v18    # "conversationIdOffset":I
    .end local v19    # "extHeaderOffset":I
    .end local v20    # "imNotificationParamOffset":I
    .end local v21    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .end local v24    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .restart local v2    # "conversationIdOffset":I
    .restart local v5    # "extHeaderOffset":I
    .restart local v6    # "imNotificationParamOffset":I
    .restart local v11    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .restart local v12    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    :catch_13
    move-exception v0

    move/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v21, v11

    move-object/from16 v24, v12

    .line 211
    .end local v6    # "imNotificationParamOffset":I
    .end local v11    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .end local v12    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .local v0, "e":Ljava/lang/NullPointerException;
    .restart local v20    # "imNotificationParamOffset":I
    .restart local v21    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .restart local v24    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    :goto_e
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discard sendDispositionNotification(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_13

    .line 213
    iget-object v1, v8, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mCallback:Landroid/os/Message;

    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v6, v7, v11}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    move-object/from16 v7, p0

    invoke-direct {v7, v1, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_f

    .line 212
    :cond_13
    move-object/from16 v7, p0

    .line 215
    :goto_f
    return-void
.end method

.method unregisterForImdnNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 99
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->mImdnNotificationRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 100
    return-void
.end method

.method unregisterForImdnResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 107
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->mImdnResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 108
    return-void
.end method
