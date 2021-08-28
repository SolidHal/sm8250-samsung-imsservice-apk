.class public Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;
.super Lcom/sec/internal/ims/core/handler/EucHandler;
.source "ResipEucHandler.java"


# static fields
.field private static final EVENT_SEND_RESPONSE:I = 0x1

.field private static final EVENT_SEND_RESPONSE_DONE:I = 0xa

.field private static final EVENT_STACK_NOTIFY:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mAckMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mAcknowledgementMessageTranslator:Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;

.field private final mEucResponseStatusTranslator:Lcom/sec/internal/ims/translate/EucResponseStatusTranslator;

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private final mNotificationMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mNotificationMessageTranslator:Lcom/sec/internal/ims/translate/NotificationMessageTranslator;

.field private final mPersistentMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mPersistentMessageTranslator:Lcom/sec/internal/ims/translate/PersistentMessageTranslator;

.field private final mSystemMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mSystemRequestMessageTranslator:Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;

.field private final mVolatileMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mVolatileMessageTranslator:Lcom/sec/internal/ims/translate/VolatileMessageTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "imsFramework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 87
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/EucHandler;-><init>(Landroid/os/Looper;)V

    .line 71
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mPersistentMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 72
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mVolatileMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 73
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mNotificationMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 74
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mAckMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 75
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mSystemMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 88
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 89
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    .line 91
    .local v0, "stackIf":Lcom/sec/internal/ims/core/handler/secims/StackIF;
    new-instance v1, Lcom/sec/internal/ims/translate/PersistentMessageTranslator;

    invoke-direct {v1}, Lcom/sec/internal/ims/translate/PersistentMessageTranslator;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mPersistentMessageTranslator:Lcom/sec/internal/ims/translate/PersistentMessageTranslator;

    .line 92
    new-instance v1, Lcom/sec/internal/ims/translate/VolatileMessageTranslator;

    invoke-direct {v1}, Lcom/sec/internal/ims/translate/VolatileMessageTranslator;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mVolatileMessageTranslator:Lcom/sec/internal/ims/translate/VolatileMessageTranslator;

    .line 93
    new-instance v1, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;

    invoke-direct {v1}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mAcknowledgementMessageTranslator:Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;

    .line 94
    new-instance v1, Lcom/sec/internal/ims/translate/NotificationMessageTranslator;

    invoke-direct {v1}, Lcom/sec/internal/ims/translate/NotificationMessageTranslator;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mNotificationMessageTranslator:Lcom/sec/internal/ims/translate/NotificationMessageTranslator;

    .line 95
    new-instance v1, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;

    invoke-direct {v1}, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mSystemRequestMessageTranslator:Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;

    .line 96
    new-instance v1, Lcom/sec/internal/ims/translate/EucResponseStatusTranslator;

    invoke-direct {v1}, Lcom/sec/internal/ims/translate/EucResponseStatusTranslator;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mEucResponseStatusTranslator:Lcom/sec/internal/ims/translate/EucResponseStatusTranslator;

    .line 99
    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerEucrEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 100
    return-void
.end method

.method private getUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 3
    .param p1, "imsi"    # Ljava/lang/String;

    .line 372
    const/4 v0, 0x0

    .line 374
    .local v0, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    .line 375
    .local v1, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    if-eqz v1, :cond_0

    const-string v2, "euc"

    invoke-interface {v1, v2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .line 377
    return-object v0
.end method

.method private handleAckMessage(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;)V
    .locals 5
    .param p1, "msg"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;

    .line 193
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleAckMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :try_start_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;->message(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;

    .line 197
    .local v0, "ackMessage":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;
    if-nez v0, :cond_0

    .line 198
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Invalid message, ignoring!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mAcknowledgementMessageTranslator:Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;->translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;

    move-result-object v1

    .line 205
    .local v1, "moduleAckMessage":Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mAckMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v3, Lcom/sec/internal/helper/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V
    :try_end_0
    .catch Lcom/sec/internal/helper/translate/TranslationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v0    # "ackMessage":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;
    .end local v1    # "moduleAckMessage":Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;
    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Lcom/sec/internal/helper/translate/TranslationException;
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid message, ignoring! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/translate/TranslationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v0    # "e":Lcom/sec/internal/helper/translate/TranslationException;
    :goto_0
    return-void
.end method

.method private handleNotificationMessage(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;)V
    .locals 5
    .param p1, "msg"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;

    .line 212
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleNotificationMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :try_start_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;->message(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;

    .line 217
    .local v0, "notificationMessage":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;
    if-nez v0, :cond_0

    .line 218
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Invalid message, ignoring!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mNotificationMessageTranslator:Lcom/sec/internal/ims/translate/NotificationMessageTranslator;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/translate/NotificationMessageTranslator;->translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;

    move-result-object v1

    .line 225
    .local v1, "moduleNotificationMessage":Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mNotificationMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v3, Lcom/sec/internal/helper/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V
    :try_end_0
    .catch Lcom/sec/internal/helper/translate/TranslationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v0    # "notificationMessage":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;
    .end local v1    # "moduleNotificationMessage":Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;
    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Lcom/sec/internal/helper/translate/TranslationException;
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid message, ignoring! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/translate/TranslationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v0    # "e":Lcom/sec/internal/helper/translate/TranslationException;
    :goto_0
    return-void
.end method

.method private handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 3
    .param p1, "notify"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 123
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    .line 124
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Invalid notify, ignoring!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void

    .line 128
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;

    .line 130
    .local v0, "msg":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notifyid()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 147
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleNotify(): unexpected notify id, ignoring!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->handleSystemMessage(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;)V

    .line 145
    goto :goto_0

    .line 141
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->handleNotificationMessage(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;)V

    .line 142
    goto :goto_0

    .line 138
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->handleAckMessage(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;)V

    .line 139
    goto :goto_0

    .line 135
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->handleVolatileMessage(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;)V

    .line 136
    goto :goto_0

    .line 132
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->handlePersistentMessage(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;)V

    .line 133
    nop

    .line 149
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x272e
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handlePersistentMessage(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;)V
    .locals 5
    .param p1, "msg"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;

    .line 152
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handlePersistentMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :try_start_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/PersistentMessage;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/PersistentMessage;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;->message(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/PersistentMessage;

    .line 157
    .local v0, "persistentMessage":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/PersistentMessage;
    if-nez v0, :cond_0

    .line 158
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Invalid message, ignoring!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mPersistentMessageTranslator:Lcom/sec/internal/ims/translate/PersistentMessageTranslator;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/translate/PersistentMessageTranslator;->translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/PersistentMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;

    move-result-object v1

    .line 165
    .local v1, "modulePersistentMessage":Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mPersistentMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v3, Lcom/sec/internal/helper/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V
    :try_end_0
    .catch Lcom/sec/internal/helper/translate/TranslationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v0    # "persistentMessage":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/PersistentMessage;
    .end local v1    # "modulePersistentMessage":Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;
    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Lcom/sec/internal/helper/translate/TranslationException;
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid message, ignoring! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/translate/TranslationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v0    # "e":Lcom/sec/internal/helper/translate/TranslationException;
    :goto_0
    return-void
.end method

.method private handleSendResponseRequest(Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;)V
    .locals 17
    .param p1, "eucResponseData"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;

    .line 309
    move-object/from16 v6, p0

    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSendResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v8

    .line 313
    .local v8, "ua":Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    if-nez v8, :cond_0

    .line 314
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSendResponseRequest: EUC UserAgent not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getCallback()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;

    .line 316
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object v11

    .line 317
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v12

    .line 318
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;->FAILURE_INTERNAL:Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;)V

    .line 315
    invoke-direct {v6, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 320
    return-void

    .line 328
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    .line 329
    :cond_1
    move v0, v2

    :goto_0
    move v9, v0

    .line 331
    .local v9, "type":I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getValue()Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;->ACCEPT:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    move v2, v3

    goto :goto_1

    :cond_2
    nop

    :goto_1
    move v10, v2

    .line 334
    .local v10, "value":I
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    invoke-direct {v0, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    move-object v11, v0

    .line 335
    .local v11, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getPin()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 336
    .local v12, "pinOffset":I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 337
    .local v13, "idOffset":I
    nop

    .line 338
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 339
    :cond_3
    const-string v0, ""

    .line 337
    :goto_2
    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 341
    .local v14, "remUriOffset":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEucSendResponse;->startRequestEucSendResponse(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 342
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v11, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEucSendResponse;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 343
    invoke-static {v11, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEucSendResponse;->addId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 344
    invoke-static {v11, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEucSendResponse;->addPin(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 345
    invoke-static {v11, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEucSendResponse;->addRemoteUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 346
    invoke-static {v11, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEucSendResponse;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 347
    invoke-static {v11, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEucSendResponse;->addType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 348
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEucSendResponse;->endRequestEucSendResponse(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v15

    .line 350
    .local v15, "requestEucSendResponse":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 351
    invoke-static {v11, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 352
    const/16 v0, 0x21c

    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 353
    const/16 v0, 0x24

    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 354
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v16

    .line 356
    .local v16, "request":I
    const/16 v1, 0x21c

    const/16 v0, 0xa

    .line 357
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getCallback()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 356
    move-object/from16 v0, p0

    move-object v2, v11

    move/from16 v3, v16

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 358
    return-void
.end method

.method private handleSendResponseResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;
    .param p2, "callback"    # Landroid/os/Message;

    .line 362
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendResponseResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mEucResponseStatusTranslator:Lcom/sec/internal/ims/translate/EucResponseStatusTranslator;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/translate/EucResponseStatusTranslator;->translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;)Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;

    move-result-object v0

    .line 367
    .local v0, "eucrSendResponseStatus":Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;
    invoke-direct {p0, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 368
    return-void
.end method

.method private handleSystemMessage(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;)V
    .locals 5
    .param p1, "msg"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;

    .line 233
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSystemMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :try_start_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;->message(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;

    .line 237
    .local v0, "systemMessage":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;
    if-nez v0, :cond_0

    .line 238
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Invalid message, ignoring!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mSystemRequestMessageTranslator:Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;->translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;

    move-result-object v1

    .line 245
    .local v1, "moduleSystemMessage":Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mSystemMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v3, Lcom/sec/internal/helper/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V
    :try_end_0
    .catch Lcom/sec/internal/helper/translate/TranslationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v0    # "systemMessage":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;
    .end local v1    # "moduleSystemMessage":Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;
    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Lcom/sec/internal/helper/translate/TranslationException;
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid message, ignoring! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/translate/TranslationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v0    # "e":Lcom/sec/internal/helper/translate/TranslationException;
    :goto_0
    return-void
.end method

.method private handleVolatileMessage(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;)V
    .locals 5
    .param p1, "msg"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;

    .line 173
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleVolatileMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :try_start_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/VolatileMessage;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/VolatileMessage;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;->message(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/VolatileMessage;

    .line 177
    .local v0, "volatileMessage":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/VolatileMessage;
    if-nez v0, :cond_0

    .line 178
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Invalid message, ignoring!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mVolatileMessageTranslator:Lcom/sec/internal/ims/translate/VolatileMessageTranslator;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/translate/VolatileMessageTranslator;->translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/VolatileMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;

    move-result-object v1

    .line 185
    .local v1, "moduleVolatileMessage":Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mVolatileMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v3, Lcom/sec/internal/helper/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V
    :try_end_0
    .catch Lcom/sec/internal/helper/translate/TranslationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v0    # "volatileMessage":Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/VolatileMessage;
    .end local v1    # "moduleVolatileMessage":Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;
    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Lcom/sec/internal/helper/translate/TranslationException;
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid message, ignoring! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/translate/TranslationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v0    # "e":Lcom/sec/internal/helper/translate/TranslationException;
    :goto_0
    return-void
.end method

.method private parseStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 395
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

    .line 390
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 391
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 392
    return-void
.end method

.method private sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "request"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p3, "offset"    # I
    .param p4, "callback"    # Landroid/os/Message;
    .param p5, "ua"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 382
    if-nez p5, :cond_0

    .line 383
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendRequestToStack(): UserAgent not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void

    .line 386
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;-><init>(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V

    .line 387
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 117
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage: Undefined message, ignoring!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    .line 115
    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    iget-object v1, v1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->handleSendResponseResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;Landroid/os/Message;)V

    .line 112
    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->handleSendResponseRequest(Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;)V

    .line 107
    nop

    .line 119
    :goto_0
    return-void
.end method

.method public registerForAckMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mAckMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 285
    return-void
.end method

.method public registerForNotificationMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mNotificationMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 275
    return-void
.end method

.method public registerForPersistentMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mPersistentMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 255
    return-void
.end method

.method public registerForSystemMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 294
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mSystemMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 295
    return-void
.end method

.method public registerForVolatileMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mVolatileMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 265
    return-void
.end method

.method public sendEucResponse(Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;)V
    .locals 1
    .param p1, "eucResponseData"    # Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;

    .line 305
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->sendMessage(Landroid/os/Message;)Z

    .line 306
    return-void
.end method

.method public unregisterForAckMessage(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 289
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mAckMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 290
    return-void
.end method

.method public unregisterForNotificationMessage(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 279
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mNotificationMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 280
    return-void
.end method

.method public unregisterForPersistentMessage(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 259
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mPersistentMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 260
    return-void
.end method

.method public unregisterForSystemMessage(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 299
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mSystemMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 300
    return-void
.end method

.method public unregisterForVolatileMessage(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 269
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mVolatileMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 270
    return-void
.end method
