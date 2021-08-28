.class public Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsInstanceIdListenerService;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;
.source "NsdsInstanceIdListenerService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsInstanceIdListenerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsInstanceIdListenerService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method

.method private getAllFcmTokenDetails()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsInstanceIdListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v1, "sender_id"

    const-string/jumbo v2, "protocol_to_server"

    const-string v3, "device_uid"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "projection":[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$GcmTokens;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 72
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v2, "fcmTokenDetails":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 76
    new-instance v4, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;

    invoke-direct {v4}, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;-><init>()V

    .line 77
    .local v4, "tokenDetail":Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;->senderId:Ljava/lang/String;

    .line 78
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;->protocolToServer:Ljava/lang/String;

    .line 79
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;->deviceUid:Ljava/lang/String;

    .line 80
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v4    # "tokenDetail":Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;
    :cond_0
    nop

    .line 83
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_1
    return-object v2

    .line 70
    .end local v2    # "fcmTokenDetails":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;>;"
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2
.end method

.method private startTokenRefresh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "senderId"    # Ljava/lang/String;
    .param p2, "protocolToServer"    # Ljava/lang/String;
    .param p3, "deviceUid"    # Ljava/lang/String;

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "gcm_sender_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v1, "gcm_protocol_to_server"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v1, "device_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsInstanceIdListenerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 58
    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 6

    .line 44
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsInstanceIdListenerService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onTokenRefresh()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsInstanceIdListenerService;->getAllFcmTokenDetails()Ljava/util/List;

    move-result-object v0

    .line 46
    .local v0, "fcmTokenDetails":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;

    .line 47
    .local v2, "tokenDetail":Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;
    iget-object v3, v2, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;->senderId:Ljava/lang/String;

    iget-object v4, v2, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;->protocolToServer:Ljava/lang/String;

    iget-object v5, v2, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;->deviceUid:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsInstanceIdListenerService;->startTokenRefresh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .end local v2    # "tokenDetail":Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method
