.class public Lcom/sec/internal/ims/config/PowerController;
.super Ljava/lang/Object;
.source "PowerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/PowerController$Receiver;,
        Lcom/sec/internal/ims/config/PowerController$LockState;,
        Lcom/sec/internal/ims/config/PowerController$ReleaseState;,
        Lcom/sec/internal/ims/config/PowerController$State;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected mAlarmManager:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field protected mPendingIntent:Landroid/app/PendingIntent;

.field protected final mReceiver:Lcom/sec/internal/ims/config/PowerController$Receiver;

.field protected mState:Lcom/sec/internal/ims/config/PowerController$State;

.field private mTimeout:J

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeout"    # J

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v0, Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/PowerController;->LOG_TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/sec/internal/ims/config/PowerController$Receiver;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/PowerController$Receiver;-><init>(Lcom/sec/internal/ims/config/PowerController;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/PowerController;->mReceiver:Lcom/sec/internal/ims/config/PowerController$Receiver;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/config/PowerController;->mState:Lcom/sec/internal/ims/config/PowerController$State;

    .line 34
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/internal/ims/config/PowerController;->mTimeout:J

    .line 35
    iput-object v0, p0, Lcom/sec/internal/ims/config/PowerController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/ims/config/PowerController;->mPendingIntent:Landroid/app/PendingIntent;

    .line 39
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "PowerController"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iput-object p1, p0, Lcom/sec/internal/ims/config/PowerController;->mContext:Landroid/content/Context;

    .line 41
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/PowerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 43
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sec/internal/ims/config/PowerController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 44
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/internal/ims/config/PowerController;->mReceiver:Lcom/sec/internal/ims/config/PowerController$Receiver;

    iget-object v2, v2, Lcom/sec/internal/ims/config/PowerController$Receiver;->ACTION_SLEEP_ALARM_EXPIRED:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/PowerController;->mPendingIntent:Landroid/app/PendingIntent;

    .line 46
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/config/PowerController;->mReceiver:Lcom/sec/internal/ims/config/PowerController$Receiver;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/PowerController$Receiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 47
    iput-wide p2, p0, Lcom/sec/internal/ims/config/PowerController;->mTimeout:J

    .line 48
    new-instance v0, Lcom/sec/internal/ims/config/PowerController$ReleaseState;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/PowerController$ReleaseState;-><init>(Lcom/sec/internal/ims/config/PowerController;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/PowerController;->mState:Lcom/sec/internal/ims/config/PowerController$State;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/config/PowerController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/PowerController;

    .line 26
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/config/PowerController;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/PowerController;

    .line 26
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/config/PowerController;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/internal/ims/config/PowerController;

    .line 26
    iget-wide v0, p0, Lcom/sec/internal/ims/config/PowerController;->mTimeout:J

    return-wide v0
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/config/PowerController;->mReceiver:Lcom/sec/internal/ims/config/PowerController$Receiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 65
    return-void
.end method

.method public lock()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController;->mState:Lcom/sec/internal/ims/config/PowerController$State;

    invoke-interface {v0}, Lcom/sec/internal/ims/config/PowerController$State;->lock()V

    .line 53
    return-void
.end method

.method public release()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController;->mState:Lcom/sec/internal/ims/config/PowerController$State;

    invoke-interface {v0}, Lcom/sec/internal/ims/config/PowerController$State;->release()V

    .line 57
    return-void
.end method

.method public sleep(J)V
    .locals 1
    .param p1, "time"    # J

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController;->mState:Lcom/sec/internal/ims/config/PowerController$State;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/config/PowerController$State;->sleep(J)V

    .line 61
    return-void
.end method
