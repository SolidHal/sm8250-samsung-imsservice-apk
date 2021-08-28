.class public Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;
.super Ljava/lang/Object;
.source "JanskyIntentTranslation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mCloudMsgService:Lcom/sec/internal/ims/cmstore/CloudMessageService;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cldMsgService"    # Lcom/sec/internal/ims/cmstore/CloudMessageService;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Create JanskyServiceTranslation."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->mCloudMsgService:Lcom/sec/internal/ims/cmstore/CloudMessageService;

    .line 34
    return-void
.end method

.method private isValidPushNotification(Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;)Z
    .locals 7
    .param p1, "pushnotification"    # Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;

    .line 240
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->pnsType:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->pnsSubtype:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->makeParamNotificationType(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;

    move-result-object v0

    .line 243
    .local v0, "dataContract":Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;->getDataType()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "dataType":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "judge PushNotification, dataType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->recipients:[Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoPushNotificationRecipients;

    if-nez v3, :cond_0

    .line 247
    return v2

    .line 249
    :cond_0
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    if-nez v3, :cond_1

    .line 250
    return v2

    .line 252
    :cond_1
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->changedObject:Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->deletedObject:Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->notifyObject:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/NotifyObject;

    if-nez v3, :cond_2

    .line 255
    return v2

    .line 257
    :cond_2
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->changedObject:Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    if-eqz v3, :cond_4

    .line 258
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->changedObject:Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    if-nez v3, :cond_3

    .line 259
    return v2

    .line 261
    :cond_3
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->changedObject:Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v3, v3, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->recipients:[Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoPushNotificationRecipients;

    if-nez v3, :cond_4

    const-string v3, "GSO"

    .line 262
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 263
    return v2

    .line 266
    :cond_4
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->deletedObject:Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    if-eqz v3, :cond_5

    .line 267
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->deletedObject:Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_5

    .line 268
    return v2

    .line 274
    :cond_5
    nop

    .line 275
    const/4 v2, 0x1

    return v2

    .line 271
    :catch_0
    move-exception v3

    .line 272
    .local v3, "e1":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NullPointerException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return v2
.end method

.method private onDeLineActivated(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 99
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 100
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "line_msisdn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "msisdn":Ljava/lang/String;
    const-string/jumbo v2, "request_status"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 102
    .local v2, "isSuccess":Z
    sget-object v3, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeLineActivated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " issuccess:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    if-eqz v2, :cond_0

    .line 105
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->mCloudMsgService:Lcom/sec/internal/ims/cmstore/CloudMessageService;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->onMStoreDisabled(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method private onLineActivated(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 57
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "line_msisdn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "msisdn":Ljava/lang/String;
    const-string/jumbo v2, "request_status"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 60
    .local v2, "isSuccess":Z
    sget-object v3, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLineActivated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " issuccess:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 62
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->mCloudMsgService:Lcom/sec/internal/ims/cmstore/CloudMessageService;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->onMStoreEnabled(Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method

.method private onReceiveGCMPushNotification(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 110
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 112
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "orig_push_message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "pushMessage":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceiveGCMPushNotification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 118
    .local v2, "gson":Lcom/google/gson/Gson;
    :try_start_0
    const-class v3, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;

    .line 120
    .local v3, "pushnotification":Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;
    iput-object v1, v3, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->mOrigNotification:Ljava/lang/String;

    .line 121
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->isValidPushNotification(Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 122
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->mCloudMsgService:Lcom/sec/internal/ims/cmstore/CloudMessageService;

    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->onGcmReceived(Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;)V

    goto :goto_0

    .line 124
    :cond_0
    sget-object v5, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v6, "invalid push notifiction: "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v3    # "pushnotification":Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;
    :goto_0
    goto :goto_1

    .line 126
    :catch_0
    move-exception v3

    .line 127
    .local v3, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private onReceiveNativeChannelNotification(Landroid/content/Intent;)V
    .locals 21
    .param p1, "intent"    # Landroid/content/Intent;

    .line 132
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 133
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "orig_push_message"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "pushMessage":Ljava/lang/String;
    sget-object v0, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceiveNativeChannelNotification, pushMessage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionResUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Not subscribed, it should not receive gcm notifications here"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 139
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    move-object v4, v0

    .line 141
    .local v4, "gson":Lcom/google/gson/Gson;
    :try_start_0
    const-class v0, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    invoke-virtual {v4, v3, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    .line 142
    .local v0, "response":Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;
    if-eqz v0, :cond_b

    iget-object v5, v0, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->notificationList:[Lcom/sec/internal/omanetapi/nc/data/NotificationList;

    if-nez v5, :cond_1

    goto/16 :goto_2

    .line 146
    :cond_1
    iget-object v5, v0, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->notificationList:[Lcom/sec/internal/omanetapi/nc/data/NotificationList;

    .line 148
    .local v5, "notificationList":[Lcom/sec/internal/omanetapi/nc/data/NotificationList;
    const/4 v6, 0x0

    .line 149
    .local v6, "setDelayedUpdateSubscription":Z
    if-eqz v5, :cond_9

    .line 150
    const/4 v7, 0x0

    aget-object v8, v5, v7

    .line 151
    .local v8, "notiList":Lcom/sec/internal/omanetapi/nc/data/NotificationList;
    iget-object v9, v8, Lcom/sec/internal/omanetapi/nc/data/NotificationList;->largePollingNotification:Lcom/sec/internal/omanetapi/nms/data/LargePollingNotification;

    if-eqz v9, :cond_2

    .line 152
    iget-object v7, v8, Lcom/sec/internal/omanetapi/nc/data/NotificationList;->largePollingNotification:Lcom/sec/internal/omanetapi/nms/data/LargePollingNotification;

    iget-object v7, v7, Lcom/sec/internal/omanetapi/nms/data/LargePollingNotification;->channelURL:Ljava/lang/String;

    .line 153
    .local v7, "channelURL":Ljava/lang/String;
    sget-object v9, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "largePollingNotification "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelURL(Ljava/lang/String;)V

    .line 155
    iget-object v9, v1, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->mCloudMsgService:Lcom/sec/internal/ims/cmstore/CloudMessageService;

    invoke-virtual {v9}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->handleLargeDataPolling()V

    .line 156
    return-void

    .line 159
    .end local v7    # "channelURL":Ljava/lang/String;
    :cond_2
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/helper/MailBoxHelper;->isMailBoxReset(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 160
    sget-object v7, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v9, "MailBoxReset true"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->mCloudMsgService:Lcom/sec/internal/ims/cmstore/CloudMessageService;

    new-instance v9, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v9}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v10, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->MAILBOX_RESET:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v9

    .line 162
    invoke-virtual {v9}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v9

    .line 161
    invoke-virtual {v7, v9}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->onNativeChannelReceived(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 163
    return-void

    .line 166
    :cond_3
    iget-object v9, v8, Lcom/sec/internal/omanetapi/nc/data/NotificationList;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    if-eqz v9, :cond_9

    .line 169
    invoke-static {v8}, Lcom/sec/internal/ims/cmstore/utils/Util;->isMatchedSubscriptionID(Lcom/sec/internal/omanetapi/nc/data/NotificationList;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 170
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionIndex()J

    move-result-wide v9

    .line 171
    .local v9, "savedindex":J
    iget-object v11, v8, Lcom/sec/internal/omanetapi/nc/data/NotificationList;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v11, v11, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->index:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 172
    .local v11, "curindex":J
    sget-object v13, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "notification curindex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " savedindex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-wide/16 v13, 0x1

    add-long v15, v9, v13

    cmp-long v15, v11, v15

    if-lez v15, :cond_5

    .line 174
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->getInstance()Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 175
    const/4 v6, 0x1

    .line 177
    :cond_4
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->getInstance()Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    move-result-object v7

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v7, v13, v5}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->insertContainer(Ljava/lang/Long;[Lcom/sec/internal/omanetapi/nc/data/NotificationList;)V

    goto/16 :goto_0

    .line 180
    :cond_5
    add-long v15, v9, v13

    cmp-long v15, v11, v15

    if-nez v15, :cond_7

    .line 181
    iget-object v15, v8, Lcom/sec/internal/omanetapi/nc/data/NotificationList;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v15, v15, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->restartToken:Ljava/lang/String;

    .line 182
    .local v15, "restartToken":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v7

    invoke-virtual {v7, v15}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionRestartToken(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v7

    invoke-virtual {v7, v11, v12}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionIndex(J)V

    .line 185
    new-instance v7, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v7}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v13, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->RECEIVE_NOTIFICATION:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 186
    invoke-virtual {v7, v13}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v7

    .line 187
    invoke-virtual {v7, v5}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setNotificationList([Lcom/sec/internal/omanetapi/nc/data/NotificationList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v7

    .line 188
    .local v7, "builder":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    iget-object v13, v1, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->mCloudMsgService:Lcom/sec/internal/ims/cmstore/CloudMessageService;

    invoke-virtual {v7}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->onNativeChannelReceived(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 191
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionIndex()J

    move-result-wide v13

    move-wide v9, v13

    .line 192
    :cond_6
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->getInstance()Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_7

    .line 193
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->getInstance()Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->peekFirstIndex()J

    move-result-wide v13

    const-wide/16 v17, 0x1

    add-long v19, v9, v17

    cmp-long v13, v13, v19

    if-nez v13, :cond_7

    .line 194
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->getInstance()Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->popFirstEntry()Ljava/util/Map$Entry;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/sec/internal/omanetapi/nc/data/NotificationList;

    move-object v5, v13

    .line 195
    const/4 v13, 0x0

    aget-object v14, v5, v13

    move-object v8, v14

    .line 196
    iget-object v14, v8, Lcom/sec/internal/omanetapi/nc/data/NotificationList;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v14, v14, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->restartToken:Ljava/lang/String;

    move-object v15, v14

    .line 197
    iget-object v14, v8, Lcom/sec/internal/omanetapi/nc/data/NotificationList;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v14, v14, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->index:Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move-wide/from16 v11, v19

    .line 198
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v14

    invoke-virtual {v14, v15}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionRestartToken(Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v14

    invoke-virtual {v14, v11, v12}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionIndex(J)V

    .line 201
    new-instance v14, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v14}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v13, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->RECEIVE_NOTIFICATION:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 202
    invoke-virtual {v14, v13}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v13

    .line 203
    invoke-virtual {v13, v5}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setNotificationList([Lcom/sec/internal/omanetapi/nc/data/NotificationList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v13

    move-object v7, v13

    .line 204
    iget-object v13, v1, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->mCloudMsgService:Lcom/sec/internal/ims/cmstore/CloudMessageService;

    invoke-virtual {v7}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->onNativeChannelReceived(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 205
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionIndex()J

    move-result-wide v13

    move-wide v9, v13

    .line 207
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->getInstance()Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/internal/ims/cmstore/utils/NotificationListContainer;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 208
    sget-object v13, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v14, "NotificationListContainer is empty, all the disordered notifications have been proceeded, remove UPDATE_SUBSCRIPTION_CHANNEL_DELAY"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v13, v1, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->mCloudMsgService:Lcom/sec/internal/ims/cmstore/CloudMessageService;

    invoke-virtual {v13}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->removeUpdateSubscriptionChannelEvent()V

    .line 221
    .end local v7    # "builder":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .end local v9    # "savedindex":J
    .end local v11    # "curindex":J
    .end local v15    # "restartToken":Ljava/lang/String;
    :cond_7
    :goto_0
    goto :goto_1

    .line 222
    :cond_8
    sget-object v7, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    const-string v9, "no link subscription url matched, drop this notification"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void

    .line 228
    .end local v8    # "notiList":Lcom/sec/internal/omanetapi/nc/data/NotificationList;
    :cond_9
    :goto_1
    if-eqz v6, :cond_a

    .line 229
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->mCloudMsgService:Lcom/sec/internal/ims/cmstore/CloudMessageService;

    invoke-virtual {v7}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->updateSubscriptionChannel()V

    .line 235
    .end local v0    # "response":Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;
    .end local v5    # "notificationList":[Lcom/sec/internal/omanetapi/nc/data/NotificationList;
    .end local v6    # "setDelayedUpdateSubscription":Z
    :cond_a
    goto :goto_3

    .line 143
    .restart local v0    # "response":Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;
    :cond_b
    :goto_2
    sget-object v5, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "response or notificationList is null, polling failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    return-void

    .line 233
    .end local v0    # "response":Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceiveNativeChannelNotification: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private onSITRefreshed(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 372
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 373
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "request_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 374
    .local v1, "status":Z
    const-string v2, "line_msisdn"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, "msisdn":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    sget-object v3, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSITRefreshed, msisdn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    if-eqz v1, :cond_0

    .line 378
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->mCloudMsgService:Lcom/sec/internal/ims/cmstore/CloudMessageService;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->onJanskySITTokenUpdated(Ljava/lang/String;)V

    .line 380
    :cond_0
    return-void
.end method

.method private onSimDeviceActivated(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 67
    sget-object v0, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSimDeviceActivated"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 69
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "request_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 70
    .local v1, "isSuccess":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "msisdn":Ljava/lang/String;
    const/4 v3, 0x5

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v3, :cond_1

    .line 74
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getNativeLine()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    .line 78
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 79
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->mCloudMsgService:Lcom/sec/internal/ims/cmstore/CloudMessageService;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->onMStoreEnabled(Ljava/lang/String;)V

    .line 82
    .end local v2    # "msisdn":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private onSimDeviceDeActivated(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 85
    sget-object v0, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSimDeviceDeActivated"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 87
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "request_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 88
    .local v1, "isSuccess":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "msisdn":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_0

    .line 91
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->mCloudMsgService:Lcom/sec/internal/ims/cmstore/CloudMessageService;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->onMStoreDisabled(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_0
    sget-object v3, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "onSimDeviceDeActivated: do nothing, no userctn"

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v2    # "msisdn":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method public static sendBroadcastToMsgApp(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 391
    const/high16 v0, 0x1000000

    .line 392
    .local v0, "FLAG_RECEIVER_INCLUDE_BACKGROUND":I
    const/high16 v1, 0x1000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 393
    const-string v1, "com.samsung.app.cmstore.MSGDATA_PERMISSION"

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 394
    return-void
.end method


# virtual methods
.method public broadcastIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 384
    sget-object v0, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const/high16 v0, 0x1000000

    .line 386
    .local v0, "FLAG_RECEIVER_INCLUDE_BACKGROUND":I
    const/high16 v1, 0x1000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 387
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v1, p1, v2}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 388
    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v1, "com.samsung.nsds.action.LINES_ACTIVATED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onLineActivated(Landroid/content/Intent;)V

    goto :goto_0

    .line 41
    :cond_0
    const-string v1, "com.samsung.nsds.action.LINES_DEACTIVATED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onDeLineActivated(Landroid/content/Intent;)V

    goto :goto_0

    .line 43
    :cond_1
    const-string v1, "com.samsung.nsds.action.SIM_DEVICE_ACTIVATED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onSimDeviceActivated(Landroid/content/Intent;)V

    goto :goto_0

    .line 45
    :cond_2
    const-string v1, "com.samsung.nsds.action.SIM_DEVICE_DEACTIVATED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 46
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onSimDeviceDeActivated(Landroid/content/Intent;)V

    goto :goto_0

    .line 47
    :cond_3
    const-string v1, "com.samsung.nsds.action.RECEIVED_PUSH_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 48
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onReceiveGCMPushNotification(Landroid/content/Intent;)V

    goto :goto_0

    .line 49
    :cond_4
    const-string v1, "com.samsung.nsds.action.RECEIVED_GCM_EVENT_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 50
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onReceiveNativeChannelNotification(Landroid/content/Intent;)V

    goto :goto_0

    .line 51
    :cond_5
    const-string v1, "com.samsung.nsds.action.SIT_REFRESHED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 52
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onSITRefreshed(Landroid/content/Intent;)V

    .line 54
    :cond_6
    :goto_0
    return-void
.end method

.method public onNotifyContactApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "msgType"    # Ljava/lang/String;
    .param p2, "jsonString"    # Ljava/lang/String;

    .line 356
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.cloudmessage.action.CALLLOGDATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.cloudmessage.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string v1, "msgtype"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const-string/jumbo v1, "rowids"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 361
    return-void
.end method

.method public onNotifyContactAppCloudDeleteFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "msgType"    # Ljava/lang/String;
    .param p2, "jsonString"    # Ljava/lang/String;

    .line 364
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.cloudmessage.action.CALLLOGDATADELETEFAILURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.cloudmessage.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v1, "msgtype"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string/jumbo v1, "rowids"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 369
    return-void
.end method

.method public onNotifyMessageApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "msgType"    # Ljava/lang/String;
    .param p2, "jsonString"    # Ljava/lang/String;

    .line 279
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.cloudmessage.action.MSGDATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.cloudmessage.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v1, "msgtype"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string/jumbo v1, "rowids"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    sget-object v1, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotifyMessageApp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    sget-object v1, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotifyMessageApp, broadcastIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->sendBroadcastToMsgApp(Landroid/content/Context;Landroid/content/Intent;)V

    .line 287
    return-void
.end method

.method public onNotifyMessageAppCloudDeleteFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "msgType"    # Ljava/lang/String;
    .param p2, "jsonString"    # Ljava/lang/String;

    .line 316
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.cloudmessage.action.MSGDELETEFAILURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.cloudmessage.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v1, "msgtype"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    const-string/jumbo v1, "rowids"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    sget-object v1, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotifyMessageAppCloudDeleteFailure : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    sget-object v1, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotifyMessageAppCloudDeleteFailure, broadcastIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->sendBroadcastToMsgApp(Landroid/content/Context;Landroid/content/Intent;)V

    .line 324
    return-void
.end method

.method public onNotifyMessageAppInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;)V
    .locals 4
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "messageType"    # Ljava/lang/String;
    .param p3, "flag"    # Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$InitialSyncStatusFlag:[I

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.framework.cloudmessage.action.MSGDATA.INITIALSYNCFAIL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 301
    goto :goto_0

    .line 297
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.framework.cloudmessage.action.MSGDATA.INITIALSYNCEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 298
    goto :goto_0

    .line 294
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.framework.cloudmessage.action.MSGDATA.INITIALSYNCSTART"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 295
    nop

    .line 305
    :goto_0
    if-eqz v0, :cond_3

    .line 306
    const-string v1, "com.samsung.rcs.framework.cloudmessage.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v1, "msgtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v1, "linenum"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    sget-object v1, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotifyMessageAppInitialSyncStatus, broadcastIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 309
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->sendBroadcastToMsgApp(Landroid/content/Context;Landroid/content/Intent;)V

    .line 313
    :cond_3
    return-void
.end method

.method public onNotifyMessageAppUI(ILjava/lang/String;I)V
    .locals 4
    .param p1, "screenName"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "param"    # I

    .line 328
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.cloudmessage.action.MSGUI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.cloudmessage.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string/jumbo v1, "screenname"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    const-string/jumbo v1, "style"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string/jumbo v1, "param"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    sget-object v1, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotifyMessageAppUI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    sget-object v1, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotifyMessageAppUI, broadcastIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->sendBroadcastToMsgApp(Landroid/content/Context;Landroid/content/Intent;)V

    .line 337
    return-void
.end method

.method public onNotifyVVMApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "msgType"    # Ljava/lang/String;
    .param p2, "jsonString"    # Ljava/lang/String;

    .line 340
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.cloudmessage.action.VVMDATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.cloudmessage.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const-string v1, "msgtype"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string/jumbo v1, "rowids"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 345
    return-void
.end method

.method public onNotifyVVMAppCloudDeleteFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "msgType"    # Ljava/lang/String;
    .param p2, "jsonString"    # Ljava/lang/String;

    .line 348
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.cloudmessage.action.VVMDATADELETEFAILURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.rcs.framework.cloudmessage.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v1, "msgtype"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string/jumbo v1, "rowids"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->broadcastIntent(Landroid/content/Intent;)V

    .line 353
    return-void
.end method
