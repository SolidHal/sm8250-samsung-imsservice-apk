.class public Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;
.super Lcom/sec/internal/ims/core/handler/SmsHandler;
.source "ResipSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;
    }
.end annotation


# static fields
.field static final EVENT_NEW_INCOMING_SMS:I = 0x3

.field static final EVENT_RP_ACK_TIMEOUT:I = 0x5

.field static final EVENT_RRC_CONNECTION:I = 0x6

.field static final EVENT_SEND_SMS:I = 0x1

.field static final EVENT_SEND_SMS_COMPLETE:I = 0x2

.field static final EVENT_SET_MSG_MSGAPP_INFO_TO_SIP_UA:I = 0xb

.field static final EVENT_SET_MSG_MSGAPP_INFO_TO_SIP_UA_RESP:I = 0xc

.field static final EVENT_SMS_RP_ACK_RECEIVED:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "ResipSmsHandler"

.field static final RP_ACK_TIMEOUT_MILLIS:I = 0x927c0


# instance fields
.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field protected mPendingMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mSmsEventRegistrants:Lcom/sec/internal/helper/RegistrantList;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 100
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/SmsHandler;-><init>(Landroid/os/Looper;)V

    .line 69
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mSmsEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 70
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 102
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 103
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    .line 105
    .local v0, "stackIf":Lcom/sec/internal/ims/core/handler/secims/StackIF;
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerNewIncomingSmsEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 106
    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerSmsRpAckEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 107
    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerForRrcConnectionEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 109
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mPendingMessage:Ljava/util/Map;

    .line 110
    return-void
.end method

.method private getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 2
    .param p1, "handle"    # I

    .line 415
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 416
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v1
.end method

.method private getUa(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "service"    # Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 411
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-interface {v0, p2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v1
.end method

.method private getUa(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 2
    .param p1, "service"    # Ljava/lang/String;

    .line 405
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 406
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v1
.end method

.method private getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 2
    .param p1, "regId"    # I

    .line 420
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 421
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByRegId(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v1
.end method

.method private onNewIncomingSms(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 9
    .param p1, "result"    # Lcom/sec/internal/helper/AsyncResult;

    .line 314
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;

    .line 315
    .local v0, "sn":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v1

    const-string v2, " contentType "

    const-string v3, " callId "

    const-string v4, "onNewIncomingSms: handle "

    const-string v5, "/"

    const-string v6, "ResipSmsHandler"

    if-nez v1, :cond_0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->handle()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->callId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sca "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->scUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->contentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->contentSubType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 321
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->handle()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->callId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->contentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->contentSubType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->contentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->contentSubType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "contentType":Ljava/lang/String;
    new-instance v2, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;-><init>()V

    .line 329
    .local v2, "event":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->handle()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v3

    .line 331
    .local v3, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-eqz v3, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->isRegistered(Z)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 336
    :cond_1
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    .line 337
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->callId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setCallID(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->scUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setSmscAddr(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setContentType(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;->content()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 342
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mSmsEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v4, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 346
    return-void

    .line 332
    :cond_2
    :goto_1
    const-string v4, "onNewIncomingSms: UserAgent is null or not registered."

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void
.end method

.method private onRpAckTimeout(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mPendingMessage:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;

    .line 303
    .local v0, "sms":Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;
    if-nez v0, :cond_0

    .line 305
    return-void

    .line 308
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRpAckTimeout: callId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResipSmsHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void
.end method

.method private onRrcConnectionEventReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 4
    .param p1, "result"    # Lcom/sec/internal/helper/AsyncResult;

    .line 349
    const-string v0, "ResipSmsHandler"

    const-string/jumbo v1, "onRrcConnectionEventReceived:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;

    .line 352
    .local v0, "rrcEvent":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;->event()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 353
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;->REJECTED:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    invoke-direct {v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;)V

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 355
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;->event()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 356
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;->TIMER_EXPIRED:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    invoke-direct {v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;)V

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 361
    :cond_1
    :goto_0
    return-void
.end method

.method private onSendMessage(Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;)V
    .locals 8
    .param p1, "sms"    # Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;

    .line 172
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->ua:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget-object v1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->smsc:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->localuri:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->contentType:Ljava/lang/String;

    iget-object v4, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->pdu:[B

    iget-boolean v5, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->isDeliveryReport:Z

    iget-object v6, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->callId:Ljava/lang/String;

    .line 173
    const/4 v7, 0x2

    invoke-virtual {p0, v7, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 172
    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;Landroid/os/Message;)V

    .line 174
    return-void
.end method

.method private onSendSmsResponse(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 11
    .param p1, "result"    # Lcom/sec/internal/helper/AsyncResult;

    .line 177
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;

    .line 178
    .local v0, "res":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;
    iget-object v1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;

    .line 179
    .local v1, "sms":Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->handle()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v2

    .line 181
    .local v2, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSendSmsResponse: statusCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->statusCode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " callId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->callId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    const-string v4, "ResipSmsHandler"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    if-nez v2, :cond_0

    .line 186
    const-string/jumbo v3, "onSendSmsResponse: UserAgent is null."

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void

    .line 190
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->statusCode()J

    move-result-wide v5

    const-wide/16 v7, 0xca

    cmp-long v3, v5, v7

    const/16 v5, 0xc

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->statusCode()J

    move-result-wide v7

    const-wide/16 v9, 0xc8

    cmp-long v3, v7, v9

    if-eqz v3, :cond_3

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSendSmsResponse: errorStr "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->errStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v3, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;-><init>()V

    .line 194
    .local v3, "event":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    .line 195
    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setEventType(I)V

    .line 196
    iget v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->msgId:I

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 197
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->callId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setCallID(Ljava/lang/String;)V

    .line 198
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mSmsEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v4, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 200
    new-instance v4, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;-><init>()V

    move-object v3, v4

    .line 201
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    .line 202
    iget v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->msgId:I

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 203
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->callId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setCallID(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->content()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->content()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->content()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setContent(Ljava/lang/String;)V

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->contentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->contentSubType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setContentType(Ljava/lang/String;)V

    goto :goto_1

    .line 205
    :cond_2
    :goto_0
    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setContentType(Ljava/lang/String;)V

    .line 210
    :goto_1
    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 211
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->statusCode()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 212
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->errStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReason(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->retryAfter()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setRetryAfter(I)V

    .line 214
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mSmsEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v4, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 216
    return-void

    .line 219
    .end local v3    # "event":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    :cond_3
    new-instance v3, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;-><init>()V

    .line 220
    .restart local v3    # "event":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    .line 221
    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setEventType(I)V

    .line 222
    iget v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->msgId:I

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 223
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->callId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setCallID(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->statusCode()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 225
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->errStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReason(Ljava/lang/String;)V

    .line 227
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mSmsEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v4, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 233
    new-instance v4, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;-><init>()V

    move-object v3, v4

    .line 234
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    .line 235
    iget v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->msgId:I

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 236
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->callId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setCallID(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setContentType(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 239
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->statusCode()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 240
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->errStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReason(Ljava/lang/String;)V

    .line 242
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mSmsEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v4, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 245
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->statusCode()J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->errorCode:I

    .line 247
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mPendingMessage:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->callId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const/4 v4, 0x5

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;->callId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v5, 0x927c0

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 250
    return-void
.end method

.method private onSetMsgAppInfoToSipUa(ILjava/lang/String;)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSetMsgAppInfoToSipUserAgent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipSmsHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 428
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 429
    .local v2, "valOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMsgSetMsgAppInfoToSipUa;->startRequestMsgSetMsgAppInfoToSipUa(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 430
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMsgSetMsgAppInfoToSipUa;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 431
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMsgSetMsgAppInfoToSipUa;->endRequestMsgSetMsgAppInfoToSipUa(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 433
    .local v3, "msgOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 434
    const/16 v4, 0x194

    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 435
    const/16 v5, 0x26

    invoke-static {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 436
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 438
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 440
    .local v5, "requestOffSet":I
    const-string/jumbo v6, "smsip"

    invoke-direct {p0, p1, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->getUa(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v6

    .line 441
    .local v6, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-eqz v6, :cond_0

    .line 442
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;

    const/16 v7, 0xc

    .line 443
    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-direct {v1, v4, v0, v5, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;-><init>(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    .line 442
    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V

    goto :goto_0

    .line 445
    :cond_0
    const-string/jumbo v4, "onSetMsgAppInfoToSipUserAgent: UserAgent is null."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :goto_0
    return-void
.end method

.method private onSetMsgAppInfoToSipUaResp(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSetMsgAppInfoToSipUaResp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipSmsHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void
.end method

.method private onSmsRpAckReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 8
    .param p1, "result"    # Lcom/sec/internal/helper/AsyncResult;

    .line 253
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;

    .line 256
    .local v0, "ra":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;->contentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;->contentSubType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "contentType":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSmsRpAckReceived: callId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;->callId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " contentType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResipSmsHandler"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v2, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;-><init>()V

    .line 262
    .local v2, "event":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;->handle()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v4

    .line 264
    .local v4, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v4, :cond_0

    .line 265
    const-string/jumbo v5, "onSmsRpAckReceived: UserAgent is null."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void

    .line 269
    :cond_0
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    .line 270
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;->callId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setCallID(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setContentType(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;->ackCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 273
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;->contentSubType()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "vnd.3gpp2.sms"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 274
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mPendingMessage:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;->callId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;

    .line 275
    .local v5, "sms":Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;
    if-nez v5, :cond_1

    .line 276
    const-string/jumbo v6, "onSmsRpAckReceived: unknown ack message."

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void

    .line 280
    :cond_1
    iget v7, v5, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->msgId:I

    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 281
    iget v7, v5, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->errorCode:I

    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 282
    .end local v5    # "sms":Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;
    goto :goto_0

    .line 283
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 284
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v5

    if-eqz v5, :cond_3

    .line 285
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v5

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 289
    :cond_3
    :goto_0
    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->isRegistered(Z)Z

    move-result v5

    if-nez v5, :cond_4

    .line 290
    const-string/jumbo v5, "onSmsRpAckReceived: Not registered."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setEventType(I)V

    .line 292
    const/16 v3, 0x3e7

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 293
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mSmsEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 294
    return-void

    .line 297
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mSmsEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 298
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;->callId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendSmsRpAckResponse(Ljava/lang/String;)V

    .line 299
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: what "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipSmsHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 388
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->onRrcConnectionEventReceived(Lcom/sec/internal/helper/AsyncResult;)V

    .line 389
    goto :goto_0

    .line 380
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->onRpAckTimeout(Ljava/lang/String;)V

    .line 381
    goto :goto_0

    .line 376
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->onSmsRpAckReceived(Lcom/sec/internal/helper/AsyncResult;)V

    .line 377
    goto :goto_0

    .line 384
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->onNewIncomingSms(Lcom/sec/internal/helper/AsyncResult;)V

    .line 385
    goto :goto_0

    .line 372
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->onSendSmsResponse(Lcom/sec/internal/helper/AsyncResult;)V

    .line 373
    goto :goto_0

    .line 368
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->onSendMessage(Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;)V

    .line 369
    goto :goto_0

    .line 396
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->onSetMsgAppInfoToSipUaResp(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;)V

    .line 398
    goto :goto_0

    .line 392
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->onSetMsgAppInfoToSipUa(ILjava/lang/String;)V

    .line 393
    nop

    .line 402
    :goto_0
    return-void

    nop

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

.method public registerForRrcConnectionEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 119
    const-string v0, "ResipSmsHandler"

    const-string/jumbo v1, "registerForRrcConnectionEvent:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 121
    return-void
.end method

.method public registerForSMSEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mSmsEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 115
    return-void
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;II)V
    .locals 19
    .param p1, "smsc"    # Ljava/lang/String;
    .param p2, "localuri"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "isDeliveryReport"    # Z
    .param p6, "callId"    # Ljava/lang/String;
    .param p7, "msgId"    # I
    .param p8, "regId"    # I

    .line 128
    move-object/from16 v0, p0

    move-object/from16 v12, p3

    move/from16 v13, p7

    move/from16 v14, p8

    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v1

    const-string v2, " regId "

    const-string v3, " msdId "

    const-string v4, "ResipSmsHandler"

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendMessage: smsc "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " LocalUri : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p2

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " contentType "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    :cond_0
    move-object/from16 v15, p1

    move-object/from16 v11, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendMessage: contentType "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_0
    if-nez v14, :cond_1

    .line 138
    const-string/jumbo v1, "smsip"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->getUa(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    move-object v10, v1

    .local v1, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    goto :goto_1

    .line 140
    .end local v1    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    :cond_1
    invoke-direct {v0, v14}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    move-object v10, v1

    .line 143
    .local v10, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    :goto_1
    if-eqz v10, :cond_3

    const/4 v9, 0x1

    invoke-virtual {v10, v9}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->isRegistered(Z)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 151
    :cond_2
    new-instance v16, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;

    move-object/from16 v1, v16

    move-object v2, v10

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p7

    move/from16 v8, p5

    move v11, v9

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BIZLjava/lang/String;)V

    .line 153
    .local v1, "sms":Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;
    invoke-virtual {v0, v11, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 154
    return-void

    .line 144
    .end local v1    # "sms":Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;
    :cond_3
    :goto_2
    const-string/jumbo v1, "sendMessage: Not registered."

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v16, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    move-object v2, v1

    const/16 v3, 0xb

    const/16 v5, 0x3e7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/16 v17, -0x1

    move-object/from16 v1, v16

    move/from16 v4, p7

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    move-object/from16 v18, v10

    .end local v10    # "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .local v18, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    move-object v10, v11

    move/from16 v11, v17

    invoke-direct/range {v1 .. v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;-><init>(Lcom/sec/ims/ImsRegistration;IIILjava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 147
    .local v1, "event":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->mSmsEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public sendSMSResponse(ILjava/lang/String;I)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "statusCode"    # I

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendSMSResponse(): [Call-ID] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [Status] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipSmsHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string/jumbo v0, "smsip"

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->getUa(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 160
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendSmsResponse(Ljava/lang/String;I)V

    .line 163
    :cond_0
    return-void
.end method

.method public setMsgAppInfoToSipUa(ILjava/lang/String;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 167
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 168
    return-void
.end method
