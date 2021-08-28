.class public Lcom/sec/internal/ims/aec/util/ValidityTimer;
.super Ljava/lang/Object;
.source "ValidityTimer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPhoneId:I

.field mTokenValidityPendingIntent:Landroid/app/PendingIntent;

.field mVersionValidityPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mVersionValidityPendingIntent:Landroid/app/PendingIntent;

    .line 22
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mTokenValidityPendingIntent:Landroid/app/PendingIntent;

    .line 25
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mContext:Landroid/content/Context;

    .line 26
    iput p2, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mPhoneId:I

    .line 28
    new-instance v0, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;

    invoke-direct {v0, p0, p3}, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;-><init>(Lcom/sec/internal/ims/aec/util/ValidityTimer;Landroid/os/Handler;)V

    .line 47
    .local v0, "validityReceiver":Landroid/content/BroadcastReceiver;
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/aec/util/ValidityTimer;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/aec/util/ValidityTimer;

    .line 14
    iget v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mPhoneId:I

    return v0
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.imsservice.aec.action.VERSION_VALIDITY_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v1, "com.sec.imsservice.aec.action.TOKEN_VALIDITY_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    return-object v0
.end method

.method public startTokenValidityTimer(I)V
    .locals 7
    .param p1, "period"    # I

    .line 70
    if-lez p1, :cond_0

    .line 71
    sget-object v0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTokenValidityTimer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.imsservice.aec.action.TOKEN_VALIDITY_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mTokenValidityPendingIntent:Landroid/app/PendingIntent;

    .line 75
    iget-object v2, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mContext:Landroid/content/Context;

    int-to-long v3, p1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-static {v2, v1, v3, v4}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 76
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 77
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mPhoneId:I

    const-string/jumbo v2, "startTokenValidityTimer: no limitation of duration."

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    :goto_0
    return-void
.end method

.method public startVersionValidityTimer(I)V
    .locals 7
    .param p1, "period"    # I

    .line 58
    if-lez p1, :cond_0

    .line 59
    sget-object v0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startVersionValidityTimer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.imsservice.aec.action.VERSION_VALIDITY_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mVersionValidityPendingIntent:Landroid/app/PendingIntent;

    .line 63
    iget-object v2, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mContext:Landroid/content/Context;

    int-to-long v3, p1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-static {v2, v1, v3, v4}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 64
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 65
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mPhoneId:I

    const-string/jumbo v2, "startVersionValidityTimer: no limitation of duration."

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    :goto_0
    return-void
.end method

.method public stopTokenValidityTimer()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mTokenValidityPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mPhoneId:I

    const-string/jumbo v2, "stopTokenValidityTimer"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mTokenValidityPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mTokenValidityPendingIntent:Landroid/app/PendingIntent;

    .line 95
    :cond_0
    return-void
.end method

.method public stopVersionValidityTimer()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mVersionValidityPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mPhoneId:I

    const-string/jumbo v2, "stopVersionValidityTimer"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mVersionValidityPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer;->mVersionValidityPendingIntent:Landroid/app/PendingIntent;

    .line 87
    :cond_0
    return-void
.end method
