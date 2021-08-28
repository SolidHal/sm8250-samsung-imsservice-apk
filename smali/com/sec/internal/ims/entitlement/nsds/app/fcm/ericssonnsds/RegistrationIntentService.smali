.class public Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;
.super Landroid/app/IntentService;
.source "RegistrationIntentService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;->mLock:Ljava/lang/Object;

    .line 25
    return-void
.end method

.method private notifyAndsfPushTokenReady(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "senderId"    # Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;->TAG:Ljava/lang/String;

    const-string v1, "notifyNonConnMgrPushTokenReady()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.nsds.action.DEVICE_PUSH_TOKEN_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "device_push_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v1, "gcm_sender_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    return-void
.end method

.method private sendRegistrationToServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "deviceUid"    # Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received token from FCM:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "encodedPushToken":Ljava/lang/String;
    const-string/jumbo v1, "push_token"

    invoke-static {p0, p2, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "pushTokenFromSharedPref":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    const-string v2, ""

    .line 94
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 95
    invoke-static {p0, p2, v1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_1
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .line 29
    const-string v0, "gcm_sender_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "senderId":Ljava/lang/String;
    const-string v1, "gcm_protocol_to_server"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "protocolToServer":Ljava/lang/String;
    const-string v2, "device_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "deviceUid":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :try_start_1
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v4

    .line 43
    .local v4, "instanceID":Lcom/google/firebase/iid/FirebaseInstanceId;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 44
    sget-object v5, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;->TAG:Ljava/lang/String;

    const-string v6, "FCM_Sender_ID is not ready yet. Will get token once its ready"

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    monitor-exit v3

    return-void

    .line 47
    :cond_0
    sget-object v5, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FCMSenderID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v5, "FCM"

    invoke-virtual {v4, v0, v5}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "token":Ljava/lang/String;
    sget-object v6, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FCM Registration Token: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for FCMsenderId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/high16 v6, 0x14080000

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TKN:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",SID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 55
    const-string v6, "managePushToken"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 56
    invoke-direct {p0, v5, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;->sendRegistrationToServer(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string/jumbo v6, "sent_token_to_server"

    const/4 v7, 0x1

    invoke-static {p0, v2, v6, v7}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 61
    :cond_1
    const-string v6, "broadcastToAndsfApp"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 62
    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;->notifyAndsfPushTokenReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .end local v4    # "instanceID":Lcom/google/firebase/iid/FirebaseInstanceId;
    .end local v5    # "token":Ljava/lang/String;
    :cond_2
    :goto_0
    monitor-exit v3

    .line 74
    goto :goto_1

    .line 65
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "senderId":Ljava/lang/String;
    .end local v1    # "protocolToServer":Ljava/lang/String;
    .end local v2    # "deviceUid":Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;
    .end local p1    # "intent":Landroid/content/Intent;
    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 66
    .restart local v0    # "senderId":Ljava/lang/String;
    .restart local v1    # "protocolToServer":Ljava/lang/String;
    .restart local v2    # "deviceUid":Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;
    .restart local p1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 67
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to complete token refresh"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v4, "managePushToken"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 71
    const-string/jumbo v4, "sent_token_to_server"

    invoke-static {p0, v2, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v4, 0x0

    const-string/jumbo v5, "sent_token_to_server"

    invoke-static {p0, v2, v5, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 75
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return-void
.end method
